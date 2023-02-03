import logging
from functools import wraps

from .memref import MemRefValue

logger = logging.getLogger(__name__)
import inspect
import ast
from textwrap import dedent
from types import FunctionType, CodeType

from bytecode import ConcreteBytecode, ConcreteInstr

from .affine import affine_endfor, affine_range
from .scf import scf_endif_branch, scf_if, scf_else, scf_endif
from .arith import ArithValue
from ..loopy_mlir.dialects import func as func_dialect
from ..loopy_mlir.ir import Type as MLIRType, MemRefType

func = func_dialect.FuncOp.from_py_func


def call(name, args=None):
    if args is None:
        args = []
    return ast.Call(
        func=ast.Name(id=name, ctx=ast.Load()),
        args=args,
        keywords=[],
    )


class InsertEndFors(ast.NodeTransformer):
    def visit_For(self, node):
        for i, b in enumerate(node.body):
            node.body[i] = self.visit(b)
        node.body.append(ast.Expr(call(affine_endfor.__name__)))
        return node


def wrap_if_test(test):
    assert isinstance(test, ast.Compare), f"unexpected if test: {ast.dump(test)}"
    assert isinstance(
        test.left, ast.Name
    ), f"unexpected if test lhs: {ast.dump(test.left)}"
    assert all(
        isinstance(c, ast.Name) for c in test.comparators
    ), f"unexpected if test comparators: {test.comparators}"
    test = ast.Compare(
        call(ArithValue.__name__, args=[test.left]),
        ops=test.ops,
        comparators=[call(ArithValue.__name__, args=[c]) for c in test.comparators],
    )
    return call(scf_if.__name__, args=[test])


class InsertEndIfs(ast.NodeTransformer):
    def visit_If(self, node):
        for i, b in enumerate(node.body):
            node.body[i] = self.visit(b)
        for i, b in enumerate(node.orelse):
            node.orelse[i] = self.visit(b)

        node.test = wrap_if_test(node.test)
        # every if branch needs an scf_endif_branch
        node.body.append(ast.Expr(call(scf_endif_branch.__name__)))
        # no else, then need to end the whole if in the body of the true branch
        if not node.orelse:
            node.body.append(ast.Expr(call(scf_endif.__name__)))
        else:
            # otherwise end the if after the else branch
            node.orelse.insert(0, ast.Expr(call(scf_else.__name__)))
            node.orelse.append(ast.Expr(call(scf_endif_branch.__name__)))
            node.orelse.append(ast.Expr(call(scf_endif.__name__)))

        return node


def rewrite_ast(f):
    tree = ast.parse(dedent(inspect.getsource(f)))
    assert isinstance(
        tree.body[0], ast.FunctionDef
    ), f"unexpected ast node {tree.body[0]}"
    tree = InsertEndFors().visit(tree)
    tree = InsertEndIfs().visit(tree)
    tree.body[0].body.append(ast.Return(value=ast.Constant(value=None)))
    logger.debug(ast.unparse(tree))

    ast.fix_missing_locations(tree)
    # TODO(max): it's annoying that this ruins debugging - maybe line numbers?
    module_code_o = compile(tree, f"<{f.__name__}:ast>", "exec")
    f_code_o = next(
        c
        for c in module_code_o.co_consts
        if type(c) is CodeType and c.co_name == f.__name__
    )
    return f_code_o


def doublewrap(f):
    """
    a decorator decorator, allowing the decorator to be used as:
    @decorator(with, arguments, and=kwargs)
    or
    @decorator
    """

    @wraps(f)
    def new_dec(*args, **kwargs):
        if len(args) == 1 and len(kwargs) == 0 and callable(args[0]):
            # actual decorated function
            return f(args[0])
        else:
            # decorator arguments
            return lambda realf: f(realf, *args, **kwargs)

    return new_dec


@doublewrap
def mlir_func(f, rewrite_ast_=True):
    sig = inspect.signature(f)
    annots = [p.annotation for p in sig.parameters.values()]
    assert all(isinstance(a, MLIRType) for a in annots)

    if rewrite_ast_:
        f_code_o = rewrite_ast(f)
    else:
        f_code_o = f.__code__

    # fall through all arms in a conditional
    code = ConcreteBytecode.from_code(f_code_o)
    for i, c in enumerate(code):
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
            logger.debug(f"no-oping jump {i}: {c=}")
            code[i] = ConcreteInstr("NOP", lineno=c.lineno, location=c.location)

    f_code_o = code.to_code()
    updated_f = FunctionType(
        code=f_code_o,
        globals={
            **f.__globals__,
            **{
                fr: f.__closure__[i].cell_contents
                for i, fr in enumerate(f.__code__.co_freevars)
            },
            affine_endfor.__name__: affine_endfor,
            "range": affine_range,
            ArithValue.__name__: ArithValue,
            scf_else.__name__: scf_else,
            scf_if.__name__: scf_if,
            scf_endif_branch.__name__: scf_endif_branch,
            scf_endif.__name__: scf_endif,
        },
        name=f.__name__,
        argdefs=f.__defaults__,
    )

    def args_wrapped_f(*args, func_op=None):
        args = list(args)
        for i, a in enumerate(args):
            logger.debug(f"{f.__name__} arg {i}: {a}")
            if MemRefType.isinstance(a.type):
                args[i] = MemRefValue(a)
            else:
                args[i] = ArithValue(a)
        return updated_f(*args)

    args_wrapped_f.__name__ = f.__name__

    return func_dialect.FuncOp.from_py_func(*annots)(args_wrapped_f)
