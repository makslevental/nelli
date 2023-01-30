from loopy.loopy_mlir import ir
from loopy.mlir import f64
from loopy.mlir.affine import (
    affinefor as range,
    endfor,
)
from loopy.mlir.affine_defs import d0, d1
from loopy.mlir.arith import constant
from loopy.mlir.func import func
from loopy.mlir.memref import alloc

M = 32
N = 32
K = 32

module = ir.Module.create()

with ir.InsertionPoint(module.body):

    @func(
        ir.RankedTensorType.get((M, N), f64),
        ir.RankedTensorType.get((N, K), f64),
    )
    def matmul(lhs, rhs):
        two = constant(1.0)
        mem = alloc([10, 10], f64)
        for i in range(1, 10, 1):
            for j in range(1, 10, 1):
                a = (d0 * 2 + d1 * 3 + 5) @ [i, j]
                v = mem[a, a]
                w = v * two
            endfor()
        endfor()


module.operation.print()
