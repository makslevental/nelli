import platform
from pathlib import Path

import nevergrad as ng
import numpy as np

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir.func import declare, mlir_func
from nelli.mlir.gpu import host_register, host_unregister
from nelli.mlir.memref import (
    MemRefValue as MemRef,
    cast,
    UnrankedMemRefValue as UnrankedMemRef,
)
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.scf import scf_range, par_range
from nelli.mlir.utils import F32, I64
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

backend = LLVMJITBackend(shared_libs=shared_libs)

scale = 50
N, CI, HI, WI = 1, 3, 64 * scale, 64 * scale
K = 3
CO = 3
HO, WO = HI - (K + 1) // 2, WI - (K + 1) // 2
N_RUNS = 10
unranked_memref = UnrankedMemRef[F32]
input_type = MemRef[(N, CI, HI, WI), F32]
kernel_type = MemRef[(CO, CI, K, K), F32]
output_type = MemRef[(N, CO, HO, WO), F32]


def np_divisors(N):
    divs = np.arange(1, int(N**0.5) + 1)  # potential divisors up to √N
    divs = divs[N % divs == 0]  # divisors
    comp = N // divs[::-1]  # complement quotients
    return np.concatenate((divs, comp[divs[-1] == comp[0] :]))  # combined


def conv_unroll():
    with mlir_mod_ctx() as module:
        timer = declare("_mlir_ciface_nanoTime", [], result_annots=[I64])

        @mlir_func(range_ctor=scf_range)
        def conv2d_nchw_fchw(
            input: input_type,
            kernel: kernel_type,
            output: output_type,
        ):
            for n, co, ho, wo in par_range((0, 0, 0, 0), (N, CO, HO, WO)):
                for ci in range(0, CI):
                    for ki in range(0, K):
                        for kj in range(0, K):
                            ii = ho + ki
                            jj = wo + kj
                            inp = input[n, ci, ii, jj]
                            ker = kernel[co, ci, ki, kj]
                            output[n, co, ho, wo] += inp * ker

        @mlir_func(range_ctor=scf_range, attributes={"llvm.emit_c_interface": None})
        def timing_wrapper(
            x: input_type,
            y: kernel_type,
            z: output_type,
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
                conv2d_nchw_fchw(x, y, z)
                end = timer()
                times[i] = end - start

            host_unregister(xc)
            host_unregister(yc)
            host_unregister(zc)

    module_src = str(module)

    def paramed(n, co, ho, wo):
        with mlir_mod_ctx(module_src) as module:
            pass
        module = backend.compile(
            module,
            kernel_name="timing_wrapper",
            pipeline=Pipeline()
            .scf_parallel_loop_tiling(
                parallel_loop_tile_sizes=(n, co, ho, wo), no_min_max_bounds=True
            )
            .cse()
            .FUNC()
            .gpu_map_parallel_loops()
            .CNUF()
            .convert_parallel_loops_to_gpu()
            # .convert_scf_to_openmp()
            .FUNC()
            .lower_affine()
            .convert_scf_to_cf()
            .cse()
            .CNUF()
            .gpu_kernel_outlining()
            .GPU()
            .strip_debuginfo()
            .convert_gpu_to_nvvm()
            .gpu_to_cubin(chip="sm_75")
            .UPG()
            .gpu_to_llvm(),
        )

        invoker = backend.load(module)
        A = np.random.randint(low=0, high=10, size=input_type.mlir_type.shape).astype(
            np.float32
        )
        B = np.random.randint(low=0, high=10, size=kernel_type.mlir_type.shape).astype(
            np.float32
        )
        C = np.zeros(output_type.mlir_type.shape).astype(np.float32)
        times = np.zeros(N_RUNS).astype(np.int64)
        invoker.timing_wrapper(A, B, C, times)
        if np.count_nonzero(C) == 0:
            print("failed")
            return 100

        time = times.mean() / 1e9 / N_RUNS
        print(n, co, ho, wo, time)
        return time

    # for tile_sizes in itertools.product(
    #     *[np_divisors(N), np_divisors(CO), np_divisors(HO), np_divisors(WO)]
    # ):
    #     paramed(tile_sizes)

    parametrization = ng.p.Instrumentation(
        # # a log-distributed scalar between 0.001 and 1.0
        # learning_rate=ng.p.Log(lower=0.001, upper=1.0),
        # # an integer from 1 to 12
        # batch_size=ng.p.Scalar(lower=1, upper=12).set_integer_casting(),
        # # either "conv" or "fc"
        n=ng.p.Choice(np_divisors(N)),
        co=ng.p.Choice(np_divisors(CO)),
        ho=ng.p.Choice(np_divisors(HO)),
        wo=ng.p.Choice(np_divisors(WO)),
    )
    optimizer = ng.optimizers.NGOpt(parametrization=parametrization, budget=100)
    recommendation = optimizer.minimize(paramed)
    print(recommendation.kwargs)


conv_unroll()
