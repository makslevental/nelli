import ctypes
import re
import time
from pathlib import Path
from textwrap import dedent

import numpy as np

from nelli import F64, I64
from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir import runtime as rt
from nelli.mlir._mlir.dialects.linalg.opdsl import lang as dsl
from nelli.mlir._mlir.execution_engine import ExecutionEngine
from nelli.mlir.benchmark import create_sparse_np_tensor, wrap
from nelli.mlir.func import mlir_func, declare
from nelli.mlir.memref import MemRefValue as MemRef
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.scf import range as scf_range
from nelli.mlir.tensor import TensorValue as Tensor
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


@dsl.linalg_structured_op
def matmul_dsl(
    A=dsl.TensorDef(dsl.T, dsl.S.M, dsl.S.K),
    B=dsl.TensorDef(dsl.T, dsl.S.K, dsl.S.N),
    C=dsl.TensorDef(dsl.T, dsl.S.M, dsl.S.N, output=True),
):
    C[dsl.D.m, dsl.D.n] += A[dsl.D.m, dsl.D.k] * B[dsl.D.k, dsl.D.n]


c_runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_c_runner_utils.{shlib_ext()}"
)
assert c_runner_utils_lib_path.exists()
runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_runner_utils.{shlib_ext()}"
)
assert runner_utils_lib_path.exists()


class TestBenchmark:
    backend = LLVMJITBackend(
        shared_libs=[str(c_runner_utils_lib_path), str(runner_utils_lib_path)]
    )

    def runner(self, engine_invoke, param1_type, param2_type, result_type):
        compiled_program_args = []
        for argument_type in [result_type, param1_type, param2_type, result_type]:
            argument_type_str = str(argument_type)
            dimensions_str = re.sub("<|>|tensor", "", argument_type_str)
            dimensions = [int(dim) for dim in dimensions_str.split("x")[:-1]]
            if argument_type == result_type:
                argument = np.zeros(dimensions, np.float64)
            else:
                argument = create_sparse_np_tensor(dimensions, 1000)
            compiled_program_args.append(
                ctypes.pointer(
                    ctypes.pointer(rt.get_ranked_memref_descriptor(argument))
                )
            )
        np_timers_ns = np.array([0], dtype=np.int64)
        compiled_program_args.append(
            ctypes.pointer(
                ctypes.pointer(rt.get_ranked_memref_descriptor(np_timers_ns))
            )
        )
        engine_invoke("main", *compiled_program_args)
        return int(np_timers_ns[0])

    def benchmark_np_matrix_multiplication(self, M, N, K):
        argument1 = np.random.uniform(low=0.0, high=100.0, size=(M, N))
        argument2 = np.random.uniform(low=0.0, high=100.0, size=(N, K))
        start_time = time.time_ns()
        np.matmul(argument1, argument2)
        return time.time_ns() - start_time

    def test_benchmark_sparse_mlir_multiplication(self):
        M, N, K = 100, 150, 200
        with mlir_mod_ctx() as module:
            param1_type, param2_type, result_type = (
                Tensor[[M, N], F64],
                Tensor[[N, K], F64],
                Tensor[[M, K], F64],
            )

            @mlir_func
            def sparse_kernel(x: param1_type, y: param2_type, z: result_type):
                return matmul_dsl(x, y, outs=[z])

        module = wrap(module)

        module = self.backend.compile(
            module,
            Pipeline().sparse_compiler(
                parallelization_strategy="dense-outer-loop",
                vl=16,
                reassociate_fp_reductions=True,
                enable_index_optimizations=True,
            ),
        )
        engine = ExecutionEngine(
            module,
            3,
            shared_libs=[str(c_runner_utils_lib_path), str(runner_utils_lib_path)],
        )
        for i in range(10):
            time_sparse = self.runner(
                engine.invoke,
                param1_type.mlir_type,
                param2_type.mlir_type,
                result_type.mlir_type,
            )
            time_np = self.benchmark_np_matrix_multiplication(M, N, K)
            print()
            print(f"{time_sparse/1e9=}")
            print(f"{time_np/1e9=}")

    def test_sugar_benchmark(self):
        M, N, K = 100, 150, 200
        N_RUNS = 10
        param1_type, param2_type, result_type = (
            Tensor[[M, N], F64],
            Tensor[[N, K], F64],
            Tensor[[M, K], F64],
        )

        with mlir_mod_ctx() as module:
            timer = declare("_mlir_ciface_nanoTime", [], result_annots=[I64])

            @mlir_func
            def matmul(x: param1_type, y: param2_type, z: result_type):
                return matmul_dsl(x, y, outs=[z])

            @mlir_func(range_ctor=scf_range, emit_c_interface=True)
            def timing_wrapper(
                x: param1_type,
                y: param2_type,
                z: result_type,
                times: MemRef[[N_RUNS], I64],
            ):
                for i in range(0, N_RUNS):
                    start = timer()
                    matmul(x, y, z)
                    end = timer()
                    times[i] = end - start

        correct = dedent(
            """\
        #map = affine_map<(d0, d1, d2) -> (d1, d0)>
        #map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
        #map2 = affine_map<(d0, d1, d2) -> (d1, d2)>
        module {
          func.func private @_mlir_ciface_nanoTime() -> i64
          func.func @matmul(%arg0: tensor<100x150xf64>, %arg1: tensor<150x200xf64>, %arg2: tensor<100x200xf64>) -> tensor<100x200xf64> {
            %0 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["reduction", "parallel", "parallel"]} ins(%arg0, %arg1 : tensor<100x150xf64>, tensor<150x200xf64>) outs(%arg2 : tensor<100x200xf64>) {
            ^bb0(%in: f64, %in_0: f64, %out: f64):
              %1 = arith.mulf %in, %in_0 : f64
              %2 = arith.addf %out, %1 : f64
              linalg.yield %2 : f64
            } -> tensor<100x200xf64>
            return %0 : tensor<100x200xf64>
          }
          func.func @timing_wrapper(%arg0: tensor<100x150xf64>, %arg1: tensor<150x200xf64>, %arg2: tensor<100x200xf64>, %arg3: memref<10xi64>) attributes {llvm.emit_c_interface} {
            %c0 = arith.constant 0 : index
            %c10 = arith.constant 10 : index
            %c1 = arith.constant 1 : index
            scf.for %arg4 = %c0 to %c10 step %c1 {
              %0 = func.call @_mlir_ciface_nanoTime() : () -> i64
              %1 = func.call @matmul(%arg0, %arg1, %arg2) : (tensor<100x150xf64>, tensor<150x200xf64>, tensor<100x200xf64>) -> tensor<100x200xf64>
              %2 = func.call @_mlir_ciface_nanoTime() : () -> i64
              %3 = arith.subi %2, %0 : i64
              memref.store %3, %arg3[%arg4] : memref<10xi64>
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

        module = self.backend.compile(
            module,
            Pipeline().sparse_compiler(
                parallelization_strategy="dense-outer-loop",
                vl=16,
                reassociate_fp_reductions=True,
                enable_index_optimizations=True,
            ),
        )
        invoker = self.backend.load(module, opt_level=3)
        A = np.random.randint(low=0, high=10, size=(M, N)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(N, K)).astype(np.float32)
        C = np.zeros((M, K)).astype(np.float32)
        times = np.zeros(N_RUNS).astype(np.int64)
        invoker.timing_wrapper(A, B, C, times)
        print(times)
        print("avg time", times.mean() / 1e9)
