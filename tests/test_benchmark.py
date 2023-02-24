import ctypes
import re
import time
from pathlib import Path

import numpy as np

from nelli import F64
from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir import runtime as rt
from nelli.mlir._mlir.dialects.linalg.opdsl import lang as dsl
from nelli.mlir._mlir.execution_engine import ExecutionEngine
from nelli.mlir.benchmark import create_sparse_np_tensor, wrap
from nelli.mlir.func import mlir_func
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.tensor import TensorValue as Tensor
from nelli.utils import shlib_ext, mlir_mod_ctx

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
