# need this for subclassing and registering affine op constructors
import atexit

from ._mlir import ir

DefaultContext = ir.Context()
# Push a default context onto the context stack at import time.
DefaultContext.__enter__()
DefaultContext.allow_unregistered_dialects = False


@atexit.register
def __exit_ctxt():
    DefaultContext.__exit__(None, None, None)


DefaultLocation = ir.Location.unknown()
DefaultLocation.__enter__()


@atexit.register
def __exit_loc():
    DefaultLocation.__exit__(None, None, None)


from .affine import affine_defs
from .omp import omp
from .llvm import llvm
from .async_dialect import async_dialect
