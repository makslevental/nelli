from loopy.loopy_mlir import ir
from loopy.mlir import f64
from loopy.mlir.affine import affinefor, endfor
from loopy.mlir.arith import constant
from loopy.mlir.func import func
from loopy.mlir.memref import alloc, load

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
        mem = alloc([10], f64)
        for i in affinefor(1, 10, 1):
            v = load(mem, [i])
            w = v * two
        endfor()


print(module)
