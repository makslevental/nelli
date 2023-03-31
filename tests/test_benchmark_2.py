import ctypes
import platform
import re
from pathlib import Path
from textwrap import dedent

import numpy as np
import pytest

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir import runtime as rt
from nelli.mlir._mlir.dialects.linalg.opdsl import lang as dsl
from nelli.mlir._mlir.ir import Module
from nelli.mlir.benchmark import create_sparse_np_tensor
from nelli.mlir.func import declare, mlir_func
from nelli.mlir.gpu import host_register, host_unregister
from nelli.mlir.memref import (
    MemRefValue as MemRef,
    cast,
    UnrankedMemRefValue as UnrankedMemRef,
)
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.scf import scf_range
from nelli.mlir.transform import (
    sequence,
    pack_greedily,
    match_name,
    lower_pack,
    lower_unpack,
)
from nelli.mlir.utils import F32, I64
from nelli.poly.affine import ForOp
from nelli.utils import shlib_ext, mlir_mod_ctx, find_ops

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


@dsl.linalg_structured_op
def matmul_dsl(
    A=dsl.TensorDef(dsl.T, dsl.S.M, dsl.S.K),
    B=dsl.TensorDef(dsl.T, dsl.S.K, dsl.S.N),
    C=dsl.TensorDef(dsl.T, dsl.S.M, dsl.S.N, output=True),
):
    C[dsl.D.m, dsl.D.n] += A[dsl.D.m, dsl.D.k] * B[dsl.D.k, dsl.D.n]


def np_divisors(N):
    divs = np.arange(1, int(N ** 0.5) + 1)  # potential divisors up to √N
    divs = divs[N % divs == 0]  # divisors
    comp = N // divs[::-1]  # complement quotients
    return np.concatenate((divs, comp[divs[-1] == comp[0] :]))  # combined


class TestBenchmark:
    backend = LLVMJITBackend(shared_libs=shared_libs)

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

    @pytest.mark.xfail()
    def packed_matmul(self):
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

    @pytest.mark.xfail()
    def test_gpu_unroll(self):
        scale = 10
        M, N, K = 4 * scale, 16 * scale, 8 * scale
        N_RUNS = 100
        unranked_memref = UnrankedMemRef[F32]
        param1_type, param2_type, result_type = (
            MemRef[(M, N), F32],
            MemRef[(N, K), F32],
            MemRef[(M, K), F32],
        )
        with mlir_mod_ctx() as module:
            timer = declare("_mlir_ciface_nanoTime", [], result_annots=[I64])

            @mlir_func
            def matmul(
                A: param1_type,
                B: param2_type,
                C: result_type,
            ):
                for i in range(0, M):
                    for k in range(0, K):
                        for j in range(0, N):
                            a = A[i, j]
                            b = B[j, k]
                            C[i, k] += a * b

            @mlir_func(range_ctor=scf_range, attributes={"llvm.emit_c_interface": None})
            def timing_wrapper(
                x: param1_type,
                y: param2_type,
                z: result_type,
                times: MemRef[[N_RUNS], I64],
            ):
                xc = cast(x, unranked_memref.mlir_type)
                yc = cast(y, unranked_memref.mlir_type)
                zc = cast(z, unranked_memref.mlir_type)

                host_register(xc)
                host_register(yc)
                host_register(zc)

                for i in range(0, N_RUNS):
                    start = timer()
                    matmul(x, y, z)
                    end = timer()
                    times[i] = end - start

                host_unregister(xc)
                host_unregister(yc)
                host_unregister(zc)

        fors = find_ops(module, lambda op: op.name == "affine.for")
        assert len(fors) == 3
        for_op = ForOp(fors[2])
        div = 5
        for_op.unroll_by_factor(div, lambda *args: None)

        module = self.backend.compile(
            module,
            kernel_name="timing_wrapper",
            pipeline=Pipeline()
            .bufferize()
            .FUNC()
            .convert_affine_for_to_gpu(gpu_block_dims=1, gpu_thread_dims=1)
            .lower_affine()
            .convert_scf_to_cf()
            .cse()
            .CNUF()
            .gpu_kernel_outlining()
            .GPU()
            .strip_debuginfo()
            .convert_gpu_to_nvvm()
            .gpu_to_cubin(chip="sm_70")
            .UPG()
            .gpu_to_llvm(),
        )
        invoker = self.backend.load(module)
        A = np.random.randint(low=0, high=10, size=(M, N)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(N, K)).astype(np.float32)
        C = np.zeros((M, K)).astype(np.float32)
        times = np.zeros(N_RUNS).astype(np.int64)
        invoker.timing_wrapper(A, B, C, times)
        print(f"unroll_factor {div} avg time", times.mean() / 1e9)
