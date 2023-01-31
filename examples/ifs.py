from loopy.loopy_mlir import ir
from loopy.mlir import f64_t
from loopy.mlir.scf import (
    scf_if,
    scf_else,
    scf_endif as endif,
)
from loopy.mlir.arith import constant
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import aff_alloc


module = ir.Module.create()


with ir.InsertionPoint(module.body):

    @mlir_func
    def ifs(M: f64_t, N: f64_t):
        one = constant(1.0)
        if scf_if(M < N):
            one = constant(1.0)
            mem = aff_alloc([10, 10], f64_t)
        elif scf_else():
            two = constant(2.0)
            mem = aff_alloc([20, 20], f64_t)
        endif()


print(module)
