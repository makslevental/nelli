from textwrap import dedent

from nelli.mlir.ast.visitors import (
    ArithDialectVisitor,
    AllDialectVisitor,
    MemrefDialectVisitor,
)
from nelli.utils import mlir_mod_ctx
from nelli.mlir._mlir.dialects import arith, memref
from util import check_correct


class TestVisitors:
    def test_basic(self):
        golden_src = dedent(
            """\
        module attributes {gpu.container_module} {
          gpu.module @kernels {
            gpu.func @kernel_mul(%arg0 : memref<4x4xf32>, %arg1 : memref<4x4xf32>, %arg2 : memref<4x4xf32>) kernel {
              %x = gpu.block_id x
              %y = gpu.block_id y
              %1 = memref.load %arg0[%x, %y] : memref<4x4xf32>
              %2 = memref.load %arg1[%x, %y] : memref<4x4xf32>
              %3 = arith.mulf %1, %2 : f32
              memref.store %3, %arg2[%x, %y] : memref<4x4xf32>
              gpu.return
            }
          }
    
          func.func @main(%arg0: memref<4x4xf32>, %arg1: memref<4x4xf32>, %arg2: memref<4x4xf32>) {
            %cst1 = arith.constant 1 : index
            %cst4 = arith.constant 4 : index
            gpu.launch_func @kernels::@kernel_mul blocks in (%cst4, %cst4, %cst1) threads in(%cst1, %cst1, %cst1) args(%arg0 : memref<4x4xf32>, %arg1 : memref<4x4xf32>, %arg2 : memref<4x4xf32>)
            %arg6 = memref.cast %arg2 : memref<4x4xf32> to memref<*xf32>
            call @printMemrefF32(%arg6) : (memref<*xf32>) -> ()
            return
          }
          func.func private @printMemrefF32(%ptr : memref<*xf32>)
        }
        """
        )
        with mlir_mod_ctx(golden_src) as module:
            pass

        ariths = []
        memrefs = []

        class myArithDialectVisitor(ArithDialectVisitor):
            def visit_ConstantOp(self, op: arith.ConstantOp):
                ariths.append(str(op))

        class myMemrefDialectVisitor(MemrefDialectVisitor):
            def visit_LoadOp(self, op: memref.LoadOp):
                memrefs.append(str(op))

        all_dialect_visitor = AllDialectVisitor(
            arith_visitor_ctor=myArithDialectVisitor,
            memref_visitor_ctor=myMemrefDialectVisitor,
        )
        all_dialect_visitor.visit(module.operation)
        correct = dedent(
            """\
        %c1 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        """
        )
        check_correct("\n".join(ariths), correct)
        correct = dedent(
            """\
        %2 = memref.load %arg0[%0, %1] : memref<4x4xf32>
        %3 = memref.load %arg1[%0, %1] : memref<4x4xf32>
        """
        )
        check_correct("\n".join(memrefs), correct)
