import warnings
from concurrent import futures
from functools import partial
from io import StringIO
from pathlib import Path

import nevergrad as ng
import numpy as np
from wurlitzer import pipes, STDOUT

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir.func import mlir_func
from nelli.mlir.memref import (
    MemRefValue as MemRef,
    UnrankedMemRefValue as UnrankedMemRef,
)
from nelli.mlir._mlir.ir import Context, Location, Module, InsertionPoint
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.scf import scf_for, parallel
from nelli.mlir.transform import sequence, match, get_parent_for_loop, unroll
from nelli.mlir.utils import F32
from nelli.utils import shlib_ext, mlir_mod_ctx
from util import np_divisors

warnings.filterwarnings("ignore")

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

scale = 20
N, CI, HI, WI = 1, 1, 64 * scale, 64 * scale
K = 3
CO = 3
HO, WO = HI - (K - 1), WI - (K - 1)
N_RUNS = 10

unranked_memref = UnrankedMemRef[F32]
input_type = MemRef[(CI, HI, WI), F32]
kernel_type = MemRef[(CO, K, K), F32]
output_type = MemRef[(CO, HO, WO), F32]


def conv_base():
    with mlir_mod_ctx() as module:

        @mlir_func(range_ctor=scf_for)
        def conv2d(
            input: input_type,
            kernel: kernel_type,
            output: output_type,
        ):
            for co, ho, wo in parallel((0, 0, 0), (CO, HO, WO)):
                for ki in range(0, K):
                    for kj in range(0, K):
                        ii = ho + ki
                        jj = wo + kj
                        inp = input[co, ii, jj]
                        ker = kernel[co, ki, kj]
                        output[co, ho, wo] += inp * ker

    return str(module)


def baseline(module_src):
    with Context() as ctx, Location.unknown(ctx):
        module = Module.parse(module_src)

    module = backend.compile(
        module,
        kernel_name="conv2d",
        pipeline=Pipeline()
        .FUNC()
        .gpu_map_parallel_loops()
        .convert_parallel_loops_to_gpu()
        .canonicalize()
        .lower_affine()
        .CNUF()
        .cse()
        .gpu_launch_sink_index_computations()
        .gpu_kernel_outlining()
        .fold_memref_alias_ops()
        .canonicalize()
        ##########
        .set_spirv_capabilities(client_api="vulkan").GPU().set_spirv_abi_attrs().UPG()
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
    times = np.array(times[1:])
    time = times.mean() / 1e6
    print(
        ",".join(map(str, ("\n", "baseline", time))),
        flush=True,
    )


def tile_and_run(co, ho, wo, inner_unroll, module_src):

    try:
        with Context() as ctx, Location.unknown(ctx):
            module = Module.parse(module_src)
            with InsertionPoint(module.body):

                @sequence
                def inner_loop(target, *extra_args):
                    m = match(target, ["memref.load"])
                    loop = get_parent_for_loop(m)
                    unroll(loop, inner_unroll)

        module = backend.compile(
            module,
            kernel_name="conv2d",
            pipeline=Pipeline()
            .FUNC()
            .scf_parallel_loop_tiling(
                parallel_loop_tile_sizes=(co, ho, wo), no_min_max_bounds=True
            )
            .gpu_map_parallel_loops()
            .convert_parallel_loops_to_gpu()
            .canonicalize()
            .lower_affine()
            .CNUF(),
        )
        module = backend.compile(
            module,
            kernel_name="conv2d",
            pipeline=Pipeline()
            .transform_dialect_interpreter(debug_transform_root_tag="inner_loop")
            .transform_dialect_erase_schedule()
            .canonicalize()
            .cse()
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
        times = np.array(times[1:])
        time = times.mean() / 1e6
        print(
            ",".join(map(str, ("\n", co, ho, wo, inner_unroll, time))),
            flush=True,
        )
        return time
    except Exception as e:
        # print(e)
        return 1e6


def optimize(module_src):
    parametrization = ng.p.Instrumentation(
        co=ng.p.Choice(np_divisors(CO)),
        ho=ng.p.Choice(np_divisors(HO)),
        wo=ng.p.Choice(np_divisors(WO)),
        inner_unroll=ng.p.Choice(np_divisors(K)),
    )
    optimizer = ng.optimizers.NGOpt(
        parametrization=parametrization, budget=100, num_workers=1
    )
    recommendation = optimizer.minimize(
        partial(tile_and_run, module_src=module_src),
        batch_mode=False,
    )


def main():
    module_src = conv_base()
    baseline(module_src)
    optimize(module_src)


if __name__ == "__main__":
    main()
