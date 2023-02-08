import ctypes

from loopy.loopy_mlir.runtime import get_ranked_memref_descriptor

from loopy.loopy_mlir.execution_engine import ExecutionEngine

from loopy.mlir.func import mlir_func
from loopy.mlir.refbackend import LLVMJITBackend
from loopy.utils import mlir_mod_ctx
from loopy.mlir.memref import MemRefValue as MemRef
from loopy.mlir import F64, Index, I32, F32
import numpy as np


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

A_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(A)))
B_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(B)))
C_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(C)))


execution_engine = ExecutionEngine(module)
execution_engine.invoke("matmul", A_ptr, B_ptr, C_ptr)
print(np.allclose(A @ B, C))
