from ..loopy_mlir import ir


f64_t = ir.F64Type.get()
i64_t = ir.IntegerType.get_signless(64)
index_t = ir.IndexType.get()
