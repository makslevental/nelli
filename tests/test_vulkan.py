from pathlib import Path
from textwrap import dedent

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.utils import shlib_ext, mlir_mod_ctx

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

src = dedent(
    """\
module attributes {
  gpu.container_module,
  spirv.target_env = #spirv.target_env<
    #spirv.vce<v1.0, [Shader], [SPV_KHR_storage_buffer_storage_class]>, #spirv.resource_limits<>>
} {
  gpu.module @kernels {
    gpu.func @kernel_mul(%arg0 : memref<4x4xf32>, %arg1 : memref<4x4xf32>, %arg2 : memref<4x4xf32>)
      kernel attributes { spirv.entry_point_abi = #spirv.entry_point_abi<workgroup_size = [1, 1, 1]>} {
      %x = gpu.block_id x
      %y = gpu.block_id y
      %1 = memref.load %arg0[%x, %y] : memref<4x4xf32>
      %2 = memref.load %arg1[%x, %y] : memref<4x4xf32>
      %3 = arith.mulf %1, %2 : f32
      memref.store %3, %arg2[%x, %y] : memref<4x4xf32>
      gpu.return
    }
  }

  func.func @main() {
    %arg0 = memref.alloc() : memref<4x4xf32>
    %arg1 = memref.alloc() : memref<4x4xf32>
    %arg2 = memref.alloc() : memref<4x4xf32>
    %0 = arith.constant 0 : i32
    %1 = arith.constant 1 : i32
    %2 = arith.constant 2 : i32
    %value0 = arith.constant 0.0 : f32
    %value1 = arith.constant 2.0 : f32
    %value2 = arith.constant 3.0 : f32
    %arg3 = memref.cast %arg0 : memref<4x4xf32> to memref<?x?xf32>
    %arg4 = memref.cast %arg1 : memref<4x4xf32> to memref<?x?xf32>
    %arg5 = memref.cast %arg2 : memref<4x4xf32> to memref<?x?xf32>
    call @fillResource2DFloat(%arg3, %value1) : (memref<?x?xf32>, f32) -> ()
    call @fillResource2DFloat(%arg4, %value2) : (memref<?x?xf32>, f32) -> ()
    call @fillResource2DFloat(%arg5, %value0) : (memref<?x?xf32>, f32) -> ()

    %cst1 = arith.constant 1 : index
    %cst4 = arith.constant 4 : index
    gpu.launch_func @kernels::@kernel_mul
        blocks in (%cst4, %cst4, %cst1) threads in(%cst1, %cst1, %cst1)
        args(%arg0 : memref<4x4xf32>, %arg1 : memref<4x4xf32>, %arg2 : memref<4x4xf32>)
    %arg6 = memref.cast %arg5 : memref<?x?xf32> to memref<*xf32>
    call @printMemrefF32(%arg6) : (memref<*xf32>) -> ()
    return
  }
  func.func private @fillResource2DFloat(%0 : memref<?x?xf32>, %1 : f32)
  func.func private @printMemrefF32(%ptr : memref<*xf32>)
}
"""
)


class TestVulkan:
    backend = LLVMJITBackend(
        shared_libs=[str(vulkan_wrapper_library_path), str(runner_utils_lib_path)]
    )

    def test_basic(self):
        with mlir_mod_ctx(src) as module:
            pass

        module = self.backend.compile(module, Pipeline().lower_to_vulkan(64))
        invoker = self.backend.load(module)
        invoker.main()
