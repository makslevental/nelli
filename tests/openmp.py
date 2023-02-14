from textwrap import dedent

from loopy.loopy_mlir.dialects import _arith_ops_gen as arith_dialect
from loopy.loopy_mlir.execution_engine import ExecutionEngine
from loopy.loopy_mlir.ir import InsertionPoint
from loopy.mlir import I32, Index
from loopy.mlir.arith import constant
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import MemRefValue as MemRef
from loopy.mlir.openmp._omp_ops_gen import TerminatorOp, YieldOp
from loopy.mlir.openmp.omp import ParallelOp, WsLoopOp
from loopy.mlir.refbackend import LLVMJITBackend
from loopy.utils import mlir_mod_ctx
from util import check_correct


class TestOMP:
    def test_basic(self):
        with mlir_mod_ctx() as module:
            p = ParallelOp(num_threads=12)
            with InsertionPoint.at_block_begin(p.body):
                two = constant(1.0)
                TerminatorOp()

        correct = dedent(
            """\
        module {
          %c12_i32 = arith.constant 12 : i32
          omp.parallel   num_threads(%c12_i32 : i32) {
            %cst = arith.constant 1.000000e+00 : f64
            omp.terminator
          }
        }
        """
        )
        # print(module)
        check_correct(correct, module)

    def test_ws_loop(self):
        with mlir_mod_ctx() as module:
            @mlir_func(rewrite_ast_=False, rewrite_bytecode_=False, affine_memref=False)
            def ws_loop(one: I32, ten: I32, two: I32, mem: MemRef[12, I32]):
                p = ParallelOp(num_threads=12)
                with InsertionPoint.at_block_begin(p.body):
                    ws_loop = WsLoopOp([one], [ten], [two])
                    with InsertionPoint.at_block_begin(ws_loop.body):
                        two = constant(2, type=I32)
                        idx = arith_dialect.IndexCastOp(
                            Index, ws_loop.induction_variable
                        )
                        mem[idx] = two
                        YieldOp([])
                    TerminatorOp()

        correct = dedent(
            """\
        module {
          func.func @ws_loop(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<12xi32>) {
            %c12_i32 = arith.constant 12 : i32
            omp.parallel   num_threads(%c12_i32 : i32) {
              omp.wsloop   for  (%arg4) : i32 = (%arg0) to (%arg1) step (%arg2) {
                %c2_i32 = arith.constant 2 : i32
                %0 = arith.index_cast %arg4 : i32 to index
                memref.store %c2_i32, %arg3[%0] : memref<12xi32>
                omp.yield
              }
              omp.terminator
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def runtime(self):
        with mlir_mod_ctx() as module:
            @mlir_func(rewrite_ast_=False, rewrite_bytecode_=False, affine_memref=False)
            def ws_loop(one: I32, ten: I32, two: I32, mem: MemRef[12, I32]):
                p = ParallelOp(num_threads=12)
                with InsertionPoint.at_block_begin(p.body):
                    ws_loop = WsLoopOp([one], [ten], [two])
                    with InsertionPoint.at_block_begin(ws_loop.body):
                        two = constant(2, type=I32)
                        idx = arith_dialect.IndexCastOp(
                            Index, ws_loop.induction_variable
                        )
                        mem[idx] = two
                        YieldOp([])
                    TerminatorOp()

        backend = LLVMJITBackend()
        module = backend.compile(module, kernel_name="ws_loop")
        print(module)

        execution_engine = ExecutionEngine(
            module,
            shared_libs=[
                "/Users/mlevental/dev_projects/loopy/llvm_install/lib/libomp.dylib"
            ],
        )
        execution_engine.invoke("ws_loop")
