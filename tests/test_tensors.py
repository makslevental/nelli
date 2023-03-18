import logging

logger = logging.getLogger(__name__)

import pytest

from pathlib import Path
from textwrap import dedent

from nelli.mlir._mlir.dialects.linalg import BinaryFn, TypeFn
from nelli.mlir._mlir.dialects import linalg
from nelli.mlir.utils import F32, allow_unregistered_dialects
from nelli.mlir.arith import constant
from nelli.mlir.tensor import (
    TensorValue as Tensor,
    pad,
    expand_shape,
    collapse_shape,
    extract_slice,
)
from nelli.mlir.func import mlir_func
from nelli.mlir.refbackend import LLVMJITBackend
from nelli.utils import mlir_mod_ctx, shlib_ext
from nelli.mlir.passes import Pipeline
from util import check_correct
from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir.ir import MLIRError

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

    def test_pad(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def pad_tensor_3_4(input_tensor: Tensor[(4, 16), F32], pad_value: F32):
                pad(input_tensor, [3, 4], [5, 3], pad_value)

        correct = dedent(
            """\
        module {
          func.func @pad_tensor_3_4(%arg0: tensor<4x16xf32>, %arg1: f32) {
            %padded = tensor.pad %arg0 low[3, 4] high[5, 3] {
            ^bb0(%arg2: index, %arg3: index):
              tensor.yield %arg1 : f32
            } : tensor<4x16xf32> to tensor<12x23xf32>
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_allow_unregistered_dialect(self, capfd):
        src = dedent(
            """\
        module {
          func.func @pad_tensor_3_4(%arg0: tensor<4x16xf32>, %arg1: f32) {
            %c0 = arith.constant 0 : index
            %c1 = arith.constant 1 : index
            %padded = tensor.pad %arg0 low[%c1, %c1] high[%c1, %c1] {
            ^bb0(%arg2: index, %arg3: index):
              tensor.yield %arg1 : f32
            } : tensor<4x16xf32> to tensor<?x?xf32>
            "test.use"(%padded) : (tensor<?x?xf32>) -> ()
            return
          }
        } 
        """
        )
        with pytest.raises(MLIRError) as exc_info:
            with mlir_mod_ctx(src) as module:
                print(module)

        assert exc_info.value.args[0] == "Unable to parse module assembly"

        out, err = capfd.readouterr()
        assert (
            exc_info.value.error_diagnostics[0].message
            == "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used"
        )
        assert str(exc_info.value.error_diagnostics[0].location) == 'loc("-":9:15)'
        with allow_unregistered_dialects(), mlir_mod_ctx(src) as module:
            print(module)

    def test_refine_unrefined_pad(self):
        src = dedent(
            """\
        module {
          func.func @pad_tensor_3_4(%arg0: tensor<4x16xf32>, %arg1: f32) {
            %c0 = arith.constant 0 : index
            %c1 = arith.constant 1 : index
            %padded = tensor.pad %arg0 low[%c1, %c1] high[%c1, %c1] {
            ^bb0(%arg2: index, %arg3: index):
              tensor.yield %arg1 : f32
            } : tensor<4x16xf32> to tensor<?x?xf32>
            "test.use"(%padded) : (tensor<?x?xf32>) -> ()
            return
          }
        } 
        """
        )
        with allow_unregistered_dialects(), mlir_mod_ctx(src) as module:
            pass

            module = self.backend.compile(
                module,
                Pipeline().FUNC().refbackend_generalize_tensor_pad().CNUF(),
            )
            correct = dedent(
                """\
            module {
              func.func @pad_tensor_3_4(%arg0: tensor<4x16xf32>, %arg1: f32) {
                %c1 = arith.constant 1 : index
                %padded = tensor.pad %arg0 low[%c1, %c1] high[%c1, %c1] {
                ^bb0(%arg2: index, %arg3: index):
                  tensor.yield %arg1 : f32
                } {refined} : tensor<4x16xf32> to tensor<6x18xf32>
                "test.use"(%padded) : (tensor<6x18xf32>) -> ()
                return
              }
            }
            """
            )
            check_correct(correct, module)

            module = self.backend.compile(
                module,
                Pipeline()
                .FUNC()
                .linalg_transform_patterns(generalize_pad_tensor=True)
                .CNUF(),
            )

            correct = dedent(
                """\
            module {
              func.func @pad_tensor_3_4(%arg0: tensor<4x16xf32>, %arg1: f32) {
                %c1 = arith.constant 1 : index
                %0 = tensor.empty() : tensor<6x18xf32>
                %1 = linalg.fill ins(%arg1 : f32) outs(%0 : tensor<6x18xf32>) -> tensor<6x18xf32>
                %inserted_slice = tensor.insert_slice %arg0 into %1[%c1, %c1] [4, 16] [1, 1] : tensor<4x16xf32> into tensor<6x18xf32>
                "test.use"(%inserted_slice) : (tensor<6x18xf32>) -> ()
                return
              }
            }
            """
            )

            check_correct(correct, module)

    def test_expand(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def expand(
                input: Tensor[(1, 9), F32],
            ):
                y = expand_shape(input, [[0, 1], [2, 3]], [1, 1, 3, 3])

        correct = dedent(
            """\
        module {
          func.func @expand(%arg0: tensor<1x9xf32>) {
            %expanded = tensor.expand_shape %arg0 [[0, 1], [2, 3]] : tensor<1x9xf32> into tensor<1x1x3x3xf32>
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_collapse(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def expand(
                input: Tensor[(1, 1, 3, 3), F32],
            ):
                y = collapse_shape(input, [[0, 1], [2, 3]], [1, 9])

        correct = dedent(
            """\
        module {
          func.func @expand(%arg0: tensor<1x1x3x3xf32>) {
            %collapsed = tensor.collapse_shape %arg0 [[0, 1], [2, 3]] : tensor<1x1x3x3xf32> into tensor<1x9xf32>
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_extract_slide(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def extract(
                input: Tensor[(16, 128), F32],
            ):
                y = extract_slice(input, [0, 0], [1, 4], [1, 1])

        print(module)
        correct = dedent(
            """\
        module {
          func.func @extract(%arg0: tensor<16x128xf32>) {
            %extracted_slice = tensor.extract_slice %arg0[0, 0] [1, 4] [1, 1] : tensor<16x128xf32> to tensor<1x4xf32>
            return
          }
        }
        """
        )
        check_correct(correct, module)
