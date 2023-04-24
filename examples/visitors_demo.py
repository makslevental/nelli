import contextlib
from typing import Optional

from nelli.mlir.passes import Pipeline

from nelli.mlir._mlir.ir import Module, InsertionPoint


from textwrap import dedent

from nelli.mlir.arith import constant
from nelli.mlir.utils import run_pipeline
from nelli.utils import find_ops, mlir_mod_ctx

src = dedent(
    """\
module {
  func.func @parallel_loop(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: memref<?x?xf32>, %arg7: memref<?x?xf32>, %arg8: memref<?x?xf32>, %arg9: memref<?x?xf32>) {
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %0 = arith.muli %arg5, %c4 : index
    %1 = llvm.mlir.constant(1 : i64) : i64
    omp.parallel   {
      omp.wsloop   for  (%arg10, %arg11) : index = (%arg0, %arg1) to (%arg2, %arg3) step (%arg4, %0) {
        memref.alloca_scope  {
          %c-1 = arith.constant -1 : index
          %2 = arith.muli %arg10, %c-1 : index
          %3 = arith.addi %arg2, %2 : index
          %4 = arith.cmpi slt, %arg4, %3 : index
          %5 = arith.select %4, %arg4, %3 : index
          %c-1_0 = arith.constant -1 : index
          %6 = arith.muli %arg11, %c-1_0 : index
          %7 = arith.addi %arg3, %6 : index
          %8 = arith.cmpi slt, %0, %7 : index
          %9 = arith.select %8, %0, %7 : index
          %10 = llvm.mlir.constant(1 : i64) : i64
          omp.parallel   {
            omp.wsloop   for  (%arg12, %arg13) : index = (%c0, %c0) to (%5, %9) step (%arg4, %arg5) {
              memref.alloca_scope  {
                %11 = arith.addi %arg12, %arg10 : index
                %12 = arith.addi %arg13, %arg11 : index
                %13 = memref.load %arg7[%11, %12] : memref<?x?xf32>
                %14 = memref.load %arg8[%11, %12] : memref<?x?xf32>
                %15 = arith.addf %13, %14 : f32
                memref.store %15, %arg9[%11, %12] : memref<?x?xf32>
              }
              omp.yield
            }
            omp.terminator
          }
        }
        omp.yield
      }
      omp.terminator
    }
    return
  }
}
"""
)


with mlir_mod_ctx(src) as module:
    func = find_ops(module, lambda op: op.name in {"func.func"})
    assert len(func) == 1
    func = func[0].opview
    with InsertionPoint.at_block_begin(func.entry_block):
        constants = find_ops(module, lambda op: op.name in {"arith.constant"})
        new_constant_1 = constant(333, index=True)
        new_constant_2 = constant(666, index=True)
        constants[0].result.replace_all_uses_with(new_constant_1)
        constants[1].result.replace_all_uses_with(new_constant_2)

run_pipeline(
    module,
    Pipeline().cse().materialize(),
)
print(module)


class Visitor:
    def visit(self, op):
        print(op.opview.__class__.__name__, op.location)
        for r in op.regions:
            for b in r.blocks:
                for o in b.operations:
                    self.visit(o.operation)


Visitor().visit(module.operation)
