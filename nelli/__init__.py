import contextlib
import ctypes
import sys


@contextlib.contextmanager
def dl_open_guard():
    old_flags = sys.getdlopenflags()
    sys.setdlopenflags(old_flags | ctypes.RTLD_GLOBAL)
    yield
    sys.setdlopenflags(old_flags)


with dl_open_guard():
    # noinspection PyUnresolvedReferences
    from .mlir._mlir._mlir_libs import _mlir
    from .mlir._mlir import ir

import atexit

# Push a default context onto the context stack at import time.
DefaultContext = ir.Context()
DefaultContext.__enter__()
DefaultContext.allow_unregistered_dialects = False


@contextlib.contextmanager
def allow_unregistered_dialects(context=DefaultContext):
    context.allow_unregistered_dialects = True
    yield
    context.allow_unregistered_dialects = False


@contextlib.contextmanager
def enable_multithreading(context=DefaultContext):
    context.enable_multithreading(True)
    yield
    context.enable_multithreading(False)


@atexit.register
def __exit_ctxt():
    DefaultContext.__exit__(None, None, None)


DefaultLocation = ir.Location.unknown()
DefaultLocation.__enter__()


@atexit.register
def __exit_loc():
    DefaultLocation.__exit__(None, None, None)


from . import mlir

F32 = ir.F32Type.get()
F64 = ir.F64Type.get()
I64 = ir.IntegerType.get_signless(64)
I32 = ir.IntegerType.get_signless(32)
Index = ir.IndexType.get()
