import ctypes

from loopy import DefaultContext
from loopy.loopy_mlir.ir import _stringAttr

from loopy.loopy_mlir.runtime import get_ranked_memref_descriptor

from loopy.loopy_mlir.execution_engine import ExecutionEngine
from loopy.mlir.arith import constant

from loopy.mlir.func import mlir_func
from loopy.mlir.refbackend import LLVMJITBackend
from loopy.poly.affine import ForOp
from loopy.utils import mlir_mod_ctx, find_ops
from loopy.mlir.memref import AffineMemRefValue as MemRef
from loopy.mlir import F64, Index, I32, F32
import numpy as np


def skewing():
    with mlir_mod_ctx() as module:

        @mlir_func
        def matmul(
            A: MemRef[16, 16, F32],
            B: MemRef[16, 16, F32],
            C: MemRef[16, 16, F32],
        ):
            D = MemRef.alloca([32, 32], F32)
            E = MemRef.alloca([32, 32], F32)
            for i in range(0, 16):
                for j in range(0, 16):
                    for k in range(0, 16):
                        a = A[i, k]
                        b = B[k, j]
                        C[i, j] += a * b
                        d = D[1, 1]
                        e = E[1, 1]
                        f = d + e

    print(module)

    for_ops = find_ops(module, lambda o: o.name == "affine.for")
    assert len(for_ops) == 3
    for_op = ForOp(for_ops[2])
    shifts = [1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4]
    for_op.skew(shifts)
    # module.operation.print(assume_verified=True, print_generic_op_form=True)
    print(module)

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
    c = A @ B
    # print(c, C)
    assert np.allclose(c, C)


def unroll():
    with mlir_mod_ctx() as module:

        @mlir_func(rewrite_ast_=True)
        def single_loop(M: Index, N: Index):
            two = constant(1.0)
            mem = MemRef.alloca([10, 10], F64)
            for i in range(1, 10, 1):
                v = mem[i, 0]
                w = v * two
                mem[i, 0] = w

    fors = find_ops(module, lambda op: op.name == "affine.for")
    assert len(fors) == 1
    for_op = ForOp(fors[0])

    def annotator(unroll_iteration, op):
        return "annot_attr", _stringAttr("wtfbbq", context=DefaultContext)

    for_op.unroll_by_factor(5, annotator)
    print(module)


skewing()
unroll()

# affineForOpBodySkew
# DecomposeShapeIterator
# permuteLoops
# interchangeLoops
# /home/mlevental/dev_projects/llvm/mlir/include/mlir/Dialect/Affine/LoopUtils.h
# LoopPeel.cpp
# LoopRotationUtils.cpp
# LoopSimplify.cpp
# LoopUnroll.cpp
# LoopUnrollAndJam.cpp
# LoopUnrollRuntime.cpp
# LoopUtils.cpp
# https://people.csail.mit.edu/baghdadi/public/papers/poly-scheduling-impact.pdf
