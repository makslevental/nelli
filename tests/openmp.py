import ctypes
from pathlib import Path
from textwrap import dedent

import numpy as np

from loopy.loopy_mlir import _mlir_libs
from loopy.loopy_mlir.dialects import _arith_ops_gen as arith_dialect, linalg
from loopy.loopy_mlir.execution_engine import ExecutionEngine
from loopy.loopy_mlir.ir import InsertionPoint, Module
from loopy.loopy_mlir.runtime import get_ranked_memref_descriptor
from loopy.mlir import I32, Index, F32
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
    backend = LLVMJITBackend()

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
        print(module)

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
        print(module)
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
        lib_path = Path(_mlir_libs.__file__).parent / f"libomp.{shlib_ext()}"
        assert lib_path.exists()
        execution_engine = ExecutionEngine(module, shared_libs=[str(lib_path)])

        input = np.zeros((2, 3, 10)).astype(np.float32)
        input_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(input)))
        execution_engine.invoke("ws_loop", input_ptr)
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
