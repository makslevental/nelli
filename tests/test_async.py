import logging

logger = logging.getLogger(__name__)

from pathlib import Path
from textwrap import dedent

import numpy as np

from nelli.mlir._mlir.dialects import linalg
from nelli.mlir.utils import F32
from nelli.mlir.func import mlir_func
from nelli.mlir.memref import MemRefValue as MemRef
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.passes import Pipeline
from nelli.utils import mlir_mod_ctx, shlib_ext

from nelli.mlir._mlir import _mlir_libs

async_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_async_runtime.{shlib_ext()}"
)
assert async_lib_path.exists()

c_runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_c_runner_utils.{shlib_ext()}"
)
assert c_runner_utils_lib_path.exists()
runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_runner_utils.{shlib_ext()}"
)
assert runner_utils_lib_path.exists()


class TestAsync:
    backend = LLVMJITBackend(
        shared_libs=[
            str(c_runner_utils_lib_path),
            str(runner_utils_lib_path),
            str(async_lib_path),
        ]
    )

    def test_basic(self):
        M, N, K = 10, 10, 10
        src = dedent(
            """\
        #map0 = affine_map<(d0, d1) -> (d0, d1)>
        func.func @matsum(%lhs: memref<?x?xf32>,
                             %rhs: memref<?x?xf32>,
                             %sum: memref<?x?xf32>) {
          linalg.generic {
            indexing_maps = [#map0, #map0, #map0],
            iterator_types = ["parallel", "parallel"]
          }
            ins(%lhs, %rhs : memref<?x?xf32>, memref<?x?xf32>)
            outs(%sum : memref<?x?xf32>)
          {
            ^bb0(%lhs_in: f32, %rhs_in: f32, %sum_out: f32):
              %0 = arith.addf %lhs_in, %rhs_in : f32
              linalg.yield %0 : f32
          }

          return
        }
        """
        )
        with mlir_mod_ctx(src) as module:
            pass

        module = self.backend.compile(
            module,
            kernel_name="matsum",
            pipeline=Pipeline()
            .FUNC()
            .convert_linalg_to_parallel_loops()
            .CNUF()
            .async_parallel_for()
            .async_to_async_runtime()
            .async_runtime_ref_counting()
            .async_runtime_ref_counting_opt()
            .convert_async_to_llvm()
            .convert_scf_to_cf()
            .arith_expand()
            .memref_expand()
            .convert_vector_to_llvm()
            .finalize_memref_to_llvm()
            .convert_func_to_llvm()
            .reconcile_unrealized_casts(),
        )

        invoker = self.backend.load(module)
        input = np.random.randint(low=0, high=10, size=(M, N)).astype(np.float32)
        kernel = np.random.randint(low=0, high=4, size=(N, K)).astype(np.float32)
        output = np.zeros((M, K)).astype(np.float32)
        invoker.matsum(input, kernel, output)
        correct = input + kernel
        assert np.allclose(output, correct)

    def test_basic_sugar(self):
        M, N, K = 1000, 1000, 1000
        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                input: MemRef[(M, N), F32],
                kernel: MemRef[(N, K), F32],
                output: MemRef[(M, K), F32],
            ):
                linalg.matmul(input, kernel, outs=[output])
                return None

        module = self.backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline()
            .FUNC()
            .convert_linalg_to_parallel_loops()
            .CNUF()
            .async_parallel_for(num_workers=10)
            .async_to_async_runtime()
            .async_runtime_ref_counting()
            .async_runtime_ref_counting_opt()
            .convert_async_to_llvm()
            .convert_scf_to_cf()
            .arith_expand()
            .memref_expand()
            .convert_vector_to_llvm()
            .finalize_memref_to_llvm()
            .convert_func_to_llvm()
            .lower_to_llvm()
            .reconcile_unrealized_casts(),
        )

        invoker = self.backend.load(module)
        input = np.random.randint(low=0, high=10, size=(M, N)).astype(np.float32)
        kernel = np.random.randint(low=0, high=4, size=(N, K)).astype(np.float32)
        output = np.zeros((M, K)).astype(np.float32)
        invoker.matmul(input, kernel, output)
        correct = input @ kernel
        assert np.allclose(output, correct)
