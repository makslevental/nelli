from textwrap import dedent

from loopy.loopy_mlir.dialects import tensor, func, linalg
from loopy.loopy_mlir.dialects.linalg import (
    TV,
    linalg_structured_op,
    TensorDef,
    T,
    S,
    domain,
    D,
)
from loopy.loopy_mlir.ir import RankedTensorType, MemRefType
from loopy.mlir import F32
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import AllocaOp
from loopy.mlir.memref import MemRefValue as MemRef
from loopy.mlir.refbackend import LLVMJITBackend, LinalgLowering
from loopy.utils import mlir_mod_ctx
from util import check_correct

T1 = TV.T1
T2 = TV.T2


@linalg_structured_op
def matmul_mono(
    A=TensorDef(T, S.M, S.K),
    B=TensorDef(T, S.K, S.N),
    C=TensorDef(T, S.M, S.N, output=True),
):
    domain(D.m, D.n, D.k)
    C[D.m, D.n] += A[D.m, D.k] * B[D.k, D.n]


memref_module = dedent(
    """\
module {
  func.func @_matmul_mono(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>) -> memref<4x8xf32> {
    %alloca = memref.alloca() : memref<4x8xf32>
    affine.for %arg2 = 0 to 4 {
      affine.for %arg3 = 0 to 8 {
        affine.for %arg4 = 0 to 16 {
          %0 = affine.load %arg0[%arg2, %arg4] : memref<4x16xf32>
          %1 = affine.load %arg1[%arg4, %arg3] : memref<16x8xf32>
          %2 = affine.load %alloca[%arg2, %arg3] : memref<4x8xf32>
          %3 = arith.mulf %0, %1 : f32
          %4 = arith.addf %2, %3 : f32
          affine.store %4, %alloca[%arg2, %arg3] : memref<4x8xf32>
        }
      }
    }
    return %alloca : memref<4x8xf32>
  }
}
"""
)


class TestLinalg:
    backend = LLVMJITBackend()

    def lower(self, module, kernel_name):
        module = self.backend.compile(
            module,
            kernel_name=kernel_name,
            lower_loops=True,
            lower_to_llvm=False,
            linalg_lowering=LinalgLowering.Affine,
        )
        return module

    def test_stock_struct_op_tensors(self):
        with mlir_mod_ctx() as module:

            @func.FuncOp.from_py_func(
                RankedTensorType.get((4, 16), F32), RankedTensorType.get((16, 8), F32)
            )
            def _matmul_mono(lhs, rhs):
                init_result = tensor.EmptyOp([4, 8], F32)
                return matmul_mono(lhs, rhs, outs=[init_result.result])

        module = self.lower(module, kernel_name="_matmul_mono")
        correct = dedent(
            """\
        module {
          func.func @_matmul_mono(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>) -> memref<4x8xf32> {
            %alloc = memref.alloc() {alignment = 64 : i64} : memref<4x8xf32>
            %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<4x8xf32>
            memref.copy %alloc, %alloc_0 : memref<4x8xf32> to memref<4x8xf32>
            memref.dealloc %alloc : memref<4x8xf32>
            affine.for %arg2 = 0 to 4 {
              affine.for %arg3 = 0 to 8 {
                affine.for %arg4 = 0 to 16 {
                  %0 = affine.load %arg0[%arg2, %arg4] : memref<4x16xf32>
                  %1 = affine.load %arg1[%arg4, %arg3] : memref<16x8xf32>
                  %2 = affine.load %alloc_0[%arg2, %arg3] : memref<4x8xf32>
                  %3 = arith.mulf %0, %1 : f32
                  %4 = arith.addf %2, %3 : f32
                  affine.store %4, %alloc_0[%arg2, %arg3] : memref<4x8xf32>
                }
              }
            }
            return %alloc_0 : memref<4x8xf32>
          }
        }
        """
        )
        check_correct(correct, module)

    def test_stock_struct_op_memrefs(self):
        with mlir_mod_ctx() as module:

            @func.FuncOp.from_py_func(
                MemRefType.get((4, 16), F32), MemRefType.get((16, 8), F32)
            )
            def _matmul_mono(lhs, rhs):
                init_result = AllocaOp([4, 8], F32)
                # for memrefs this doesn't return anything?
                matmul_mono(lhs, rhs, outs=[init_result.memref])
                return init_result

        module = self.lower(module, kernel_name="_matmul_mono")
        check_correct(memref_module, module)

    def test_struct_op_memrefs(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                A: MemRef[4, 16, F32],
                B: MemRef[16, 8, F32],
            ):
                C = MemRef.alloca([4, 8], F32)
                matmul_mono(A, B, outs=[C])
                return C

        module = self.lower(module, kernel_name="matmul")
        check_correct(memref_module, module)

    def test_not_struct_op_memrefs(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                A: MemRef[4, 16, F32],
                B: MemRef[16, 8, F32],
            ):
                C = MemRef.alloca([4, 8], F32)
                linalg.matmul(A, B, outs=[C])
                return C

        module = self.lower(module, kernel_name="matmul")
        check_correct(memref_module, module)
