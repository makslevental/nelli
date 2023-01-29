from ..loopy_mlir import ir
import atexit

# Push a default context onto the context stack at import time.
DefaultContext = ir.Context()
DefaultContext.__enter__()
# circt.register_dialects(DefaultContext)
DefaultContext.allow_unregistered_dialects = True


f64 = ir.F64Type.get()
i64 = ir.IntegerType.get_signless(64)


@atexit.register
def __exit_ctxt():
    DefaultContext.__exit__(None, None, None)


DefaultLocation = ir.Location.unknown()
DefaultLocation.__enter__()


@atexit.register
def __exit_loc():
    DefaultLocation.__exit__(None, None, None)
