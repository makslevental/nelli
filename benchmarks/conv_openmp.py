import time
from pathlib import Path

import matplotlib.pyplot as plt
import nevergrad as ng
import numpy as np

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir.arith import cast_to_integer
from nelli.mlir.func import mlir_func
from nelli.mlir.memref import (
    MemRefValue as MemRef,
    UnrankedMemRefValue as UnrankedMemRef,
)
from nelli.mlir.omp.omp import parallel, ws_loop
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.scf import scf_for
from nelli.mlir.transform import sequence, match, get_parent_for_loop, unroll
from nelli.mlir.utils import F32, Index
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

omp_lib_path = Path(_mlir_libs.__file__).parent / f"libomp.{shlib_ext()}"
assert omp_lib_path.exists()

shared_libs = [
    str(vulkan_wrapper_library_path),
    str(runner_utils_lib_path),
    str(c_runner_utils_lib_path),
    str(omp_lib_path),
]

backend = LLVMJITBackend(shared_libs=shared_libs)

scale = 50
N, CI, HI, WI = 1, 3, 64 * scale, 64 * scale
K = 3
CO = 3
HO, WO = HI - (K + 1) // 2, WI - (K + 1) // 2
N_RUNS = 10
unranked_memref = UnrankedMemRef[F32]
input_type = MemRef[(HI, WI), F32]
kernel_type = MemRef[(K, K), F32]
output_type = MemRef[(HO, WO), F32]


def np_divisors(N):
    divs = np.arange(1, int(N ** 0.5) + 1)  # potential divisors up to √N
    divs = divs[N % divs == 0]  # divisors
    comp = N // divs[::-1]  # complement quotients
    return np.concatenate((divs, comp[divs[-1] == comp[0] :]))  # combined


def conv_unroll():
    def paramed(inner_unroll, outer_unroll):
        with mlir_mod_ctx() as module:

            @mlir_func(range_ctor=scf_for, rewrite_bytecode_=False, rewrite_ast_=True)
            def conv2d(
                input: input_type,
                kernel: kernel_type,
                output: output_type,
            ):
                with parallel(num_threads=20):
                    for ho, wo in ws_loop((0, 0), (HO, WO)):
                        ho = cast_to_integer(Index, ho)
                        wo = cast_to_integer(Index, wo)
                        for ki in scf_for(0, K):
                            for kj in scf_for(0, K):
                                ii = ho + ki
                                jj = wo + kj
                                inp = input[ii, jj]
                                ker = kernel[ki, kj]
                                output[ho, wo] += inp * ker

            @sequence
            def inner_loop(target, *extra_args):
                m = match(target, ["arith.addi"])
                loop = get_parent_for_loop(m)
                unroll(loop, inner_unroll)

            @sequence
            def outer_loop(target, *extra_args):
                loop = match(target, ["scf.for"])
                unroll(loop, outer_unroll)

        module = backend.compile(
            module,
            kernel_name="conv2d",
            pipeline=Pipeline()
            .cse()
            .transform_dialect_interpreter(debug_transform_root_tag="inner_loop")
            .transform_dialect_interpreter(debug_transform_root_tag="outer_loop")
            .transform_dialect_erase_schedule()
            .lower_to_openmp()
            .lower_to_llvm(),
        )

        invoker = backend.load(module)
        A = np.random.randint(low=0, high=10, size=input_type.mlir_type.shape).astype(
            np.float32
        )
        B = np.random.randint(low=0, high=10, size=kernel_type.mlir_type.shape).astype(
            np.float32
        )
        C = np.zeros(output_type.mlir_type.shape).astype(np.float32)
        times = []
        for i in range(N_RUNS):
            start = time.monotonic_ns()
            invoker.conv2d(A, B, C)
            times.append(time.monotonic_ns() - start)
        return np.array(times).mean() / 1e9

    print("baseline_1_1", paramed(1, 1))

    parametrization = ng.p.Instrumentation(
        inner_unroll=ng.p.Choice(np_divisors(K)),
        outer_unroll=ng.p.Choice(np_divisors(K)),
    )
    optimizer = ng.optimizers.NGOpt(parametrization=parametrization, budget=100)
    recommendation = optimizer.minimize(paramed)
    print(
        "best",
        paramed(**recommendation.kwargs),
        recommendation.loss,
        recommendation.kwargs,
    )


def plot_hill(results):
    z = [z for _, z in results]
    plt.plot(list(range(len(z))), sorted(z, reverse=True))
    plt.yscale("log")
    plt.show()


conv_unroll()
