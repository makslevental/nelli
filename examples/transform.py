from textwrap import dedent

from nelli.mlir.utils import run_pipeline
from nelli.utils import mlir_mod_ctx

src = dedent(
    """\
func.func @loop_unroll_op() {
  %c0 = arith.constant 0 : index
  %c42 = arith.constant 42 : index
  %c5 = arith.constant 5 : index
  scf.for %i = %c0 to %c42 step %c5 {
    arith.addi %i, %i : index
  }
  return
}

transform.sequence failures(propagate) {
^bb1(%arg1: !pdl.operation):
  %0 = transform.structured.match ops{["arith.addi"]} in %arg1 : (!pdl.operation) -> !pdl.operation
  %1 = transform.loop.get_parent_for %0 : (!pdl.operation) -> !transform.op<"scf.for">
  transform.loop.unroll %1 { factor = 4 } : !transform.op<"scf.for">
}
"""
)

src = dedent("""\
func.func @dynamic_pad_tensor_3_4(%input_tensor: tensor<?x?xf32>,
                         %pad_value: f32) -> tensor<?x?xf32> {
  %0 = tensor.pad %input_tensor low[3, 4] high[5, 3] {
    ^bb0(%arg1: index, %arg2: index):
      tensor.yield %pad_value : f32
    } : tensor<?x?xf32> to tensor<?x?xf32>
  return %0 : tensor<?x?xf32>
}

transform.sequence failures(propagate) {
  ^bb0(%arg1: !pdl.operation):
    %0 = transform.structured.match ops{["tensor.pad"]} in %arg1 : (!pdl.operation) -> !pdl.operation
    %1, %loops:2 = transform.structured.tile_to_scf_for %0 [2, 3]
}
""")


src = dedent("""\
func.func @pass_an_op_directly(%arg0: tensor<4x16xf32>, %arg1: tensor<16x8xf32>) -> tensor<4x8xf32> {
  %cst = arith.constant 1.000000e+00 : f32
  %0 = linalg.fill ins(%cst : f32) outs(%arg0 : tensor<4x16xf32>) -> tensor<4x16xf32>
  %1 = linalg.fill ins(%cst : f32) outs(%arg1 : tensor<16x8xf32>) -> tensor<16x8xf32>
  %2 = tensor.empty() : tensor<4x8xf32>
  %3 = linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%0, %1 : tensor<4x16xf32>, tensor<16x8xf32>) outs(%2 : tensor<4x8xf32>) -> tensor<4x8xf32>
  return %3 : tensor<4x8xf32>
}
          
transform.sequence failures(propagate) {
  ^bb0(%arg1: !pdl.operation):
    %0 = transform.structured.match ops{["linalg.matmul"]} in %arg1 : (!pdl.operation) -> !pdl.operation
    %1, %loops:2 = transform.structured.tile_to_scf_for %0 [2, 3]
}
""")

with mlir_mod_ctx() as module:
    module = module.parse(src)

print("*" * 10, "before", "*" * 10, "\n")
print(module)
run_pipeline(
    module, "builtin.module(transform-dialect-interpreter,transform-dialect-erase-schedule)"
)
print("*" * 10, "after", "*" * 10, "\n")
print(module)
