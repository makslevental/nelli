import ctypes
import re
from pathlib import Path
from textwrap import dedent

import numpy as np

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir import runtime as rt
from nelli.mlir._mlir.dialects.linalg.opdsl import lang as dsl
from nelli.mlir._mlir.ir import Module
from nelli.mlir.benchmark import create_sparse_np_tensor
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.transform import (
    sequence,
    pack_greedily,
    match_name,
    lower_pack,
    lower_unpack,
)
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

    N_RUNS = 1000
    M, N, K = 100, 150, 200
    generic = dedent(
        f"""\
    #map = affine_map<(d0, d1, d2) -> (d1, d0)>
    #map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
    #map2 = affine_map<(d0, d1, d2) -> (d1, d2)>
    module {{
      func.func private @_mlir_ciface_nanoTime() -> i64
      func.func @matmul(%arg0: tensor<100x150xf64>, %arg1: tensor<150x200xf64>, %arg2: tensor<100x200xf64>) -> tensor<100x200xf64> {{
        %0 = linalg.generic {{indexing_maps = [#map, #map1, #map2], iterator_types = ["reduction", "parallel", "parallel"]}} ins(%arg0, %arg1 : tensor<100x150xf64>, tensor<150x200xf64>) outs(%arg2 : tensor<100x200xf64>) {{
        ^bb0(%in: f64, %in_0: f64, %out: f64):
          %1 = arith.mulf %in, %in_0 : f64
          %2 = arith.addf %out, %1 : f64
          linalg.yield %2 : f64
        }} -> tensor<100x200xf64>
        return %0 : tensor<100x200xf64>
      }}
      func.func @timing_wrapper(%arg0: tensor<100x150xf64>, %arg1: tensor<150x200xf64>, %arg2: tensor<100x200xf64>, %arg3: memref<{N_RUNS}xi64>) attributes {{llvm.emit_c_interface}} {{
        %c0 = arith.constant 0 : index
        %c10 = arith.constant {N_RUNS} : index
        %c1 = arith.constant 1 : index
        scf.for %arg4 = %c0 to %c10 step %c1 {{
          %0 = func.call @_mlir_ciface_nanoTime() : () -> i64
          %1 = func.call @matmul(%arg0, %arg1, %arg2) : (tensor<100x150xf64>, tensor<150x200xf64>, tensor<100x200xf64>) -> tensor<100x200xf64>
          %2 = func.call @_mlir_ciface_nanoTime() : () -> i64
          %3 = arith.subi %2, %0 : i64
          memref.store %3, %arg3[%arg4] : memref<{N_RUNS}xi64>
        }}
        return
      }}
    }}
    """
    )
    matmul = dedent(
        f"""\
    module {{
      func.func private @_mlir_ciface_nanoTime() -> i64
      func.func @matmul(%arg0: tensor<100x150xf64>, %arg1: tensor<150x200xf64>, %arg2: tensor<100x200xf64>) -> tensor<100x200xf64> {{
        %0 = linalg.matmul {{cast = #linalg.type_fn<cast_signed>}} ins(%arg0, %arg1 : tensor<100x150xf64>, tensor<150x200xf64>) outs(%arg2 : tensor<100x200xf64>) -> tensor<100x200xf64>
        return %0 : tensor<100x200xf64>
      }}
      func.func @timing_wrapper(%arg0: tensor<100x150xf64>, %arg1: tensor<150x200xf64>, %arg2: tensor<100x200xf64>, %arg3: memref<{N_RUNS}xi64>) attributes {{llvm.emit_c_interface}} {{
        %c0 = arith.constant 0 : index
        %c10 = arith.constant {N_RUNS} : index
        %c1 = arith.constant 1 : index
        scf.for %arg4 = %c0 to %c10 step %c1 {{
          %0 = func.call @_mlir_ciface_nanoTime() : () -> i64
          %1 = func.call @matmul(%arg0, %arg1, %arg2) : (tensor<100x150xf64>, tensor<150x200xf64>, tensor<100x200xf64>) -> tensor<100x200xf64>
          %2 = func.call @_mlir_ciface_nanoTime() : () -> i64
          %3 = arith.subi %2, %0 : i64
          memref.store %3, %arg3[%arg4] : memref<{N_RUNS}xi64>
        }}
        return
      }}
    }}
    """
    )

    def test_baseline_generic(self):
        A = np.random.randint(low=0, high=10, size=(self.M, self.N)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(self.N, self.K)).astype(np.float32)

        print()
        module = self.backend.compile(
            Module.parse(self.generic),
            Pipeline().sparse_compiler(),
        )
        invoker = self.backend.load(module, opt_level=3)
        C = np.zeros((self.M, self.K)).astype(np.float32)
        times = np.zeros(self.N_RUNS).astype(np.int64)
        invoker.timing_wrapper(A, B, C, times)
        print("avg time", times.mean() / 1e9)

    def test_baseline_matmul(self):
        A = np.random.randint(low=0, high=10, size=(self.M, self.N)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(self.N, self.K)).astype(np.float32)

        print()
        module = self.backend.compile(
            Module.parse(self.matmul),
            Pipeline().sparse_compiler(),
        )
        invoker = self.backend.load(module, opt_level=3)
        C = np.zeros((self.M, self.K)).astype(np.float32)
        times = np.zeros(self.N_RUNS).astype(np.int64)
        invoker.timing_wrapper(A, B, C, times)
        print("avg time", times.mean() / 1e9)

    def test_packed_matmul(self):
        A = np.random.randint(low=0, high=10, size=(self.M, self.N)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(self.N, self.K)).astype(np.float32)
        with mlir_mod_ctx(self.matmul) as module:

            @sequence
            def basic(target, *extra_args):
                m = match_name(target, "linalg.matmul")
                packed = pack_greedily(
                    m, gemm_packed_sizes=[8, 16, 32], gemm_inner_dims_order=[1, 2, 0]
                )
                m = match_name(target, "tensor.pack")
                lowered = lower_pack(m)
                m = match_name(target, "tensor.unpack")
                lowered = lower_unpack(m)

        module = self.backend.compile(
            module,
            Pipeline()
            .transform_dialect_interpreter()
            .FUNC()
            .empty_tensor_to_alloc_tensor()
            .tensor_bufferize()
            .CNUF()
            .transform_dialect_interpreter()
            .transform_dialect_erase_schedule()
            .bufferize()
            .sparse_compiler(),
            # enable_ir_printing=True
        )
        invoker = self.backend.load(module, opt_level=3)
        C = np.zeros((self.M, self.K)).astype(np.float32)
        times = np.zeros(self.N_RUNS).astype(np.int64)
        invoker.timing_wrapper(A, B, C, times)
        print("avg time", times.mean() / 1e9)
