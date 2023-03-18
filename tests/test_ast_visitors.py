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

    def test_generic_visitor(self):
        src = dedent(
            """\
        module {
          func.func @parallel_loop(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: memref<?x?xf32>, %arg7: memref<?x?xf32>, %arg8: memref<?x?xf32>, %arg9: memref<?x?xf32>) {
            %c0 = arith.constant 0 : index
            %c1 = arith.constant 1 : index
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
            pass

        seen_nodes = []

        class Visitor:
            def visit(self, op):
                seen_nodes.append((op.opview.__class__.__name__, str(op.location)))
                for r in op.regions:
                    for b in r.blocks:
                        for o in b.operations:
                            self.visit(o.operation)

        Visitor().visit(module.operation)
        assert seen_nodes == [
            ("ModuleOp", 'loc("-":1:1)'),
            ("FuncOp", 'loc("-":2:3)'),
            ("ConstantOp", 'loc("-":3:11)'),
            ("ConstantOp", 'loc("-":4:11)'),
            ("ConstantOp", 'loc("-":5:11)'),
            ("MulIOp", 'loc("-":6:10)'),
            ("ConstantOp", 'loc("-":7:10)'),
            ("ParallelOp", 'loc("-":8:5)'),
            ("WsLoopOp", 'loc("-":9:7)'),
            ("AllocaScopeOp", 'loc("-":10:9)'),
            ("ConstantOp", 'loc("-":11:18)'),
            ("MulIOp", 'loc("-":12:16)'),
            ("AddIOp", 'loc("-":13:16)'),
            ("CmpIOp", 'loc("-":14:16)'),
            ("SelectOp", 'loc("-":15:16)'),
            ("ConstantOp", 'loc("-":16:20)'),
            ("MulIOp", 'loc("-":17:16)'),
            ("AddIOp", 'loc("-":18:16)'),
            ("CmpIOp", 'loc("-":19:16)'),
            ("SelectOp", 'loc("-":20:16)'),
            ("ConstantOp", 'loc("-":21:17)'),
            ("ParallelOp", 'loc("-":22:11)'),
            ("WsLoopOp", 'loc("-":23:13)'),
            ("AllocaScopeOp", 'loc("-":24:15)'),
            ("AddIOp", 'loc("-":25:23)'),
            ("AddIOp", 'loc("-":26:23)'),
            ("LoadOp", 'loc("-":27:23)'),
            ("LoadOp", 'loc("-":28:23)'),
            ("AddFOp", 'loc("-":29:23)'),
            ("StoreOp", 'loc("-":30:17)'),
            ("AllocaScopeReturnOp", 'loc("-":24:15)'),
            ("YieldOp", 'loc("-":32:15)'),
            ("TerminatorOp", 'loc("-":34:13)'),
            ("AllocaScopeReturnOp", 'loc("-":10:9)'),
            ("YieldOp", 'loc("-":37:9)'),
            ("TerminatorOp", 'loc("-":39:7)'),
            ("ReturnOp", 'loc("-":41:5)'),
        ]
