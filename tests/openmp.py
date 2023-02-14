import ctypes
from pathlib import Path
from textwrap import dedent

import numpy as np

from loopy.loopy_mlir import _mlir_libs
from loopy.loopy_mlir.dialects import _arith_ops_gen as arith_dialect
from loopy.loopy_mlir.execution_engine import ExecutionEngine
from loopy.loopy_mlir.ir import InsertionPoint
from loopy.loopy_mlir.runtime import get_ranked_memref_descriptor
from loopy.mlir import I32, Index
from loopy.mlir.arith import constant
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import MemRefValue as MemRef
from loopy.mlir.openmp._omp_ops_gen import TerminatorOp, YieldOp
from loopy.mlir.openmp.omp import (
    ParallelOp,
    WsLoopOp,
    parallel,
    ws_loop as omp_range,
    endfor as omp_endfor,
)
from loopy.mlir.refbackend import LLVMJITBackend
from loopy.utils import mlir_mod_ctx, shlib_ext
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

    def test_basic1(self):
        with mlir_mod_ctx() as module:
            with parallel():
                two = constant(1.0)

        correct = dedent(
            """\
        module {
          omp.parallel   {
            %cst = arith.constant 1.000000e+00 : f64
            omp.terminator
          }
        }
        """
        )
        check_correct(correct, module)

    def test_basic2(self):
        with mlir_mod_ctx() as module:
            with parallel(num_threads=12):
                two = constant(1.0)

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

            @mlir_func(rewrite_ast_=False, rewrite_bytecode_=False)
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

    def test_ws_loop2(self):
        with mlir_mod_ctx() as module:

            @mlir_func(
                rewrite_ast_=True,
                rewrite_bytecode_=False,
                range_ctor=omp_range,
                endfor=omp_endfor,
            )
            def ws_loop(one: I32, ten: I32, two: I32, mem: MemRef[12, I32]):
                with parallel(num_threads=12):
                    for i in range(one, ten, two):
                        two = constant(2, type=I32)
                        idx = arith_dialect.IndexCastOp(Index, i)
                        mem[idx] = two

        # print(module)
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

    def test_runtime(self):
        with mlir_mod_ctx() as module:

            @mlir_func(
                rewrite_ast_=True,
                rewrite_bytecode_=False,
                range_ctor=omp_range,
                endfor=omp_endfor,
            )
            def ws_loop(one: I32, ten: I32, two: I32, mem: MemRef[12, I32]):
                with parallel(num_threads=12):
                    for i in range(one, ten, two):
                        two = constant(2, type=I32)
                        idx = arith_dialect.IndexCastOp(Index, i)
                        mem[idx] = two

        backend = LLVMJITBackend()
        module = backend.compile(module, kernel_name="ws_loop")
        # print(module)

        lib_path = Path(_mlir_libs.__file__).parent / f"libomp.{shlib_ext()}"
        assert lib_path.exists()
        execution_engine = ExecutionEngine(module, shared_libs=[str(lib_path)])
        A = np.zeros(12).astype(np.int32)
        A_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(A)))
        c_int_p = ctypes.c_int32 * 1
        one = c_int_p(1)
        ten = c_int_p(10)
        two = c_int_p(2)

        execution_engine.invoke("ws_loop", one, ten, two, A_ptr)
        assert np.allclose(
            A, np.array([0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0], dtype=np.int32)
        )
