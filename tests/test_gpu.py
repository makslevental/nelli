import platform
from pathlib import Path
from textwrap import dedent

import numpy as np
import pytest

from nelli import F32
from nelli.mlir import spirv
from nelli.mlir._mlir import _mlir_libs
from nelli.mlir.func import declare, mlir_func
from nelli.mlir.gpu import (
    Module as GPUModule,
    block_id_x,
    block_id_y,
    set_container_module,
)
from nelli.mlir.memref import (
    MemRefValue as MemRef,
    UnrankedMemRefValue as UnrankedMemRef,
    cast,
)
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.spirv import set_module_target_env
from nelli.mlir.utils import run_pipeline
from nelli.utils import shlib_ext, mlir_mod_ctx
from util import check_correct

c_runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_c_runner_utils.{shlib_ext()}"
)
assert c_runner_utils_lib_path.exists()
runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_runner_utils.{shlib_ext()}"
)
assert runner_utils_lib_path.exists()

vulkan_wrapper_library_path = (
    Path(_mlir_libs.__file__).parent / f"libvulkan-runtime-wrappers.{shlib_ext()}"
)
assert vulkan_wrapper_library_path.exists()


shared_libs = [
    str(vulkan_wrapper_library_path),
    str(runner_utils_lib_path),
    str(c_runner_utils_lib_path),
]

if platform.system() == "Linux" and platform.processor() == "x86_64":
    cuda_wrapper_library_path = (
        Path(_mlir_libs.__file__).parent / f"libmlir_cuda_runtime.{shlib_ext()}"
    )
    assert cuda_wrapper_library_path.exists()
    shared_libs.append(str(cuda_wrapper_library_path))


class TestGPU:
    backend = LLVMJITBackend(shared_libs=shared_libs)

    def test_nested_func(self):
        scale = 1
        M, N, K = 4 * scale, 16 * scale, 8 * scale

        with mlir_mod_ctx() as module:

            class MyClass1(GPUModule):
                def mat_product_kernel(
                    self,
                    A: MemRef[(M, N), F32],
                    B: MemRef[(N, K), F32],
                    C: MemRef[(M, K), F32],
                ):
                    x = block_id_x()
                    y = block_id_y()
                    a = A[x, y]
                    b = B[x, y]
                    C[x, y] = a * b
                    return

            m = MyClass1(
                func_attributes={
                    "spirv.entry_point_abi": spirv.entry_point_abi(
                        workgroup_size=[1, 1, 1]
                    )
                }
            )

        correct = dedent(
            """\
        module {
          gpu.module @MyClass1 {
            gpu.func @method(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) kernel attributes {spirv.entry_point_abi = #spirv.entry_point_abi<workgroup_size = [1, 1, 1]>} {
              %0 = gpu.block_id  x
              %1 = gpu.block_id  y
              %2 = memref.load %arg0[%0, %1] : memref<4x16xf32>
              %3 = memref.load %arg1[%0, %1] : memref<16x8xf32>
              %4 = arith.mulf %2, %3 : f32
              memref.store %4, %arg2[%0, %1] : memref<4x8xf32>
              gpu.return
            }
          }
        }
        """
        )
        # print(MyClass1)
        check_correct(correct, module)

    def test_calling_nested_func(self):
        scale = 1
        M, N, K = 4 * scale, 16 * scale, 8 * scale

        with mlir_mod_ctx() as module:

            class MyClass1(GPUModule):
                def kernel(
                    self,
                    A: MemRef[(M, N), F32],
                    B: MemRef[(N, K), F32],
                    C: MemRef[(M, K), F32],
                ):
                    x = block_id_x()
                    y = block_id_y()
                    a = A[x, y]
                    b = B[x, y]
                    C[x, y] = a * b
                    return

            m = MyClass1(
                func_attributes={
                    "spirv.entry_point_abi": spirv.entry_point_abi(
                        workgroup_size=[1, 1, 1]
                    ),
                }
            )

            @mlir_func
            def main(
                A: MemRef[(M, N), F32],
                B: MemRef[(N, K), F32],
                C: MemRef[(M, K), F32],
            ):
                m.kernel(A, B, C, grid_size=[4, 4, 1], block_size=[1, 1, 1])

        module = set_container_module(module)
        module = self.backend.compile(module, Pipeline().canonicalize())

        correct = dedent(
            """\
        module attributes {gpu.container_module} {
          gpu.module @MyClass1 {
            gpu.func @kernel(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) kernel attributes {spirv.entry_point_abi = #spirv.entry_point_abi<workgroup_size = [1, 1, 1]>} {
              %0 = gpu.block_id  x
              %1 = gpu.block_id  y
              %2 = memref.load %arg0[%0, %1] : memref<4x16xf32>
              %3 = memref.load %arg1[%0, %1] : memref<16x8xf32>
              %4 = arith.mulf %2, %3 : f32
              memref.store %4, %arg2[%0, %1] : memref<4x8xf32>
              gpu.return
            }
          }
          func.func @main(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) {
            %c4 = arith.constant 4 : index
            %c1 = arith.constant 1 : index
            %0 = gpu.launch_func async @MyClass1::@kernel blocks in (%c4, %c4, %c1) threads in (%c1, %c1, %c1) args(%arg0 : memref<4x16xf32>, %arg1 : memref<16x8xf32>, %arg2 : memref<4x8xf32>)
            return
          }
        }
        """
        )
        check_correct(correct, module)

    @pytest.mark.xfail()
    def test_calling_nested_func_run(self):
        scale = 1
        # M, N, K = 4 * scale, 16 * scale, 8 * scale
        M, N, K = 4, 4, 4
        unranked_memref = UnrankedMemRef[F32]

        with mlir_mod_ctx() as module:
            print_memref_32 = declare("printMemrefF32", [unranked_memref])

            class MyClass2(GPUModule):

                # wtf if you name this `kernel` it doesn't work?
                def matmul(
                    self,
                    A: MemRef[(M, N), F32],
                    B: MemRef[(N, K), F32],
                    C: MemRef[(M, K), F32],
                ):
                    x = block_id_x()
                    y = block_id_y()
                    a = A[x, y]
                    b = B[x, y]
                    C[x, y] = a * b
                    return

            m = MyClass2(
                func_attributes={
                    "spirv.entry_point_abi": spirv.entry_point_abi(
                        workgroup_size=[1, 1, 1]
                    ),
                }
            )

            @mlir_func
            def main(
                A: MemRef[(M, N), F32],
                B: MemRef[(N, K), F32],
                C: MemRef[(M, K), F32],
            ):
                m.matmul(A, B, C, grid_size=[4, 4, 1], block_size=[1, 1, 1])
                C_cast = cast(C, unranked_memref.mlir_type)
                print_memref_32(C_cast)

        module = set_container_module(module)
        module = set_module_target_env(module)

        module = self.backend.compile(
            module,
            Pipeline()
            .gpu_kernel_outlining()
            .fold_memref_alias_ops()
            .canonicalize()
            .convert_gpu_to_spirv()
            .canonicalize()
            .SPIRV()
            .spirv_lower_abi_attrs()
            .spirv_update_vce()
            .VRIPS()
            .convert_gpu_launch_to_vulkan_launch()
            .finalize_memref_to_llvm()
            .FUNC()
            .llvm_request_c_wrappers()
            .CNUF()
            .convert_func_to_llvm(index_bitwidth=64)
            .reconcile_unrealized_casts()
            .launch_func_to_vulkan(),
        )

        A = np.random.randint(low=0, high=10, size=(4, 4)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(4, 4)).astype(np.float32)
        C = np.zeros((4, 4)).astype(np.float32)
        invoker = self.backend.load(module)
        invoker.main(A, B, C)
        assert np.allclose(A * B, C)

    @pytest.mark.xfail()
    def test_cuda(self, capfd):
        src = dedent(
            """\
        func.func @main() {
          %data = memref.alloc() : memref<2x6xi32>
          %sum = memref.alloc() : memref<2xi32>
          %cst0 = arith.constant 0 : i32
          %cst1 = arith.constant 1 : i32
          %cst2 = arith.constant 2 : i32
          %cst4 = arith.constant 4 : i32
          %cst8 = arith.constant 8 : i32
          %cst16 = arith.constant 16 : i32

          %cst3 = arith.constant 3 : i32
          %cst6 = arith.constant 6 : i32
          %cst7 = arith.constant 7 : i32
          %cst10 = arith.constant 10 : i32
          %cst11 = arith.constant 11 : i32

          %c0 = arith.constant 0 : index
          %c1 = arith.constant 1 : index
          %c2 = arith.constant 2 : index
          %c3 = arith.constant 3 : index
          %c4 = arith.constant 4 : index
          %c5 = arith.constant 5 : index
          %c6 = arith.constant 6 : index

          %cast_data = memref.cast %data : memref<2x6xi32> to memref<*xi32>
          gpu.host_register %cast_data : memref<*xi32>
          %cast_sum = memref.cast %sum : memref<2xi32> to memref<*xi32>
          gpu.host_register %cast_sum : memref<*xi32>

          memref.store %cst0, %data[%c0, %c0] : memref<2x6xi32>
          memref.store %cst1, %data[%c0, %c1] : memref<2x6xi32>
          memref.store %cst2, %data[%c0, %c2] : memref<2x6xi32>
          memref.store %cst4, %data[%c0, %c3] : memref<2x6xi32>
          memref.store %cst8, %data[%c0, %c4] : memref<2x6xi32>
          memref.store %cst16, %data[%c0, %c5] : memref<2x6xi32>

          memref.store %cst2, %data[%c1, %c0] : memref<2x6xi32>
          memref.store %cst3, %data[%c1, %c1] : memref<2x6xi32>
          memref.store %cst6, %data[%c1, %c2] : memref<2x6xi32>
          memref.store %cst7, %data[%c1, %c3] : memref<2x6xi32>
          memref.store %cst10, %data[%c1, %c4] : memref<2x6xi32>
          memref.store %cst11, %data[%c1, %c5] : memref<2x6xi32>

          gpu.launch blocks(%bx, %by, %bz) in (%grid_x = %c2, %grid_y = %c1, %grid_z = %c1)
                     threads(%tx, %ty, %tz) in (%block_x = %c6, %block_y = %c1, %block_z = %c1) {
            %val = memref.load %data[%bx, %tx] : memref<2x6xi32>
            %reduced = gpu.all_reduce and %val uniform {} : (i32) -> (i32)
            memref.store %reduced, %sum[%bx] : memref<2xi32>
            gpu.terminator
          }

          call @printMemrefI32(%cast_sum) : (memref<*xi32>) -> ()

          return
        }

        func.func private @printMemrefI32(memref<*xi32>)
        """
        )

        with mlir_mod_ctx(src) as module:
            pass

        module = self.backend.compile(
            module,
            Pipeline()
            .gpu_kernel_outlining()
            .GPU()
            .strip_debuginfo()
            .convert_gpu_to_nvvm()
            .gpu_to_cubin()
            .UPG()
            .gpu_to_llvm(),
        )

        invoker = self.backend.load(module)
        invoker.main()

        correct = dedent(
            """\
        Unranked Memref base@ = 0x5612f9fb6570 rank = 1 offset = 0 sizes = [2] strides = [1] data = 
        [0,  2]
        """
        )
        out, err = capfd.readouterr()
        check_correct(correct, out)
