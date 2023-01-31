import inspect
from types import FunctionType

from bytecode import ConcreteBytecode
from .arith import ArithValue

from ..loopy_mlir.dialects import func as func_dialect

func = func_dialect.FuncOp.from_py_func


def mlir_func(f):
    sig = inspect.signature(f)
    annots = [p.annotation for p in sig.parameters.values()]

    code = ConcreteBytecode.from_code(f.__code__)
    jumps = []
    for i, c in enumerate(code):
        if c.name in {"POP_JUMP_IF_FALSE", "JUMP_FORWARD"}:
            jumps.append(i)

    for i in reversed(jumps):
        code.pop(i)

    updated_f = FunctionType(
        code.to_code(),
        f.__globals__,
        f.__name__,
        f.__defaults__,
        f.__closure__,
    )

    def args_wrapped_f(*args, func_op=None):
        args = [ArithValue(a) for a in args]
        return updated_f(*args)

    args_wrapped_f.__name__ = f.__name__

    return func_dialect.FuncOp.from_py_func(*annots)(args_wrapped_f)
