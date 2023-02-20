import logging

logger = logging.getLogger(__name__)

from pathlib import Path
from textwrap import dedent

from nelli.mlir._mlir.dialects.linalg import BinaryFn, TypeFn
from nelli.mlir._mlir.dialects import linalg
from nelli import F32
from nelli.mlir.arith import constant
from nelli.mlir.tensor import TensorValue as Tensor
from nelli.mlir.func import mlir_func
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.utils import mlir_mod_ctx, shlib_ext
from util import check_correct

from nelli.mlir._mlir import _mlir_libs

omp_lib_path = Path(_mlir_libs.__file__).parent / f"libomp.{shlib_ext()}"
assert omp_lib_path.exists()


class TestTensor:
    backend = LLVMJITBackend(shared_libs=[str(omp_lib_path)])

    def test_pass_an_op_directly(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def pass_an_op_directly(
                arg0: Tensor[(4, 16), F32], arg1: Tensor[(16, 8), F32]
            ):
                one = constant(1.0, type=F32)
                lhs = linalg.fill(one, outs=[arg0])
                rhs = linalg.fill(one, outs=[arg1])
                init = Tensor.empty((4, 8), F32)
                return linalg.matmul(lhs, rhs, outs=[init])

        correct = dedent(
            """\
        module {
          func.func @pass_an_op_directly(%arg0: tensor<4x16xf32>, %arg1: tensor<16x8xf32>) -> tensor<4x8xf32> {
            %cst = arith.constant 1.000000e+00 : f32
            %0 = linalg.fill ins(%cst : f32) outs(%arg0 : tensor<4x16xf32>) -> tensor<4x16xf32>
            %1 = linalg.fill ins(%cst : f32) outs(%arg1 : tensor<16x8xf32>) -> tensor<16x8xf32>
            %2 = tensor.empty() : tensor<4x8xf32>
            %3 = linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%0, %1 : tensor<4x16xf32>, tensor<16x8xf32>) outs(%2 : tensor<4x8xf32>) -> tensor<4x8xf32>
            return %3 : tensor<4x8xf32>
          }
        }
        """
        )
        check_correct(correct, module)

    def test_named_structured_op_custom_form(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def named_form(lhs: Tensor[(4, 8), F32], rhs: Tensor[(4, 8), F32]):
                init_result = Tensor.empty([4, 8], F32)
                unary_result = linalg.elemwise_unary(lhs, outs=[init_result])
                binary_result = linalg.elemwise_binary(
                    lhs,
                    rhs,
                    outs=[init_result],
                    fun=BinaryFn.mul,
                    cast=TypeFn.cast_unsigned,
                )
                return unary_result, binary_result

        correct = dedent(
            """\
        module {
          func.func @named_form(%arg0: tensor<4x8xf32>, %arg1: tensor<4x8xf32>) -> (tensor<4x8xf32>, tensor<4x8xf32>) {
            %0 = tensor.empty() : tensor<4x8xf32>
            %1 = linalg.elemwise_unary {cast = #linalg.type_fn<cast_signed>, fun = #linalg.unary_fn<exp>} ins(%arg0 : tensor<4x8xf32>) outs(%0 : tensor<4x8xf32>) -> tensor<4x8xf32>
            %2 = linalg.elemwise_binary {cast = #linalg.type_fn<cast_unsigned>, fun = #linalg.binary_fn<mul>} ins(%arg0, %arg1 : tensor<4x8xf32>, tensor<4x8xf32>) outs(%0 : tensor<4x8xf32>) -> tensor<4x8xf32>
            return %1, %2 : tensor<4x8xf32>, tensor<4x8xf32>
          }
        }
        """
        )
        check_correct(correct, module)
