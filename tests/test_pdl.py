from textwrap import dedent

from nelli import allow_unregistered_dialects
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import (
    LLVMJITBackend,
)
from nelli.utils import mlir_mod_ctx
from util import check_correct


class TestPDL:
    backend = LLVMJITBackend(shared_libs=[])

    def test_basic(self):
        src = dedent(
            """\
        module @patterns {
          pdl.pattern : benefit(1) {
            %in_type = pdl.type
            %out_type = pdl.type
            %lhs = pdl.operand : %in_type
            %rhs = pdl.operand : %in_type
            %op0 = pdl.operation "arith.addi" (%lhs, %rhs : !pdl.value, !pdl.value) -> (%out_type : !pdl.type)

            pdl.rewrite %op0 {
              %op1 = pdl.operation "arith.muli" (%lhs, %rhs : !pdl.value, !pdl.value) -> (%out_type : !pdl.type)
              %val1 = pdl.result 0 of %op1
              pdl.replace %op0 with (%val1 : !pdl.value)
            }
          }
        }

        func.func @main(%0: index, %1: index) -> index {
            %2 = arith.addi %0, %1 : index
            return %2 : index
        }
        """
        )

        with mlir_mod_ctx(src) as module:
            pass
        module = self.backend.compile(module, pipeline=Pipeline().pdl_bytecode_pass())

        correct = dedent(
            """\
        module {
          func.func @main(%arg0: index, %arg1: index) -> index {
            %0 = arith.muli %arg0, %arg1 : index
            return %0 : index
          }
        }
        """
        )
        check_correct(correct, module)

    def test_basic_pdl_interp(self):
        src = dedent(
            """\
        module @patterns {
          pdl_interp.func @matcher(%arg0: !pdl.operation) {
            pdl_interp.check_operation_name of %arg0 is "arith.addi" -> ^bb2, ^bb1
          ^bb1:  // 8 preds: ^bb0, ^bb2, ^bb3, ^bb4, ^bb5, ^bb6, ^bb7, ^bb8
            pdl_interp.finalize
          ^bb2:  // pred: ^bb0
            pdl_interp.check_operand_count of %arg0 is 2 -> ^bb3, ^bb1
          ^bb3:  // pred: ^bb2
            pdl_interp.check_result_count of %arg0 is 1 -> ^bb4, ^bb1
          ^bb4:  // pred: ^bb3
            %0 = pdl_interp.get_operand 0 of %arg0
            pdl_interp.is_not_null %0 : !pdl.value -> ^bb5, ^bb1
          ^bb5:  // pred: ^bb4
            %1 = pdl_interp.get_operand 1 of %arg0
            pdl_interp.is_not_null %1 : !pdl.value -> ^bb6, ^bb1
          ^bb6:  // pred: ^bb5
            %2 = pdl_interp.get_result 0 of %arg0
            pdl_interp.is_not_null %2 : !pdl.value -> ^bb7, ^bb1
          ^bb7:  // pred: ^bb6
            %3 = pdl_interp.get_value_type of %0 : !pdl.type
            %4 = pdl_interp.get_value_type of %1 : !pdl.type
            pdl_interp.are_equal %3, %4 : !pdl.type -> ^bb8, ^bb1
          ^bb8:  // pred: ^bb7
            %5 = pdl_interp.get_value_type of %2 : !pdl.type
            pdl_interp.record_match @rewriters::@pdl_generated_rewriter(%0, %1, %5, %arg0 : !pdl.value, !pdl.value, !pdl.type, !pdl.operation) : benefit(1), generatedOps(["arith.muli"]), loc([%arg0]), root("arith.addi") -> ^bb1
          }
          module @rewriters {
            pdl_interp.func @pdl_generated_rewriter(%arg0: !pdl.value, %arg1: !pdl.value, %arg2: !pdl.type, %arg3: !pdl.operation) {
              %0 = pdl_interp.create_operation "arith.muli"(%arg0, %arg1 : !pdl.value, !pdl.value)  -> (%arg2 : !pdl.type)
              %1 = pdl_interp.get_result 0 of %0
              pdl_interp.replace %arg3 with (%1 : !pdl.value)
              pdl_interp.finalize
            }
          }  
        }
        
        func.func @main(%arg0: index, %arg1: index) -> index {
          %0 = arith.addi %arg0, %arg1 : index
          return %0 : index
        }
        """
        )

        with mlir_mod_ctx(src) as module:
            pass
        module = self.backend.compile(module, pipeline=Pipeline().pdl_bytecode_pass())

        correct = dedent(
            """\
        module {
          func.func @main(%arg0: index, %arg1: index) -> index {
            %0 = arith.muli %arg0, %arg1 : index
            return %0 : index
          }
        }
        """
        )
        check_correct(correct, module)

    def test_tf(self):
        src = dedent(
            """\
        module @patterns {
          // fc_fwd
          pdl.pattern : benefit(1) {
            %in_type = pdl.type
            %out_type = pdl.type
            %weight_type = pdl.type
            %rxact = pdl.operand : %in_type
            %weight = pdl.operand : %weight_type

            %attr0 = pdl.attribute = false
            %op0 = pdl.operation "tf.MatMul" (%rxact, %weight : !pdl.value, !pdl.value) {"transpose_a" = %attr0, "transpose_b" = %attr0} -> (%out_type : !pdl.type)

            pdl.rewrite %op0 {
              %op1 = pdl.operation "kernel.FcFwd" (%rxact, %weight : !pdl.value, !pdl.value) -> (%out_type : !pdl.type)
              %val1 = pdl.result 0 of %op1  // txact
              pdl.replace %op0 with (%val1 : !pdl.value)  // tf.MatMul
            }
          }

          // fc_bwd
          pdl.pattern : benefit(4) {
            %in_type = pdl.type
            %out_type = pdl.type
            %weight_type = pdl.type
            %const_type = pdl.type
            %rxact = pdl.operand : %in_type
            %rxdelta = pdl.operand : %out_type
            %weight = pdl.operand : %weight_type

            %attr0 = pdl.attribute = true
            %attr1 = pdl.attribute = false
            %op0 = pdl.operation "tf.MatMul" (%rxact, %rxdelta : !pdl.value, !pdl.value) {"transpose_a" = %attr0, "transpose_b" = %attr1} -> (%weight_type : !pdl.type)
            %val0 = pdl.result 0 of %op0
            %op1 = pdl.operation "tf.Const" -> (%const_type : !pdl.type)
            %val1 = pdl.result 0 of %op1
            %op2 = pdl.operation "tf.Mul" (%val0, %val1 : !pdl.value, !pdl.value) -> (%weight_type : !pdl.type)
            %val2 = pdl.result 0 of %op2
            %op3 = pdl.operation "tf.Sub" (%weight, %val2 : !pdl.value, !pdl.value) -> (%weight_type : !pdl.type)

            pdl.rewrite %op3 {
              %op4 = pdl.operation "kernel.FcBwd" (%rxact, %rxdelta, %weight : !pdl.value, !pdl.value, !pdl.value) -> (%weight_type : !pdl.type)
              %val4 = pdl.result 0 of %op4  // weight_out
              pdl.replace %op3 with (%val4 : !pdl.value)  // tf.Sub
              pdl.erase %op2  // tf.Mul
              pdl.erase %op1  // tf.Const
              pdl.erase %op0  // tf.MatMul
            }
          }

          // softmax_cross_entropy
          pdl.pattern : benefit(6) {
            %in_type = pdl.type
            %label_type = pdl.type
            %loss_type = pdl.type
            %mean_loss_type = pdl.type
            %mean_const_type = pdl.type
            %mul_const_type = pdl.type
            %rxact = pdl.operand : %in_type
            %rxlabel = pdl.operand : %label_type

            %op0 = pdl.operation "tf.SparseSoftmaxCrossEntropyWithLogits" (%rxact, %rxlabel : !pdl.value, !pdl.value) -> (%loss_type, %in_type : !pdl.type, !pdl.type)
            %val0_0 = pdl.result 0 of %op0  // loss
            %val0_1 = pdl.result 1 of %op0  // gradient
            %op1 = pdl.operation "tf.Const" -> (%mean_const_type : !pdl.type)
            %val1 = pdl.result 0 of %op1
            %op2 = pdl.operation "tf.Mean" (%val0_0, %val1 : !pdl.value, !pdl.value) -> (%mean_loss_type : !pdl.type)
            %val2 = pdl.result 0 of %op2
            %op3 = pdl.operation "tf.PreventGradient" (%val0_1 : !pdl.value) -> (%in_type : !pdl.type)
            %val3 = pdl.result 0 of %op3
            %op4 = pdl.operation "tf.Const" -> (%mul_const_type : !pdl.type)
            %val4 = pdl.result 0 of %op4
            %op5 = pdl.operation "tf.Mul" (%val3, %val4 : !pdl.value, !pdl.value) -> (%in_type : !pdl.type)

            pdl.rewrite {  // roots: %op2, %op5
              %op6 = pdl.operation "kernel.SoftmaxCrossEntropy" (%rxact, %rxlabel : !pdl.value, !pdl.value) -> (%mean_loss_type, %in_type : !pdl.type, !pdl.type)
              %val6_0 = pdl.result 0 of %op6  // txloss
              %val6_1 = pdl.result 1 of %op6  // txdelta
              pdl.replace %op5 with (%val6_1 : !pdl.value)  // tf.Mul
              pdl.erase %op4  // tf.Const
              pdl.erase %op3  // tf.PreventGradient
              pdl.replace %op2 with (%val6_0 : !pdl.value)  // tf.Mean
              pdl.erase %op1  // tf.Const
              pdl.erase %op0  // tf.SparseSoftmaxCrossEntropyWithLogits
            }
          }
        }

        func.func @main(%arg0: tensor<2x20xf32>, %arg1: tensor<2xi32>, %arg2: tensor<20x10xf32>) -> (tensor<f32>, tensor<20x10xf32>) {
          %0 = "tf.Const"() {value = dense<0> : tensor<1xi32>} : () -> tensor<1xi32>
          %1 = "tf.Const"() {value = dense<1.000000e-01> : tensor<f32>} : () -> tensor<f32>
          %2 = "tf.Const"() {value = dense<5.000000e-01> : tensor<2x1xf32>} : () -> tensor<2x1xf32>
          %3 = "tf.MatMul"(%arg0, %arg2) {transpose_a = false, transpose_b = false} : (tensor<2x20xf32>, tensor<20x10xf32>) -> tensor<2x10xf32>
          %loss, %backprop = "tf.SparseSoftmaxCrossEntropyWithLogits"(%3, %arg1) : (tensor<2x10xf32>, tensor<2xi32>) -> (tensor<2xf32>, tensor<2x10xf32>)
          %4 = "tf.Mean"(%loss, %0) {keep_dims = false} : (tensor<2xf32>, tensor<1xi32>) -> tensor<f32>
          %5 = "tf.PreventGradient"(%backprop) : (tensor<2x10xf32>) -> tensor<2x10xf32>
          %6 = "tf.Mul"(%5, %2) : (tensor<2x10xf32>, tensor<2x1xf32>) -> tensor<2x10xf32>
          %7 = "tf.MatMul"(%arg0, %6) {transpose_a = true, transpose_b = false} : (tensor<2x20xf32>, tensor<2x10xf32>) -> tensor<20x10xf32>
          %8 = "tf.Mul"(%7, %1) : (tensor<20x10xf32>, tensor<f32>) -> tensor<20x10xf32>
          %9 = "tf.Sub"(%arg2, %8) : (tensor<20x10xf32>, tensor<20x10xf32>) -> tensor<20x10xf32>
          return %4, %9 : tensor<f32>, tensor<20x10xf32>
        }
        """
        )

        with allow_unregistered_dialects(), mlir_mod_ctx(src) as module:
            module = self.backend.compile(
                module, pipeline=Pipeline().pdl_bytecode_pass()
            )

            correct = dedent(
                """\
            module {
              func.func @main(%arg0: tensor<2x20xf32>, %arg1: tensor<2xi32>, %arg2: tensor<20x10xf32>) -> (tensor<f32>, tensor<20x10xf32>) {
                %0 = "kernel.FcFwd"(%arg0, %arg2) : (tensor<2x20xf32>, tensor<20x10xf32>) -> tensor<2x10xf32>
                %1:2 = "kernel.SoftmaxCrossEntropy"(%0, %arg1) : (tensor<2x10xf32>, tensor<2xi32>) -> (tensor<f32>, tensor<2x10xf32>)
                %2 = "kernel.FcBwd"(%arg0, %1#1, %arg2) : (tensor<2x20xf32>, tensor<2x10xf32>, tensor<20x10xf32>) -> tensor<20x10xf32>
                return %1#0, %2 : tensor<f32>, tensor<20x10xf32>
              }
            }
            """
            )
            check_correct(correct, module)

    def test_linalg(self):
        src = dedent(
            """\
        #map = affine_map<(d0) -> (d0 * 8)>
        #map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d4 + d2, d5 + d3)>
        #map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3, d4, d5)>
        module {
          module @patterns {
            pdl.pattern : benefit(1) {
             %extracted_slice_2 = operand
             %empty = operand
             %linalg_type = type
             %linalg_generic = operation "linalg.generic" (%extracted_slice_2, %empty: !pdl.value, !pdl.value) -> (%linalg_type: !pdl.type)
             %linalg_generic_result = pdl.result 0 of %linalg_generic
             %useless_collapse_type = type
             %useless_collapse_op = operation "tensor.collapse_shape"(%linalg_generic_result: !pdl.value) -> (%useless_collapse_type: !pdl.type)
             pdl.rewrite %linalg_generic {
               %collapsed_shape = type: tensor<9xf32>
               %collapsed_map = pdl.attribute = [[0, 1, 2, 3]]
               %expanded_map = pdl.attribute = [[0, 1]]
               
               %collapse = operation "tensor.collapse_shape"(%extracted_slice_2: !pdl.value) {"reassociation" = %collapsed_map} -> (%collapsed_shape : !pdl.type)
               %collapse_result = pdl.result 0 of %collapse
               %expand = operation "tensor.expand_shape"(%collapse_result: !pdl.value) {"reassociation" = %expanded_map} -> (%useless_collapse_type : !pdl.type)
               pdl.replace %useless_collapse_op with %expand
             }
            }
          }
          
          func.func @conv_2d_nhwc_hwcf(%arg0: tensor<1x1x66x66xf32>, %arg1: tensor<3x1x3x3xf32>, %arg2: tensor<1x3x64x64xf32>) -> tensor<1x3x64x64xf32> {
            %0 = scf.forall (%arg3, %arg4, %arg5) in (3, 8, 8) shared_outs(%arg6 = %arg2) -> (tensor<1x3x64x64xf32>) {
              %1 = affine.apply #map(%arg4)
              %2 = affine.apply #map(%arg5)
              %3 = affine.apply #map(%arg4)
              %4 = affine.apply #map(%arg5)
              %extracted_slice = tensor.extract_slice %arg0[0, 0, %1, %2] [1, 1, 10, 10] [1, 1, 1, 1] : tensor<1x1x66x66xf32> to tensor<1x1x10x10xf32>
              %extracted_slice_0 = tensor.extract_slice %arg1[%arg3, 0, 0, 0] [1, 1, 3, 3] [1, 1, 1, 1] : tensor<3x1x3x3xf32> to tensor<1x1x3x3xf32>
              %extracted_slice_1 = tensor.extract_slice %arg6[0, %arg3, %3, %4] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<1x3x64x64xf32> to tensor<1x1x8x8xf32>
              %5 = scf.forall (%arg7, %arg8, %arg9) in (1, 8, 8) shared_outs(%arg10 = %extracted_slice_1) -> (tensor<1x1x8x8xf32>) {
                %extracted_slice_2 = tensor.extract_slice %extracted_slice[0, 0, %arg8, %arg9] [1, 1, 3, 3] [1, 1, 1, 1] : tensor<1x1x10x10xf32> to tensor<1x1x3x3xf32>
                %extracted_slice_3 = tensor.extract_slice %extracted_slice_0[%arg7, 0, 0, 0] [1, 1, 3, 3] [1, 1, 1, 1] : tensor<1x1x3x3xf32> to tensor<1x1x3x3xf32>
                %extracted_slice_4 = tensor.extract_slice %arg10[0, %arg7, %arg8, %arg9] [1, 1, 1, 1] [1, 1, 1, 1] : tensor<1x1x8x8xf32> to tensor<1x1x1x1xf32>
                %8 = tensor.empty() : tensor<1x1x3x3x1x1xf32>
                %9 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_2 : tensor<1x1x3x3xf32>) outs(%8 : tensor<1x1x3x3x1x1xf32>) {
                ^bb0(%in: f32, %out: f32):
                  linalg.yield %in : f32
                } -> tensor<1x1x3x3x1x1xf32>
                %collapsed = tensor.collapse_shape %extracted_slice_3 [[0], [1, 2, 3]] : tensor<1x1x3x3xf32> into tensor<1x9xf32>
                %collapsed_5 = tensor.collapse_shape %9 [[0, 1, 2, 3], [4, 5]] : tensor<1x1x3x3x1x1xf32> into tensor<9x1xf32>
                %collapsed_6 = tensor.collapse_shape %extracted_slice_4 [[0, 1], [2, 3]] : tensor<1x1x1x1xf32> into tensor<1x1xf32>
                %10 = linalg.matmul ins(%collapsed, %collapsed_5 : tensor<1x9xf32>, tensor<9x1xf32>) outs(%collapsed_6 : tensor<1x1xf32>) -> tensor<1x1xf32>
                %expanded = tensor.expand_shape %10 [[0, 1], [2, 3]] : tensor<1x1xf32> into tensor<1x1x1x1xf32>
                scf.forall.in_parallel {
                  tensor.parallel_insert_slice %expanded into %arg10[0, %arg7, %arg8, %arg9] [1, 1, 1, 1] [1, 1, 1, 1] : tensor<1x1x1x1xf32> into tensor<1x1x8x8xf32>
                }
              }
              %6 = affine.apply #map(%arg4)
              %7 = affine.apply #map(%arg5)
              scf.forall.in_parallel {
                tensor.parallel_insert_slice %5 into %arg6[0, %arg3, %6, %7] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<1x1x8x8xf32> into tensor<1x3x64x64xf32>
              }
            }
            return %0 : tensor<1x3x64x64xf32>
          }
        }
        """
        )

        with mlir_mod_ctx(src) as module:
            module = self.backend.compile(
                module, pipeline=Pipeline().pdl_bytecode_pass()
            )

        correct = dedent(
            """\
        #map = affine_map<(d0) -> (d0 * 8)>
        module {
          func.func @conv_2d_nhwc_hwcf(%arg0: tensor<1x1x66x66xf32>, %arg1: tensor<3x1x3x3xf32>, %arg2: tensor<1x3x64x64xf32>) -> tensor<1x3x64x64xf32> {
            %0 = scf.forall (%arg3, %arg4, %arg5) in (3, 8, 8) shared_outs(%arg6 = %arg2) -> (tensor<1x3x64x64xf32>) {
              %1 = affine.apply #map(%arg4)
              %2 = affine.apply #map(%arg5)
              %3 = affine.apply #map(%arg4)
              %4 = affine.apply #map(%arg5)
              %extracted_slice = tensor.extract_slice %arg0[0, 0, %1, %2] [1, 1, 10, 10] [1, 1, 1, 1] : tensor<1x1x66x66xf32> to tensor<1x1x10x10xf32>
              %extracted_slice_0 = tensor.extract_slice %arg1[%arg3, 0, 0, 0] [1, 1, 3, 3] [1, 1, 1, 1] : tensor<3x1x3x3xf32> to tensor<1x1x3x3xf32>
              %extracted_slice_1 = tensor.extract_slice %arg6[0, %arg3, %3, %4] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<1x3x64x64xf32> to tensor<1x1x8x8xf32>
              %5 = scf.forall (%arg7, %arg8, %arg9) in (1, 8, 8) shared_outs(%arg10 = %extracted_slice_1) -> (tensor<1x1x8x8xf32>) {
                %extracted_slice_2 = tensor.extract_slice %extracted_slice[0, 0, %arg8, %arg9] [1, 1, 3, 3] [1, 1, 1, 1] : tensor<1x1x10x10xf32> to tensor<1x1x3x3xf32>
                %extracted_slice_3 = tensor.extract_slice %extracted_slice_0[%arg7, 0, 0, 0] [1, 1, 3, 3] [1, 1, 1, 1] : tensor<1x1x3x3xf32> to tensor<1x1x3x3xf32>
                %extracted_slice_4 = tensor.extract_slice %arg10[0, %arg7, %arg8, %arg9] [1, 1, 1, 1] [1, 1, 1, 1] : tensor<1x1x8x8xf32> to tensor<1x1x1x1xf32>
                %collapsed = tensor.collapse_shape %extracted_slice_2 [[0, 1, 2, 3]] : tensor<1x1x3x3xf32> into tensor<9xf32>
                %expanded = tensor.expand_shape %collapsed [[0, 1]] : tensor<9xf32> into tensor<9x1xf32>
                %collapsed_5 = tensor.collapse_shape %extracted_slice_3 [[0], [1, 2, 3]] : tensor<1x1x3x3xf32> into tensor<1x9xf32>
                %collapsed_6 = tensor.collapse_shape %extracted_slice_4 [[0, 1], [2, 3]] : tensor<1x1x1x1xf32> into tensor<1x1xf32>
                %8 = linalg.matmul ins(%collapsed_5, %expanded : tensor<1x9xf32>, tensor<9x1xf32>) outs(%collapsed_6 : tensor<1x1xf32>) -> tensor<1x1xf32>
                %expanded_7 = tensor.expand_shape %8 [[0, 1], [2, 3]] : tensor<1x1xf32> into tensor<1x1x1x1xf32>
                scf.forall.in_parallel {
                  tensor.parallel_insert_slice %expanded_7 into %arg10[0, %arg7, %arg8, %arg9] [1, 1, 1, 1] [1, 1, 1, 1] : tensor<1x1x1x1xf32> into tensor<1x1x8x8xf32>
                }
              }
              %6 = affine.apply #map(%arg4)
              %7 = affine.apply #map(%arg5)
              scf.forall.in_parallel {
                tensor.parallel_insert_slice %5 into %arg6[0, %arg3, %6, %7] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<1x1x8x8xf32> into tensor<1x3x64x64xf32>
              }
            }
            return %0 : tensor<1x3x64x64xf32>
          }
        }
        """
        )

        check_correct(correct, module)

    def test_pdl_to_pdl_interp(self):
        src = dedent(
            """\
        pdl.pattern : benefit(1) {
         %extracted_slice_2 = operand
         %empty = operand
         %linalg_type = type
         %linalg_generic = operation "linalg.generic" (%extracted_slice_2, %empty: !pdl.value, !pdl.value) -> (%linalg_type: !pdl.type)
         %linalg_generic_result = pdl.result 0 of %linalg_generic
         %useless_collapse_type = type
         %useless_collapse_op = operation "tensor.collapse_shape"(%linalg_generic_result: !pdl.value) -> (%useless_collapse_type: !pdl.type)
         pdl.rewrite %linalg_generic {
           %collapsed_shape = type: tensor<9xf32>
           %collapsed_map = pdl.attribute = [[0, 1, 2, 3]]
           %expanded_map = pdl.attribute = [[0, 1]]
           
           %collapse = operation "tensor.collapse_shape"(%extracted_slice_2: !pdl.value) {"reassociation" = %collapsed_map} -> (%collapsed_shape : !pdl.type)
           %collapse_result = pdl.result 0 of %collapse
           %expand = operation "tensor.expand_shape"(%collapse_result: !pdl.value) {"reassociation" = %expanded_map} -> (%useless_collapse_type : !pdl.type)
           pdl.replace %useless_collapse_op with %expand
         }
        }
        """
        )

        with mlir_mod_ctx(src) as module:
            module = self.backend.compile(
                module, pipeline=Pipeline().convert_pdl_to_pdl_interp()
            )

        correct = dedent("""\
        module {
          pdl_interp.func @matcher(%arg0: !pdl.operation) {
            pdl_interp.check_operation_name of %arg0 is "linalg.generic" -> ^bb2, ^bb1
          ^bb1:  // 7 preds: ^bb0, ^bb2, ^bb3, ^bb4, ^bb5, ^bb6, ^bb7
            pdl_interp.finalize
          ^bb2:  // pred: ^bb0
            pdl_interp.check_operand_count of %arg0 is 2 -> ^bb3, ^bb1
          ^bb3:  // pred: ^bb2
            pdl_interp.check_result_count of %arg0 is 1 -> ^bb4, ^bb1
          ^bb4:  // pred: ^bb3
            %0 = pdl_interp.get_operand 0 of %arg0
            pdl_interp.is_not_null %0 : !pdl.value -> ^bb5, ^bb1
          ^bb5:  // pred: ^bb4
            %1 = pdl_interp.get_operand 1 of %arg0
            pdl_interp.is_not_null %1 : !pdl.value -> ^bb6, ^bb1
          ^bb6:  // pred: ^bb5
            %2 = pdl_interp.get_result 0 of %arg0
            pdl_interp.is_not_null %2 : !pdl.value -> ^bb7, ^bb1
          ^bb7:  // pred: ^bb6
            %3 = pdl_interp.get_users of %2 : !pdl.value
            pdl_interp.foreach %arg1 : !pdl.operation in %3 {
              pdl_interp.is_not_null %arg1 : !pdl.operation -> ^bb2, ^bb1
            ^bb1:  // 7 preds: ^bb0, ^bb2, ^bb3, ^bb4, ^bb5, ^bb6, ^bb7
              pdl_interp.continue
            ^bb2:  // pred: ^bb0
              pdl_interp.check_operation_name of %arg1 is "tensor.collapse_shape" -> ^bb3, ^bb1
            ^bb3:  // pred: ^bb2
              pdl_interp.check_operand_count of %arg1 is 1 -> ^bb4, ^bb1
            ^bb4:  // pred: ^bb3
              pdl_interp.check_result_count of %arg1 is 1 -> ^bb5, ^bb1
            ^bb5:  // pred: ^bb4
              %4 = pdl_interp.get_operand 0 of %arg1
              pdl_interp.are_equal %4, %2 : !pdl.value -> ^bb6, ^bb1
            ^bb6:  // pred: ^bb5
              %5 = pdl_interp.get_result 0 of %arg1
              pdl_interp.is_not_null %5 : !pdl.value -> ^bb7, ^bb1
            ^bb7:  // pred: ^bb6
              %6 = pdl_interp.get_value_type of %5 : !pdl.type
              pdl_interp.record_match @rewriters::@pdl_generated_rewriter(%0, %6, %arg1 : !pdl.value, !pdl.type, !pdl.operation) : benefit(1), generatedOps(["tensor.collapse_shape", "tensor.expand_shape"]), loc([%arg0, %arg1]), root("linalg.generic") -> ^bb1
            } -> ^bb1
          }
          module @rewriters {
            pdl_interp.func @pdl_generated_rewriter(%arg0: !pdl.value, %arg1: !pdl.type, %arg2: !pdl.operation) {
              %0 = pdl_interp.create_type tensor<9xf32>
              %1 = pdl_interp.create_attribute [[0, 1, 2, 3]]
              %2 = pdl_interp.create_attribute [[0, 1]]
              %3 = pdl_interp.create_operation "tensor.collapse_shape"(%arg0 : !pdl.value) {"reassociation" = %1}  -> (%0 : !pdl.type)
              %4 = pdl_interp.get_result 0 of %3
              %5 = pdl_interp.create_operation "tensor.expand_shape"(%4 : !pdl.value) {"reassociation" = %2}  -> (%arg1 : !pdl.type)
              %6 = pdl_interp.get_results of %5 : !pdl.range<value>
              pdl_interp.replace %arg2 with (%6 : !pdl.range<value>)
              pdl_interp.finalize
            }
          }
        }
        """)

        check_correct(correct, module)
