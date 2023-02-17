import logging

logger = logging.getLogger(__name__)

import ctypes
from scipy import signal
from pathlib import Path
from textwrap import dedent

import numpy as np

from nelli.mlir._mlir.dialects import _arith_ops_gen as arith_dialect, linalg
from nelli.mlir._mlir.execution_engine import ExecutionEngine
from nelli.mlir._mlir.ir import InsertionPoint, Module
from nelli import F32, I32, Index
from nelli.mlir.arith import constant
from nelli.mlir.func import mlir_func
from nelli.mlir.memref import MemRefValue as MemRef
from nelli.mlir.openmp._omp_ops_gen import TerminatorOp, YieldOp
from nelli.mlir.openmp.omp import (
    ParallelOp,
    WsLoopOp,
    parallel,
    ws_loop as omp_range,
    endfor as omp_endfor,
)
from nelli.mlir.refbackend import LLVMJITBackend, LinalgLowering
from nelli.utils import mlir_mod_ctx, shlib_ext
from util import check_correct

from nelli.mlir._mlir import _mlir_libs

omp_lib_path = Path(_mlir_libs.__file__).parent / f"libomp.{shlib_ext()}"
assert omp_lib_path.exists()


class TestOMP:
    backend = LLVMJITBackend(shared_libs=[str(omp_lib_path)])

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

        module = self.backend.compile(module, kernel_name="ws_loop")
        invoker = self.backend.load(module)
        A = np.zeros(12).astype(np.int32)
        c_int_p = ctypes.c_int32 * 1
        one = c_int_p(1)
        ten = c_int_p(10)
        two = c_int_p(2)

        invoker.ws_loop(one, ten, two, A)
        assert np.allclose(
            A, np.array([0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0], dtype=np.int32)
        )

    def test_scf_to_openmp1(self):
        module = Module.parse(
            dedent(
                """\
        module {
          func.func @reduction3(%arg0 : index, %arg1 : index, %arg2 : index, %arg3 : index, %arg4 : index) {
            %step = arith.constant 1 : index
            %zero = arith.constant 0.0 : f32
            scf.parallel (%i0, %i1) = (%arg0, %arg1) to (%arg2, %arg3)
                                      step (%arg4, %step) init (%zero) -> (f32) {
              %one = arith.constant 1.0 : f32
              scf.reduce(%one) : f32 {
              ^bb0(%lhs : f32, %rhs: f32):
                %cmp = arith.cmpf oge, %lhs, %rhs : f32
                %res = arith.select %cmp, %lhs, %rhs : f32
                scf.reduce.return %res : f32
              }
            }
            return
          }
        }
        """
            )
        )
        # print(module)
        module = self.backend.compile(
            module,
            kernel_name="reduction3",
            bufferize=True,
            lower_loops=True,
            lower_to_openmp=True,
            lower_to_llvm=True,
        )
        # print(module)
        lib_path = Path(_mlir_libs.__file__).parent / f"libomp.{shlib_ext()}"
        assert lib_path.exists()
        execution_engine = ExecutionEngine(module, shared_libs=[str(lib_path)])
        c_int_p = ctypes.c_int64 * 1
        one = c_int_p(1)
        two = c_int_p(2)
        three = c_int_p(3)
        four = c_int_p(4)
        five = c_int_p(5)

        execution_engine.invoke("reduction3", one, two, three, four, five)

    def test_scf_to_openmp2(self):
        module = Module.parse(
            dedent(
                """\
        module {
          func.func @ws_loop(%input: memref<2x3x10xf32>) {
            %c0 = arith.constant 0 : index
            %c1 = arith.constant 1 : index
            %c10 = arith.constant 10 : index
            %dim_x = memref.dim %input, %c0 : memref<2x3x10xf32>
            %dim_y = memref.dim %input, %c1 : memref<2x3x10xf32>
            scf.parallel (%i, %j) = (%c0, %c0) to (%dim_x, %dim_y) step (%c1, %c1) {
              %prod = arith.muli %i,  %c10 : index
              %val = arith.addi %prod, %j : index
              %val_i64 = arith.index_cast %val : index to i64
              %val_f32 = arith.sitofp %val_i64 : i64 to f32
              scf.for %k = %c1 to %c10 step %c1 {
                memref.store %val_f32, %input[%i, %j, %k] : memref<2x3x10xf32>
              }
            }
            return
          }
        }
        """
            )
        )
        # print(module)
        module = self.backend.compile(
            module,
            kernel_name="ws_loop",
            bufferize=True,
            lower_loops=True,
            lower_to_openmp=True,
            lower_to_llvm=True,
        )
        input = np.zeros((2, 3, 10)).astype(np.float32)
        self.backend.load(module).ws_loop(input)
        correct = np.array(
            [
                [
                    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    [0, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                    [0, 2, 2, 2, 2, 2, 2, 2, 2, 2],
                ],
                [
                    [0, 10, 10, 10, 10, 10, 10, 10, 10, 10],
                    [0, 11, 11, 11, 11, 11, 11, 11, 11, 11],
                    [0, 12, 12, 12, 12, 12, 12, 12, 12, 12],
                ],
            ]
        )
        assert np.allclose(correct, input)

    def test_linalg_lowering(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def conv2d(
                input: MemRef[1, 3, 32, 32, F32],
                kernel: MemRef[3, 3, 3, 3, F32],
                output: MemRef[1, 3, 30, 30, F32],
            ):
                linalg.conv_2d_nchw_fchw(input, kernel, outs=[output])
                return None

        module = self.backend.compile(
            module,
            kernel_name="conv2d",
            lower_loops=True,
            lower_to_openmp=True,
            lower_to_llvm=False,
            linalg_lowering=LinalgLowering.Parallel,
        )
        correct = dedent(
            """\
        module {
          func.func @conv2d(%arg0: memref<1x3x32x32xf32>, %arg1: memref<3x3x3x3xf32>, %arg2: memref<1x3x30x30xf32>) {
            %c0 = arith.constant 0 : index
            %c1 = arith.constant 1 : index
            %c3 = arith.constant 3 : index
            %c30 = arith.constant 30 : index
            %0 = llvm.mlir.constant(1 : i64) : i64
            omp.parallel   {
              omp.wsloop   for  (%arg3, %arg4, %arg5, %arg6) : index = (%c0, %c0, %c0, %c0) to (%c1, %c3, %c30, %c30) step (%c1, %c1, %c1, %c1) {
                memref.alloca_scope  {
                  scf.for %arg7 = %c0 to %c3 step %c1 {
                    scf.for %arg8 = %c0 to %c3 step %c1 {
                      scf.for %arg9 = %c0 to %c3 step %c1 {
                        %1 = arith.addi %arg5, %arg8 : index
                        %2 = arith.addi %arg6, %arg9 : index
                        %3 = memref.load %arg0[%arg3, %arg7, %1, %2] : memref<1x3x32x32xf32>
                        %4 = memref.load %arg1[%arg4, %arg7, %arg8, %arg9] : memref<3x3x3x3xf32>
                        %5 = memref.load %arg2[%arg3, %arg4, %arg5, %arg6] : memref<1x3x30x30xf32>
                        %6 = arith.mulf %3, %4 : f32
                        %7 = arith.addf %5, %6 : f32
                        memref.store %7, %arg2[%arg3, %arg4, %arg5, %arg6] : memref<1x3x30x30xf32>
                      }
                    }
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
        check_correct(correct, module)

    def test_linalg_running1(self):
        h = w = 12
        k = 3
        with mlir_mod_ctx() as module:

            @mlir_func
            def conv2d(
                input: MemRef[1, 1, h, w, F32],
                kernel: MemRef[1, 1, k, k, F32],
                output: MemRef[1, 1, h - 2, w - 2, F32],
            ):
                linalg.conv_2d_nchw_fchw(input, kernel, outs=[output])
                return None

        module = self.backend.compile(
            module,
            kernel_name="conv2d",
            bufferize=True,
            lower_loops=True,
            lower_to_openmp=True,
            lower_to_llvm=True,
            linalg_lowering=LinalgLowering.Parallel,
        )
        invoker = self.backend.load(module)
        input = np.random.randint(low=0, high=10, size=(1, 1, h, w)).astype(np.float32)
        kernel = np.random.randint(low=0, high=4, size=(1, 1, 3, 3)).astype(np.float32)
        output = np.zeros((1, 1, h - 2, w - 2)).astype(np.float32)
        invoker.conv2d(input, kernel, output)
        correct = signal.correlate(input.squeeze(), kernel.squeeze(), mode="valid")
        assert np.allclose(output.squeeze(), correct)


TestOMP().test_runtime()
