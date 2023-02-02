import logging

logger = logging.getLogger(__name__)
import inspect
import ast
from textwrap import dedent
from types import FunctionType, CodeType

from bytecode import ConcreteBytecode

from .affine import affine_endfor
from .arith import ArithValue
from ..loopy_mlir.dialects import func as func_dialect

func = func_dialect.FuncOp.from_py_func


class InsertEndFors(ast.NodeTransformer):
    def visit_For(self, node):
        for i, b in enumerate(node.body):
            node.body[i] = self.visit(b)
        node.body.append(
            ast.Expr(
                value=ast.Call(
                    func=ast.Name(id=affine_endfor.__name__, ctx=ast.Load()),
                    args=[],
                    keywords=[],
                )
            )
        )
        return node


def insert_endfors(f):
    tree = ast.parse(dedent(inspect.getsource(f)))
    assert isinstance(
        tree.body[0], ast.FunctionDef
    ), f"unexpected ast node {tree.body[0]}"
    tree = InsertEndFors().visit(tree)
    logger.debug(ast.unparse(tree))

    ast.fix_missing_locations(tree)
    module_code_o = compile(tree, "<ast>", "exec")
    f_code_o = next(
        c
        for c in module_code_o.co_consts
        if type(c) is CodeType and c.co_name == f.__name__
    )
    return f_code_o


def mlir_func(f):
    sig = inspect.signature(f)
    annots = [p.annotation for p in sig.parameters.values()]

    # automatically insert affine_endfor()
    f_code_o = insert_endfors(f)
    # fall through all arms in a conditional
    code = ConcreteBytecode.from_code(f_code_o)
    jumps = []
    for i, c in enumerate(code):
        if c.name in {"POP_JUMP_IF_FALSE", "JUMP_FORWARD", "POP_JUMP_FORWARD_IF_FALSE"}:
            jumps.append(i)

    for i in reversed(jumps):
        code.pop(i)

    updated_f = FunctionType(
        code.to_code(),
        {**f.__globals__, "affine_endfor": affine_endfor},
        f.__name__,
        f.__defaults__,
        f.__closure__,
    )

    def args_wrapped_f(*args, func_op=None):
        args = [ArithValue(a) for a in args]
        return updated_f(*args)

    args_wrapped_f.__name__ = f.__name__

    return func_dialect.FuncOp.from_py_func(*annots)(args_wrapped_f)
