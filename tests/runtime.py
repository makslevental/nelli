import numpy as np

from nelli import F32
from nelli.mlir.affine import AffineMemRefValue as MemRef
from nelli.mlir.func import mlir_func
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.utils import mlir_mod_ctx


class TestRuntime:
    backend = LLVMJITBackend()

    def test_runtime(self):

        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                A: MemRef[16, 16, F32],
                B: MemRef[16, 16, F32],
                C: MemRef[16, 16, F32],
            ):
                for i in range(0, 16):
                    for j in range(0, 16):
                        for k in range(0, 16):
                            C[i, j] += A[i, k] * B[k, j]

        backend = LLVMJITBackend()
        module = backend.compile(module, kernel_name="matmul")

        A = np.random.randint(low=0, high=10, size=(16, 16)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(16, 16)).astype(np.float32)
        C = np.zeros_like(B).astype(np.float32)
        self.backend.load(module).matmul(A, B, C)
        assert np.allclose(A @ B, C)
