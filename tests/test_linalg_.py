from pathlib import Path
from textwrap import dedent

import numpy as np

from nelli import F32
from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir.dialects import tensor, func, linalg
from nelli.mlir._mlir.dialects.linalg import (
    TV,
    linalg_structured_op,
    TensorDef,
    T,
    S,
    domain,
    D,
)
from nelli.mlir._mlir.ir import RankedTensorType, MemRefType
from nelli.mlir.func import mlir_func
from nelli.mlir.memref import AllocaOp
from nelli.mlir.memref import MemRefValue as MemRef
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.utils import mlir_mod_ctx, shlib_ext
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

omp_lib_path = Path(_mlir_libs.__file__).parent / f"libomp.{shlib_ext()}"
assert omp_lib_path.exists()


class TestLinalg:
    backend = LLVMJITBackend(shared_libs=[str(omp_lib_path)])

    def lower(self, module, kernel_name):
        module = self.backend.compile(
            module,
            Pipeline().bufferize().FUNC().convert_linalg_to_affine_loops().CNUF(),
            kernel_name=kernel_name,
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
        # print(module)
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
                A: MemRef[(4, 16), F32],
                B: MemRef[(16, 8), F32],
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
                A: MemRef[(4, 16), F32],
                B: MemRef[(16, 8), F32],
            ):
                C = MemRef.alloca([4, 8], F32)
                linalg.matmul(A, B, outs=[C])
                return C

        module = self.lower(module, kernel_name="matmul")
        check_correct(memref_module, module)

    def test_linalg_vector(self):
        with mlir_mod_ctx() as module:
            module = module.parse(
                dedent(
                    """\
            func.func @conv1d_nwc_4x2x8_memref(%input: memref<4x6x3xf32>, %filter: memref<1x3x8xf32>, %output: memref<4x2x8xf32>) {
              linalg.conv_1d_nwc_wcf
                {dilations = dense<1> : tensor<1xi64>, strides = dense<3> : tensor<1xi64>}
                ins(%input, %filter : memref<4x6x3xf32>, memref<1x3x8xf32>)
                outs(%output : memref<4x2x8xf32>)
              return
            } 
            """
                )
            )

        module = self.backend.compile(
            module,
            kernel_name="conv1d_nwc_4x2x8_memref",
            pipeline=Pipeline()
            .bufferize()
            .FUNC()
            .linalg_transform_patterns(linalg_to_vector_patterns=True)
            .CNUF(),
        )
        correct = dedent(
            """\
        #map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
        #map1 = affine_map<(d0, d1, d2, d3) -> (d3, d2)>
        #map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
        module {
          func.func @conv1d_nwc_4x2x8_memref(%arg0: memref<4x6x3xf32>, %arg1: memref<1x3x8xf32>, %arg2: memref<4x2x8xf32>) {
            %c0 = arith.constant 0 : index
            %cst = arith.constant 0.000000e+00 : f32
            %0 = vector.transfer_read %arg0[%c0, %c0, %c0], %cst {in_bounds = [true, true, true]} : memref<4x6x3xf32>, vector<4x4x3xf32>
            %1 = vector.transfer_read %arg1[%c0, %c0, %c0], %cst {in_bounds = [true, true, true]} : memref<1x3x8xf32>, vector<1x3x8xf32>
            %2 = vector.transfer_read %arg2[%c0, %c0, %c0], %cst {in_bounds = [true, true, true]} : memref<4x2x8xf32>, vector<4x2x8xf32>
            %3 = vector.extract_strided_slice %0 {offsets = [0, 0, 0], sizes = [4, 1, 3], strides = [1, 1, 1]} : vector<4x4x3xf32> to vector<4x1x3xf32>
            %4 = vector.extract_strided_slice %0 {offsets = [0, 3, 0], sizes = [4, 1, 3], strides = [1, 1, 1]} : vector<4x4x3xf32> to vector<4x1x3xf32>
            %5 = vector.extract %1[0] : vector<1x3x8xf32>
            %6 = vector.extract_strided_slice %2 {offsets = [0, 0, 0], sizes = [4, 1, 8], strides = [1, 1, 1]} : vector<4x2x8xf32> to vector<4x1x8xf32>
            %7 = vector.extract_strided_slice %2 {offsets = [0, 1, 0], sizes = [4, 1, 8], strides = [1, 1, 1]} : vector<4x2x8xf32> to vector<4x1x8xf32>
            %8 = vector.contract {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %3, %5, %6 : vector<4x1x3xf32>, vector<3x8xf32> into vector<4x1x8xf32>
            %9 = vector.contract {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %4, %5, %7 : vector<4x1x3xf32>, vector<3x8xf32> into vector<4x1x8xf32>
            %10 = vector.insert_strided_slice %8, %2 {offsets = [0, 0, 0], strides = [1, 1, 1]} : vector<4x1x8xf32> into vector<4x2x8xf32>
            %11 = vector.insert_strided_slice %9, %10 {offsets = [0, 1, 0], strides = [1, 1, 1]} : vector<4x1x8xf32> into vector<4x2x8xf32>
            vector.transfer_write %11, %arg2[%c0, %c0, %c0] {in_bounds = [true, true, true]} : vector<4x2x8xf32>, memref<4x2x8xf32>
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_linalg_vector_1d_runtime(self):
        with mlir_mod_ctx() as module:
            module = module.parse(
                dedent(
                    """\
            func.func @conv1d_nwc_4x2x8_memref(%input: memref<4x6x3xf32>, %filter: memref<1x3x8xf32>, %output: memref<4x2x8xf32>) {
              linalg.conv_1d_nwc_wcf
                {dilations = dense<1> : tensor<1xi64>, strides = dense<3> : tensor<1xi64>}
                ins(%input, %filter : memref<4x6x3xf32>, memref<1x3x8xf32>)
                outs(%output : memref<4x2x8xf32>)
              return
            } 
            """
                )
            )

        module = self.backend.compile(
            module,
            kernel_name="conv1d_nwc_4x2x8_memref",
            pipeline=Pipeline()
            .bufferize()
            .FUNC()
            .linalg_transform_patterns(linalg_to_vector_patterns=True)
            .convert_vector_to_scf(full_unroll=True)
            .CNUF()
            .convert_vector_to_llvm()
            .finalize_memref_to_llvm()
            .lower_to_llvm(),
        )

        invoker = self.backend.load(module)
        input = np.random.randint(low=0, high=10, size=(4, 6, 3)).astype(np.float32)
        kernel = np.random.randint(low=0, high=4, size=(1, 3, 8)).astype(np.float32)
        output = np.zeros((4, 2, 8)).astype(np.float32)
        invoker.conv1d_nwc_4x2x8_memref(input, kernel, output)
        assert np.nonzero(output)
