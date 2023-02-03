from ..loopy_mlir import ir

F32 = ir.F32Type.get()
F64 = ir.F64Type.get()
I64 = ir.IntegerType.get_signless(64)
I32 = ir.IntegerType.get_signless(32)
Index = ir.IndexType.get()

from .affine import affine_defs
