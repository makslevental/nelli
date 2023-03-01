from pathlib import Path
from textwrap import dedent

import numpy as np

from nelli import F32
from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir.dialects import linalg
from nelli.mlir._mlir.runtime import unranked_memref_to_numpy
from nelli.mlir.func import mlir_func
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import (
    LLVMJITBackend,
    elemental_type_to_ctype,
    memref_type_to_np_dtype,
)
from nelli.mlir.tensor import TensorValue as Tensor, extract
from nelli.mlir.transform import sequence, match, tile_linalg_to_scf_for
from nelli.utils import mlir_mod_ctx, find_ops, add_named_attr, shlib_ext
from util import check_correct

c_runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_c_runner_utils.{shlib_ext()}"
)
assert c_runner_utils_lib_path.exists()
runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_runner_utils.{shlib_ext()}"
)
assert runner_utils_lib_path.exists()


class TestTiling:
    backend = LLVMJITBackend(
        shared_libs=[str(c_runner_utils_lib_path), str(runner_utils_lib_path)]
    )

    def test_munge_callback(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                arg0: Tensor[(4, 16), F32],
            ):
                s = extract(arg0, [0, 0])
                return s

        module = self.backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline()
            .arith_bufferize()
            .FUNC()
            .tensor_bufferize()
            .CNUF()
            .func_bufferize()
            .FUNC()
            .finalizing_bufferize()
            .CNUF()
            .refbackend_munge_calling_conventions(),
        )

        correct = dedent(
            """\
        module {
          func.func private @refbackend_consume_func_return_f32(f32) attributes {llvm.emit_c_interface}
          func.func @matmul(%arg0: memref<*xf32>) attributes {llvm.emit_c_interface} {
            %cast = memref.cast %arg0 : memref<*xf32> to memref<4x16xf32>
            %c0 = arith.constant 0 : index
            %c0_0 = arith.constant 0 : index
            %0 = memref.load %cast[%c0, %c0_0] : memref<4x16xf32>
            call @refbackend_consume_func_return_f32(%0) : (f32) -> ()
            return
          }
        }
        """
        )
        check_correct(correct, module)
        module = self.backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline()
            .convert_linalg_to_llvm()
            .expand_strided_metadata()
            .lower_affine()
            .convert_arith_to_llvm()
            .convert_scf_to_cf()
            .finalize_memref_to_llvm()
            .convert_func_to_llvm()
            .reconcile_unrealized_casts(),
        )

        result = None

        def callback(*args):
            nonlocal result
            self.result = tuple(
                [
                    arg
                    if type in elemental_type_to_ctype
                    else unranked_memref_to_numpy(arg, memref_type_to_np_dtype[type])
                    for arg, type in zip(args, invoker.ret_types)
                ]
            )
            assert len(args) == 1
            result = args[0]

        invoker = self.backend.load(module, consume_return_func=callback)
        A = np.random.randint(low=0, high=10, size=(4, 16)).astype(np.float32)
        invoker.matmul(A)
        assert result == A[0, 0]

    def test_simple_matmul(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                arg0: Tensor[(4, 16), F32],
                arg1: Tensor[(16, 8), F32],
                out: Tensor[(4, 8), F32],
            ):
                return linalg.matmul(arg0, arg1, outs=[out])

        matmul_op = find_ops(module, lambda op: op.name == "linalg.matmul")
        assert len(matmul_op) == 1
        matmul_op = matmul_op[0]
        add_named_attr(matmul_op, "__internal_linalg_transform__", "simple_gemm")

        module = self.backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline()
            .FUNC()
            .tiling_interface(
                strategy="tile", tile_sizes=[10, 20], filter_name="simple_gemm"
            ),
        )
        # print(module)

        correct = dedent(
            """\
        #map = affine_map<(d0) -> (10, -d0 + 4)>
        #map1 = affine_map<(d0) -> (20, -d0 + 8)>
        module {
          func.func @matmul(%arg0: tensor<4x16xf32>, %arg1: tensor<16x8xf32>, %arg2: tensor<4x8xf32>) -> tensor<4x8xf32> {
            %c10 = arith.constant 10 : index
            %c20 = arith.constant 20 : index
            %c0 = arith.constant 0 : index
            %c4 = arith.constant 4 : index
            %c8 = arith.constant 8 : index
            %0 = scf.for %arg3 = %c0 to %c4 step %c10 iter_args(%arg4 = %arg2) -> (tensor<4x8xf32>) {
              %1 = affine.min #map(%arg3)
              %2 = scf.for %arg5 = %c0 to %c8 step %c20 iter_args(%arg6 = %arg4) -> (tensor<4x8xf32>) {
                %3 = affine.min #map1(%arg5)
                %extracted_slice = tensor.extract_slice %arg0[%arg3, 0] [%1, 16] [1, 1] : tensor<4x16xf32> to tensor<?x16xf32>
                %extracted_slice_0 = tensor.extract_slice %arg1[0, %arg5] [16, %3] [1, 1] : tensor<16x8xf32> to tensor<16x?xf32>
                %extracted_slice_1 = tensor.extract_slice %arg6[%arg3, %arg5] [%1, %3] [1, 1] : tensor<4x8xf32> to tensor<?x?xf32>
                %4 = linalg.matmul {__internal_linalg_transform__ = "tiled", cast = #linalg.type_fn<cast_signed>} ins(%extracted_slice, %extracted_slice_0 : tensor<?x16xf32>, tensor<16x?xf32>) outs(%extracted_slice_1 : tensor<?x?xf32>) -> tensor<?x?xf32>
                %inserted_slice = tensor.insert_slice %4 into %arg6[%arg3, %arg5] [%1, %3] [1, 1] : tensor<?x?xf32> into tensor<4x8xf32>
                scf.yield %inserted_slice : tensor<4x8xf32>
              }
              scf.yield %2 : tensor<4x8xf32>
            }
            return %0 : tensor<4x8xf32>
          }
        }
        """
        )
        check_correct(correct, module)

    def test_simple_matmul_runtime(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                arg0: Tensor[(4, 16), F32],
                arg1: Tensor[(16, 8), F32],
                out: Tensor[(4, 8), F32],
            ):
                return linalg.matmul(arg0, arg1, outs=[out])

        matmul_op = find_ops(module, lambda op: op.name == "linalg.matmul")
        assert len(matmul_op) == 1
        matmul_op = matmul_op[0]
        add_named_attr(matmul_op, "__internal_linalg_transform__", "simple_gemm")

        module = self.backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline()
            .bufferize()
            .FUNC()
            .tiling_interface(
                strategy="tile", tile_sizes=[10, 20], filter_name="simple_gemm"
            )
            .convert_linalg_to_loops()
            .linalg_bufferize()
            .convert_scf_to_cf()
            .convert_linalg_to_loops()
            .linalg_bufferize()
            .CNUF()
            .arith_bufferize()
            .FUNC()
            .tensor_bufferize()
            .CNUF()
            .func_bufferize()
            .FUNC()
            .finalizing_bufferize()
            .CNUF()
            .refbackend_munge_calling_conventions()
            .convert_linalg_to_llvm()
            .expand_strided_metadata()
            .lower_affine()
            .convert_arith_to_llvm()
            .convert_scf_to_cf()
            .finalize_memref_to_llvm()
            .convert_func_to_llvm()
            .reconcile_unrealized_casts(),
        )

        result = None

        def callback(*args):
            nonlocal result
            result = tuple(
                [
                    arg
                    if type in elemental_type_to_ctype
                    else unranked_memref_to_numpy(arg, memref_type_to_np_dtype[type])
                    for arg, type in zip(args, invoker.ret_types)
                ]
            )
            assert len(args) == 1
            result = result[0]

        invoker = self.backend.load(module, consume_return_func=callback)
        A = np.random.randint(low=0, high=10, size=(4, 16)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(16, 8)).astype(np.float32)
        C = np.zeros((4, 8)).astype(np.float32)
        invoker.matmul(A, B, C)
        assert np.allclose(A @ B, result)

    def test_conv_2d_nhwc_hwcf_tiling(self):
        # https://discourse.llvm.org/t/vectorization-of-convolution-op/60458/4
        with mlir_mod_ctx() as module:

            @mlir_func
            def conv_2d_nhwc_hwcf(
                input: Tensor[(1, 225, 225, 3), F32],
                kernel: Tensor[(3, 3, 3, 32), F32],
                output: Tensor[(1, 112, 112, 32), F32],
            ):
                return linalg.conv_2d_nhwc_hwcf(input, kernel, outs=[output])

            @sequence
            def basic(target, *extra_args):
                m = match(target, ["linalg.conv_2d_nhwc_hwcf"])
                tiled = tile_linalg_to_scf_for(m, sizes=[0, 1, 8, 8, 1])

        module = self.backend.compile(
            module,
            kernel_name="conv_2d_nhwc_hwcf",
            pipeline=Pipeline()
            .transform_dialect_interpreter()
            .transform_dialect_erase_schedule()
            .FUNC()
            .linalg_transform_patterns(decompose_convolutions=True)
            .linalg_transform_patterns(linalg_to_vector_patterns=True)
            .CNUF(),
            enable_ir_printing=False,
        )
        correct = dedent(
            """\
        #map = affine_map<(d0, d1) -> (d0 + d1)>
        #map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
        #map2 = affine_map<(d0, d1, d2, d3) -> (d3, d2)>
        #map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
        module {
          func.func @conv_2d_nhwc_hwcf(%arg0: tensor<1x225x225x3xf32>, %arg1: tensor<3x3x3x32xf32>, %arg2: tensor<1x112x112x32xf32>) -> tensor<1x112x112x32xf32> {
            %cst = arith.constant 0.000000e+00 : f32
            %c3 = arith.constant 3 : index
            %c32 = arith.constant 32 : index
            %c0 = arith.constant 0 : index
            %c1 = arith.constant 1 : index
            %c8 = arith.constant 8 : index
            %c112 = arith.constant 112 : index
            %0 = scf.for %arg3 = %c0 to %c112 step %c1 iter_args(%arg4 = %arg2) -> (tensor<1x112x112x32xf32>) {
              %1 = scf.for %arg5 = %c0 to %c112 step %c8 iter_args(%arg6 = %arg4) -> (tensor<1x112x112x32xf32>) {
                %2 = scf.for %arg7 = %c0 to %c32 step %c8 iter_args(%arg8 = %arg6) -> (tensor<1x112x112x32xf32>) {
                  %3 = scf.for %arg9 = %c0 to %c3 step %c1 iter_args(%arg10 = %arg8) -> (tensor<1x112x112x32xf32>) {
                    %4 = affine.apply #map(%arg3, %arg9)
                    %extracted_slice = tensor.extract_slice %arg0[0, %4, %arg5, 0] [1, 1, 10, 3] [1, 1, 1, 1] : tensor<1x225x225x3xf32> to tensor<1x1x10x3xf32>
                    %extracted_slice_0 = tensor.extract_slice %arg1[%arg9, 0, 0, %arg7] [1, 3, 3, 8] [1, 1, 1, 1] : tensor<3x3x3x32xf32> to tensor<1x3x3x8xf32>
                    %extracted_slice_1 = tensor.extract_slice %arg10[0, %arg3, %arg5, %arg7] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<1x112x112x32xf32> to tensor<1x1x8x8xf32>
                    %extracted_slice_2 = tensor.extract_slice %extracted_slice[0, 0, 0, 0] [1, 1, 10, 3] [1, 1, 1, 1] : tensor<1x1x10x3xf32> to tensor<1x10x3xf32>
                    %extracted_slice_3 = tensor.extract_slice %extracted_slice_0[0, 0, 0, 0] [1, 3, 3, 8] [1, 1, 1, 1] : tensor<1x3x3x8xf32> to tensor<3x3x8xf32>
                    %extracted_slice_4 = tensor.extract_slice %extracted_slice_1[0, 0, 0, 0] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<1x1x8x8xf32> to tensor<1x8x8xf32>
                    %5 = vector.transfer_read %extracted_slice_2[%c0, %c0, %c0], %cst {in_bounds = [true, true, true]} : tensor<1x10x3xf32>, vector<1x10x3xf32>
                    %6 = vector.transfer_read %extracted_slice_3[%c0, %c0, %c0], %cst {in_bounds = [true, true, true]} : tensor<3x3x8xf32>, vector<3x3x8xf32>
                    %7 = vector.transfer_read %extracted_slice_4[%c0, %c0, %c0], %cst {in_bounds = [true, true, true]} : tensor<1x8x8xf32>, vector<1x8x8xf32>
                    %8 = vector.extract_strided_slice %5 {offsets = [0, 0, 0], sizes = [1, 8, 3], strides = [1, 1, 1]} : vector<1x10x3xf32> to vector<1x8x3xf32>
                    %9 = vector.extract_strided_slice %5 {offsets = [0, 1, 0], sizes = [1, 8, 3], strides = [1, 1, 1]} : vector<1x10x3xf32> to vector<1x8x3xf32>
                    %10 = vector.extract_strided_slice %5 {offsets = [0, 2, 0], sizes = [1, 8, 3], strides = [1, 1, 1]} : vector<1x10x3xf32> to vector<1x8x3xf32>
                    %11 = vector.extract %6[0] : vector<3x3x8xf32>
                    %12 = vector.extract %6[1] : vector<3x3x8xf32>
                    %13 = vector.extract %6[2] : vector<3x3x8xf32>
                    %14 = vector.contract {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %8, %11, %7 : vector<1x8x3xf32>, vector<3x8xf32> into vector<1x8x8xf32>
                    %15 = vector.contract {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %9, %12, %14 : vector<1x8x3xf32>, vector<3x8xf32> into vector<1x8x8xf32>
                    %16 = vector.contract {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %10, %13, %15 : vector<1x8x3xf32>, vector<3x8xf32> into vector<1x8x8xf32>
                    %17 = vector.transfer_write %16, %extracted_slice_4[%c0, %c0, %c0] {in_bounds = [true, true, true]} : vector<1x8x8xf32>, tensor<1x8x8xf32>
                    %inserted_slice = tensor.insert_slice %17 into %extracted_slice_1[0, 0, 0, 0] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<1x8x8xf32> into tensor<1x1x8x8xf32>
                    %inserted_slice_5 = tensor.insert_slice %inserted_slice into %arg10[0, %arg3, %arg5, %arg7] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<1x1x8x8xf32> into tensor<1x112x112x32xf32>
                    scf.yield %inserted_slice_5 : tensor<1x112x112x32xf32>
                  }
                  scf.yield %3 : tensor<1x112x112x32xf32>
                }
                scf.yield %2 : tensor<1x112x112x32xf32>
              }
              scf.yield %1 : tensor<1x112x112x32xf32>
            }
            return %0 : tensor<1x112x112x32xf32>
          }
        }
        """
        )
        check_correct(correct, module)
