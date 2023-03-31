import io
import platform
import warnings
from functools import partial
from pathlib import Path

import nevergrad as ng
import numpy as np
from wurlitzer import pipes, STDOUT

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir.ir import Context, Location, Module, InsertionPoint
from nelli.mlir.func import declare, mlir_func
from nelli.mlir.memref import (
    MemRefValue as MemRef,
    UnrankedMemRefValue as UnrankedMemRef,
)
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.mlir.scf import scf_for, parallel
from nelli.mlir.transform import sequence, match, unroll, get_parent_for_loop
from nelli.mlir.utils import F32, I64
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
input_type = MemRef[(N, CI, HI, WI), F32]
kernel_type = MemRef[(CO, CI, K, K), F32]
output_type = MemRef[(N, CO, HO, WO), F32]


def conv_base():
    with mlir_mod_ctx() as module:
        timer = declare("_mlir_ciface_nanoTime", [], result_annots=[I64])

        @mlir_func(range_ctor=scf_for)
        def conv2d_nchw_fchw(
            input: input_type,
            kernel: kernel_type,
            output: output_type,
        ):
            for n, co, ho, wo in parallel((0, 0, 0, 0), (N, CO, HO, WO)):
                for ki in range(0, K):
                    for ci in range(0, CI):
                        for kj in range(0, K):
                            ii = ho + ki
                            jj = wo + kj
                            inp = input[n, ci, ii, jj]
                            ker = kernel[co, ci, ki, kj]
                            output[n, co, ho, wo] += inp * ker

        @mlir_func(range_ctor=scf_for, attributes={"llvm.emit_c_interface": None})
        def timing_wrapper(
            x: input_type,
            y: kernel_type,
            z: output_type,
            times: MemRef[[N_RUNS], I64],
        ):

            for i in range(0, N_RUNS):
                start = timer()
                conv2d_nchw_fchw(x, y, z)
                end = timer()
                times[i] = end - start

    module = backend.compile(module, Pipeline().canonicalize().cse())

    return str(module)


def baseline(module_src):
    with Context() as ctx, Location.unknown(ctx):
        module = Module.parse(module_src)

    module = backend.compile(
        module,
        kernel_name="timing_wrapper",
        pipeline=Pipeline()
        .cse()
        .convert_scf_to_openmp()
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
    times = np.zeros(N_RUNS).astype(np.int64)

    out = io.StringIO()
    with pipes(stdout=out, stderr=STDOUT):
        invoker.timing_wrapper(A, B, C, times)

    time = times[1:].mean() / 1e9
    print(
        ",".join(map(str, ("\n", "baseline", time))),
        flush=True,
    )


def unroll_and_run(inner_unroll, module_src):
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
            kernel_name="timing_wrapper",
            pipeline=Pipeline()
            .cse()
            .convert_scf_to_openmp()
            .transform_dialect_interpreter(debug_transform_root_tag="inner_loop")
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
        times = np.zeros(N_RUNS).astype(np.int64)

        out = io.StringIO()
        with pipes(stdout=out, stderr=STDOUT):
            invoker.timing_wrapper(A, B, C, times)

        time = times[1:].mean() / 1e9
        print(
            ",".join(map(str, ("\n", inner_unroll, time))),
            flush=True,
        )

        return time
    except Exception as e:
        # print(e)
        return 1e9


def optimize(module_src):
    parametrization = ng.p.Instrumentation(
        inner_unroll=ng.p.Choice(np_divisors(K)),
    )
    optimizer = ng.optimizers.NGOpt(
        parametrization=parametrization, budget=100, num_workers=1
    )
    recommendation = optimizer.minimize(
        partial(unroll_and_run, module_src=module_src),
        batch_mode=False,
    )


def main():
    module_src = conv_base()
    baseline(module_src)
    optimize(module_src)


if __name__ == "__main__":
    main()
