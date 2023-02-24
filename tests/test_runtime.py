import ctypes
from pathlib import Path
from textwrap import dedent

import numpy as np

from nelli import F32
from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir.runtime import get_unranked_memref_descriptor
from nelli.mlir.affine import (
    UnrankedAffineMemRefValue as UnrankedMemRef,
    RankedAffineMemRefValue as MemRef,
)
from nelli.mlir.func import mlir_func, declare
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.utils import mlir_mod_ctx, shlib_ext
from util import check_correct

c_runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_c_runner_utils.{shlib_ext()}"
)
assert c_runner_utils_lib_path.exists()
runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_runner_utils.{shlib_ext()}"
)
assert runner_utils_lib_path.exists()


class TestRuntime:
    backend = LLVMJITBackend(
        shared_libs=[str(c_runner_utils_lib_path), str(runner_utils_lib_path)]
    )

    def test_runtime(self):

        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                A: MemRef[(16, 16), F32],
                B: MemRef[(16, 16), F32],
                C: MemRef[(16, 16), F32],
            ):
                for i in range(0, 16):
                    for j in range(0, 16):
                        for k in range(0, 16):
                            C[i, j] += A[i, k] * B[k, j]

        backend = LLVMJITBackend()
        module = backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline()
            .bufferize()
            .FUNC()
            .convert_linalg_to_loops()
            .CNUF()
            .lower_to_llvm(),
        )

        A = np.random.randint(low=0, high=10, size=(16, 16)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(16, 16)).astype(np.float32)
        C = np.zeros_like(B).astype(np.float32)
        self.backend.load(module).matmul(A, B, C)
        assert np.allclose(A @ B, C)

    def test_func_declare_call(self, capfd):

        with mlir_mod_ctx() as module:
            print_memref_32 = declare("printMemrefF32", [UnrankedMemRef[F32]])

            @mlir_func
            def matmul(A: UnrankedMemRef[F32]):
                print_memref_32(A)
                return

        backend = LLVMJITBackend()
        module = backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline().bufferize().lower_to_llvm(),
        )

        A = np.ones((4, 4)).astype(np.float32)
        AA = ctypes.pointer(ctypes.pointer(get_unranked_memref_descriptor(A)))
        self.backend.load(module).matmul(AA)
        correct = dedent(
            """\
        Unranked Memref base@ = 0x600003a18000 rank = 2 offset = 0 sizes = [4, 4] strides = [4, 1] data = 
        [[1,   1,   1,   1], 
         [1,   1,   1,   1], 
         [1,   1,   1,   1], 
         [1,   1,   1,   1]]
        """
        )
        out, err = capfd.readouterr()
        check_correct(correct, out)
