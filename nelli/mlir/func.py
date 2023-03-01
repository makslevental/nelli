import logging

logger = logging.getLogger(__name__)

from .. import DefaultContext


import inspect
import ast
from textwrap import dedent
from types import FunctionType, CodeType

from bytecode import ConcreteBytecode, ConcreteInstr

from .affine import end_for as affine_endfor, range as affine_range
from .scf import (
    scf_endif_branch,
    scf_if,
    scf_else,
    scf_endif,
    range as scf_range,
    end_for as scf_endfor,
    par_range as scf_par_range,
    end_parfor as scf_end_parfor,
)
from .openmp.omp import ws_loop as omp_range, end_for as omp_endfor
from .arith import ArithValue
from ..mlir._mlir.dialects import func as func_dialect
from ..mlir._mlir.ir import (
    Type as MLIRType,
    MemRefType,
    RankedTensorType,
    FunctionType as MLIRFunctionType,
    FlatSymbolRefAttr,
    UnitAttr,
    _stringAttr,
)
from ..mlir._mlir.dialects._ods_common import (
    get_op_result_or_value,
    get_op_results_or_values,
)
from .memref import MemRefValue
from .affine import RankedAffineMemRefValue
from .tensor import TensorValue
from .utils import doublewrap
from .annot import Annot


def ast_call(name, args=None):
    if args is None:
        args = []
    return ast.Call(
        func=ast.Name(id=name, ctx=ast.Load()),
        args=args,
        keywords=[],
    )


class InsertEndFors(ast.NodeTransformer):
    def __init__(self, endfor):
        self.endfor = endfor

    def visit_For(self, node):
        for i, b in enumerate(node.body):
            node.body[i] = self.visit(b)
        node.body.append(ast.Expr(ast_call(self.endfor.__name__)))
        return node


def wrap_if_test(test):
    assert isinstance(test, ast.Compare), f"unexpected if test: {ast.dump(test)}"
    assert isinstance(
        test.left, ast.Name
    ), f"unexpected if test lhs: {ast.dump(test.left)}"
    assert all(
        isinstance(c, (ast.Name, ast.Constant, ast.Call)) for c in test.comparators
    ), f"unexpected if test comparators: {test.comparators}"
    comparators = []

    for c in test.comparators:
        if isinstance(c, ast.Name):
            comparators.append(ast_call(ArithValue.__name__, args=[c]))
        # elif isinstance(c, ast.Constant):
        #     comparators.append(ast_call(constant.__name__, args=[c]))
        elif isinstance(c, ast.Call):
            assert isinstance(c.func, ast.Name)
            assert c.func.id == "constant"
            comparators.append(c)
        else:
            raise RuntimeError(f"unknown kind of comparator {c=}")

    test = ast.Compare(
        ast_call(ArithValue.__name__, args=[test.left]),
        ops=test.ops,
        comparators=comparators,
    )
    return ast_call(scf_if.__name__, args=[test])


class InsertEndIfs(ast.NodeTransformer):
    def visit_If(self, node):
        for i, b in enumerate(node.body):
            node.body[i] = self.visit(b)
        for i, b in enumerate(node.orelse):
            node.orelse[i] = self.visit(b)

        node.test = wrap_if_test(node.test)
        # every if branch needs a scf_endif_branch
        node.body.append(ast.Expr(ast_call(scf_endif_branch.__name__)))
        # no else, then need to end the whole if in the body of the true branch
        if not node.orelse:
            node.body.append(ast.Expr(ast_call(scf_endif.__name__)))
        else:
            # otherwise end the if after the else branch
            node.orelse.insert(0, ast.Expr(ast_call(scf_else.__name__)))
            node.orelse.append(ast.Expr(ast_call(scf_endif_branch.__name__)))
            node.orelse.append(ast.Expr(ast_call(scf_endif.__name__)))

        return node


def rewrite_ast(f, range_ctor, endfor):
    tree = ast.parse(dedent(inspect.getsource(f)))
    assert isinstance(
        tree.body[0], ast.FunctionDef
    ), f"unexpected ast node {tree.body[0]}"
    tree = InsertEndFors(endfor=endfor).visit(tree)
    tree = InsertEndIfs().visit(tree)
    tree.body[0].body.append(ast.Return(value=ast.Constant(value=None)))

    ast.fix_missing_locations(tree)
    # TODO(max): it's annoying that this ruins debugging - maybe line numbers?
    module_code_o = compile(tree, f.__code__.co_filename, "exec")
    f_code_o = next(
        c
        for c in module_code_o.co_consts
        if type(c) is CodeType and c.co_name == f.__name__
    )
    f_code_o = f_code_o.replace(co_firstlineno=f.__code__.co_firstlineno)

    # TODO(max): handle other ifs/for loops here
    updated_f = FunctionType(
        code=f_code_o,
        globals={
            **f.__globals__,
            **{
                fr: f.__closure__[i].cell_contents
                for i, fr in enumerate(f.__code__.co_freevars)
            },
            endfor.__name__: endfor,
            "range": range_ctor,
            ArithValue.__name__: ArithValue,
            scf_else.__name__: scf_else,
            scf_if.__name__: scf_if,
            scf_endif_branch.__name__: scf_endif_branch,
            scf_endif.__name__: scf_endif,
        },
        name=f.__name__,
        argdefs=f.__defaults__,
    )

    return updated_f


def rewrite_bytecode(f):
    src_lines = inspect.getsource(f).splitlines()
    code = ConcreteBytecode.from_code(f.__code__)
    early_returns = []
    for i, c in enumerate(code):
        if c.name == "RETURN_VALUE":
            early_returns.append(i)

        if c.name in {
            # this is the first test condition jump from python <= 3.10
            "POP_JUMP_IF_FALSE",
            # this is the test condition jump from python >= 3.11
            "POP_JUMP_FORWARD_IF_FALSE",
        }:
            logger.debug(f"subbing pop_jump {i}: {c=}")
            code[i] = ConcreteInstr("POP_TOP", lineno=c.lineno, location=c.location)

        if c.name in {
            # this is the jump after each arm in a conditional
            "JUMP_FORWARD",
            # this is the jump at the end of a for loop
            # "JUMP_BACKWARD",
            # in principle this should be no-oped too but for whatever reason it leads to a stack-size
            # miscalculation (inside bytecode). we don't really need it though because
            # affine_range returns an iterator with length 1
        }:
            # only remove the jump if generated by an if stmt (not a with stmt)
            if "with" not in src_lines[c.lineno - code.first_lineno]:
                logger.debug(f"no-oping jump {i}: {c=}")
                code[i] = ConcreteInstr("NOP", lineno=c.lineno, location=c.location)

    # early returns cause branches in conditionals to not be visited
    for idx in early_returns[:-1]:
        c = code[idx]
        code[idx] = ConcreteInstr("NOP", lineno=c.lineno, location=c.location)

    f_code_o = code.to_code()
    return FunctionType(
        code=f_code_o,
        globals={
            **f.__globals__,
            **{
                fr: f.__closure__[i].cell_contents
                for i, fr in enumerate(f.__code__.co_freevars)
            },
        },
        name=f.__name__,
        argdefs=f.__defaults__,
    )


@doublewrap
def mlir_func(
    f,
    rewrite_ast_=None,
    rewrite_bytecode_=None,
    range_ctor=None,
    emit_c_interface=None,
    visibility=None,
    cls=None,
    func_op_ctor=None,
):
    if rewrite_ast_ is None:
        rewrite_ast_ = True
    if rewrite_bytecode_ is None:
        rewrite_bytecode_ = True
    if range_ctor is None:
        range_ctor = affine_range
    if emit_c_interface is None:
        emit_c_interface = False
    if func_op_ctor is None:
        func_op_ctor = func_dialect.FuncOp.from_py_func

    sig_params = inspect.signature(f).parameters
    annots = list(sig_params.values())
    if "cls" in sig_params:
        assert annots[0].name == "cls"
        annots.pop(0)
    annots = [p.annotation for p in annots]
    assert all(
        isinstance(a, (MLIRType, Annot)) for a in annots
    ), f"wrong func args {annots}"

    if rewrite_ast_:
        if range_ctor == affine_range:
            endfor = affine_endfor
        elif range_ctor == scf_range:
            endfor = scf_endfor
        elif range_ctor == omp_range:
            endfor = omp_endfor
        elif range_ctor == scf_par_range:
            endfor = scf_end_parfor
        else:
            raise RuntimeError(f"unsupported {range_ctor=}")
        f = rewrite_ast(f, range_ctor=range_ctor, endfor=endfor)

    if rewrite_bytecode_:
        f = rewrite_bytecode(f)

    def args_wrapped_f(*args, func_op=None):
        args = list(args)
        for i, (annot, arg) in enumerate(zip(annots, args)):
            logger.debug(f"{f.__name__} arg {i}: {arg}")
            if MemRefType.isinstance(arg.type) or RankedTensorType.isinstance(arg.type):
                if annot.py_type in {RankedAffineMemRefValue, MemRefValue, TensorValue}:
                    args[i] = annot.py_type(arg)
                else:
                    raise RuntimeError(f"unknown annotation: {annot.py_type}")
            else:
                args[i] = ArithValue(arg)

        if emit_c_interface:
            func_op.attributes["llvm.emit_c_interface"] = UnitAttr.get()
        if visibility is not None:
            func_op.attributes["sym_visibility"] = _stringAttr(
                visibility, DefaultContext
            )

        if "cls" in sig_params:
            assert cls is not None
            args.insert(0, cls)
        return f(*args)

    args_wrapped_f.__name__ = f.__name__

    return func_op_ctor(
        *[(an.mlir_type if isinstance(an, Annot) else an) for an in annots]
    )(args_wrapped_f)


def call_func(symbol_name, call_args, return_types):
    call_op = func_dialect.CallOp(
        return_types, FlatSymbolRefAttr.get(symbol_name), call_args
    )
    if return_types is None:
        return None
    elif len(return_types) == 1:
        return call_op.result
    else:
        return call_op.results


def declare(
    symbol_name,
    input_annots: list,
    result_annots=None,
    func_op_ctor=func_dialect.FuncOp,
):
    if result_annots is None:
        result_annots = []
    assert all(
        isinstance(a, (MLIRType, Annot)) for a in input_annots
    ), f"wrong func args {input_annots}"
    assert all(
        isinstance(a, (MLIRType, Annot)) for a in result_annots
    ), f"wrong func results {result_annots}"

    input_annots = [a.mlir_type if isinstance(a, Annot) else a for a in input_annots]
    result_mlir_types = [
        a.mlir_type if isinstance(a, Annot) else a for a in result_annots
    ]

    function_type = MLIRFunctionType.get(inputs=input_annots, results=result_mlir_types)
    sym_name = func_op_ctor(
        name=symbol_name, type=function_type, visibility="private"
    ).sym_name

    def callable(*call_args):
        res = call_func(sym_name.value, call_args, result_mlir_types)
        if len(result_mlir_types) == 0:
            return
        elif len(result_mlir_types) == 1:
            res_vals = [get_op_result_or_value(res)]
        else:  # if len(result_mlir_types) > 1:
            res_vals = get_op_results_or_values(res)

        for i, (annot, res_val) in enumerate(zip(result_annots, res_vals)):
            logger.debug(f"{sym_name} result {i}: {res_val}")
            if MemRefType.isinstance(res_val.type) or RankedTensorType.isinstance(
                res_val.type
            ):
                if annot.py_type in {RankedAffineMemRefValue, MemRefValue, TensorValue}:
                    res_vals[i] = annot.py_type(res_val)
                else:
                    raise RuntimeError(f"unknown annotation: {annot.py_type}")
            else:
                res_vals[i] = ArithValue(res_val)

        if len(res_vals) == 1:
            res_vals = res_vals[0]
        return res_vals

    return callable
