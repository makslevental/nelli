from ..loopy_mlir import ir

f32_t = ir.F32Type.get()
f64_t = ir.F64Type.get()
i64_t = ir.IntegerType.get_signless(64)
i32_t = ir.IntegerType.get_signless(32)
index_t = ir.IndexType.get()

from .affine import affine_defs
