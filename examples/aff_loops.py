from loopy.loopy_mlir import ir
from loopy.mlir import f64_t, index_t
from loopy.mlir.affine import (
    affine_for as range,
    affine_endfor,
)
from loopy.sympy_ import d0, d1, s0, s1
from loopy.mlir.arith import constant
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import aff_alloc


module = ir.Module.create()

with ir.InsertionPoint(module.body):

    @mlir_func
    def double_loop(M: index_t, N: index_t):
        two = constant(1.0)
        mem = aff_alloc([10, 10], f64_t)
        for i in range(1, 10, 1):
            for j in range(1, 10, 1):
                a = (2 * d0 + 3 * d1 + 5 + s0 + 3 * s1) @ [i, j, M, N]
                v = mem[a, a]
                w = v * two
                mem[a, a] = w
            affine_endfor()
        affine_endfor()
        return mem

    m = constant(10, index_type=True)
    n = constant(20, index_type=True)
    r = double_loop(m, n)
print(module)
