from loopy.loopy_mlir.dialects import tensor, func
from loopy.loopy_mlir.ir import RankedTensorType
from loopy.loopy_mlir.dialects.linalg import (
    TV,
    linalg_structured_op,
    TensorDef,
    T,
    S,
    domain,
    D,
)
from loopy.mlir import F32
from loopy.utils import mlir_mod_ctx

T1 = TV.T1
T2 = TV.T2


@linalg_structured_op
def matmul_mono(
    A=TensorDef(T, S.M, S.K),
    B=TensorDef(T, S.K, S.N),
    C=TensorDef(T, S.M, S.N, output=True),
):
    domain(D.m, D.n, D.k)
    C[D.m, D.n] += A[D.m, D.k] * B[D.k, D.n]


with mlir_mod_ctx() as module:

    @func.FuncOp.from_py_func(
        RankedTensorType.get((4, 16), F32), RankedTensorType.get((16, 8), F32)
    )
    def matmul_mono(lhs, rhs):
        init_result = tensor.EmptyOp([4, 8], F32)
        return matmul_mono(lhs, rhs, outs=[init_result.result])

    print(module)
