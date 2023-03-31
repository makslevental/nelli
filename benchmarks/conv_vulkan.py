from io import StringIO
from pathlib import Path

import matplotlib.pyplot as plt
import nevergrad as ng
import numpy as np
from wurlitzer import pipes, STDOUT

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir.func import mlir_func
from nelli.mlir.memref import (
    MemRefValue as MemRef,
    UnrankedMemRefValue as UnrankedMemRef,
)
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.scf import scf_for, parallel
from nelli.mlir.utils import F32
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

backend = LLVMJITBackend(shared_libs=shared_libs)

scale = 50
N, CI, HI, WI = 1, 3, 64 * scale, 64 * scale
K = 3
CO = 3
HO, WO = HI - (K + 1) // 2, WI - (K + 1) // 2
N_RUNS = 1
unranked_memref = UnrankedMemRef[F32]
input_type = MemRef[(HI, WI), F32]
kernel_type = MemRef[(K, K), F32]
output_type = MemRef[(HO, WO), F32]


def np_divisors(N):
    divs = np.arange(1, int(N**0.5) + 1)  # potential divisors up to √N
    divs = divs[N % divs == 0]  # divisors
    comp = N // divs[::-1]  # complement quotients
    return np.concatenate((divs, comp[divs[-1] == comp[0] :]))  # combined


def conv_unroll():
    with mlir_mod_ctx() as module:
        # timer = declare("_mlir_ciface_nanoTime", [], result_annots=[I64])

        @mlir_func(range_ctor=scf_for)
        def conv2d(
            input: input_type,
            kernel: kernel_type,
            output: output_type,
        ):
            for ho, wo in parallel((0, 0), (HO, WO)):
                for ki in range(0, K):
                    for kj in range(0, K):
                        ii = ho + ki
                        jj = wo + kj
                        inp = input[ii, jj]
                        ker = kernel[ki, kj]
                        output[ho, wo] += inp * ker

    module_src = str(module)
    results = []

    def paramed(ho, wo):
        with mlir_mod_ctx(module_src) as module:
            pass
        module = backend.compile(
            module,
            kernel_name="conv2d",
            pipeline=Pipeline()
            .FUNC()
            .scf_parallel_loop_tiling(
                parallel_loop_tile_sizes=(ho, wo), no_min_max_bounds=True
            )
            .gpu_map_parallel_loops()
            .convert_parallel_loops_to_gpu()
            .canonicalize()
            .lower_affine()
            .CNUF()
            .gpu_launch_sink_index_computations()
            .gpu_kernel_outlining()
            .fold_memref_alias_ops()
            .canonicalize()
            ##########
            .set_spirv_capabilities(client_api="vulkan")
            .GPU()
            .set_spirv_abi_attrs()
            .UPG()
            ##########
            # .nelli_map_memref_spirv_storage_class(client_api="vulkan")
            .convert_gpux_to_spirv(map_memory_space=True).canonicalize()
            ##########
            .SPIRV().spirv_lower_abi_attrs().spirv_update_vce().VRIPS()
            ##########
            .convert_gpu_launch_to_vulkan_launch()
            .finalize_memref_to_llvm()
            .FUNC()
            .llvm_request_c_wrappers()
            .CNUF()
            .convert_func_to_llvm(index_bitwidth=64)
            .reconcile_unrealized_casts()
            .launch_func_to_vulkan(),
            enable_ir_printing=False,
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
            out = StringIO()
            with pipes(stdout=out, stderr=STDOUT):
                invoker.conv2d(A, B, C)
            time = out.getvalue().split()[4]
            assert time[-2:] == "us"
            time = float(time[:-2])
            times.append(time)
        times = np.array(times)
        time = times.mean() / 1e6
        results.append(((ho, wo), time))
        return time

    print("baseline_0_0", paramed(0, 0))
    print("baseline_1_1", paramed(1, 1))

    parametrization = ng.p.Instrumentation(
        ho=ng.p.Choice(np_divisors(HO)),
        wo=ng.p.Choice(np_divisors(WO)),
    )
    optimizer = ng.optimizers.NGOpt(parametrization=parametrization, budget=100)
    recommendation = optimizer.minimize(paramed)
    print(
        "best",
        paramed(**recommendation.kwargs),
        recommendation.loss,
        recommendation.kwargs,
    )
    print(results)

    return results


def plot_hill(results):
    z = [z for _, z in results]
    plt.plot(list(range(len(z))), sorted(z, reverse=True))
    plt.yscale("log")
    plt.show()


results = conv_unroll()
plot_hill(results)
