import ctypes
from textwrap import dedent

import numpy as np

from nelli import F32, F64, Index
from nelli.mlir._mlir.execution_engine import ExecutionEngine
from nelli.mlir._mlir.runtime import get_ranked_memref_descriptor
from nelli.mlir.affine import RankedAffineMemRefValue as MemRef
from nelli.mlir.arith import constant
from nelli.mlir.func import mlir_func
from nelli.mlir.refbackend import LLVMJITBackend, Pipeline
from nelli.poly.affine import ForOp
from nelli.utils import mlir_gc
from nelli.utils import mlir_mod_ctx, find_ops
from util import check_correct


class TestLoops:
    def test_unroll(self):
        mlir_gc()
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=True)
            def single_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                for i in range(1, 10, 1):
                    v = mem[i, 0]
                    w = v * two
                    mem[i, 0] = w

        fors = find_ops(module, lambda op: op.name == "affine.for")
        assert len(fors) == 1
        for_op = ForOp(fors[0])

        def annotator(i, op):
            return None

        for_op.unroll_by_factor(5, annotator)

        # print(module)

        correct = dedent(
            """\
        #map = affine_map<(d0) -> (d0 + 1)>
        #map1 = affine_map<(d0) -> (d0 + 2)>
        #map2 = affine_map<(d0) -> (d0 + 3)>
        #map3 = affine_map<(d0) -> (d0 + 4)>
        module {
          func.func @single_loop(%arg0: index, %arg1: index) {
            %c1 = arith.constant 1 : index
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            %c0 = arith.constant 0 : index
            %0 = affine.load %alloca[%c1, %c0] : memref<10x10xf64>
            %1 = arith.mulf %0, %cst : f64
            %c0_0 = arith.constant 0 : index
            affine.store %1, %alloca[%c1, %c0_0] : memref<10x10xf64>
            %2 = affine.apply #map(%c1)
            %c0_1 = arith.constant 0 : index
            %3 = affine.load %alloca[%2, %c0_1] : memref<10x10xf64>
            %4 = arith.mulf %3, %cst : f64
            %c0_2 = arith.constant 0 : index
            affine.store %4, %alloca[%2, %c0_2] : memref<10x10xf64>
            %5 = affine.apply #map1(%c1)
            %c0_3 = arith.constant 0 : index
            %6 = affine.load %alloca[%5, %c0_3] : memref<10x10xf64>
            %7 = arith.mulf %6, %cst : f64
            %c0_4 = arith.constant 0 : index
            affine.store %7, %alloca[%5, %c0_4] : memref<10x10xf64>
            %8 = affine.apply #map2(%c1)
            %c0_5 = arith.constant 0 : index
            %9 = affine.load %alloca[%8, %c0_5] : memref<10x10xf64>
            %10 = arith.mulf %9, %cst : f64
            %c0_6 = arith.constant 0 : index
            affine.store %10, %alloca[%8, %c0_6] : memref<10x10xf64>
            %11 = affine.apply #map3(%c1)
            %c0_7 = arith.constant 0 : index
            %12 = affine.load %alloca[%11, %c0_7] : memref<10x10xf64>
            %13 = arith.mulf %12, %cst : f64
            %c0_8 = arith.constant 0 : index
            affine.store %13, %alloca[%11, %c0_8] : memref<10x10xf64>
            affine.for %arg2 = 6 to 10 {
              %c0_9 = arith.constant 0 : index
              %14 = affine.load %alloca[%arg2, %c0_9] : memref<10x10xf64>
              %15 = arith.mulf %14, %cst : f64
              %c0_10 = arith.constant 0 : index
              affine.store %15, %alloca[%arg2, %c0_10] : memref<10x10xf64>
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)
        mlir_gc()

    def test_inner_unroll(self):
        mlir_gc()
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=True)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                for i in range(1, 10, 1):
                    for j in range(1, 10, 1):
                        v = mem[i, j]
                        w = v * two
                        mem[i, j] = w

        fors = find_ops(module, lambda op: op.name == "affine.for")
        assert len(fors) == 2
        for_op = ForOp(fors[1])
        for_op.unroll_by_factor(5)

        # print(module)

        correct = dedent(
            """\
            #map = affine_map<(d0) -> (d0 + 1)>
            #map1 = affine_map<(d0) -> (d0 + 2)>
            #map2 = affine_map<(d0) -> (d0 + 3)>
            #map3 = affine_map<(d0) -> (d0 + 4)>
            module {
              func.func @double_loop(%arg0: index, %arg1: index) {
                %c1 = arith.constant 1 : index
                %cst = arith.constant 1.000000e+00 : f64
                %alloca = memref.alloca() : memref<10x10xf64>
                affine.for %arg2 = 1 to 10 {
                  %0 = affine.load %alloca[%arg2, %c1] : memref<10x10xf64>
                  %1 = arith.mulf %0, %cst : f64
                  affine.store %1, %alloca[%arg2, %c1] : memref<10x10xf64>
                  %2 = affine.apply #map(%c1)
                  %3 = affine.load %alloca[%arg2, %2] : memref<10x10xf64>
                  %4 = arith.mulf %3, %cst : f64
                  affine.store %4, %alloca[%arg2, %2] : memref<10x10xf64>
                  %5 = affine.apply #map1(%c1)
                  %6 = affine.load %alloca[%arg2, %5] : memref<10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  affine.store %7, %alloca[%arg2, %5] : memref<10x10xf64>
                  %8 = affine.apply #map2(%c1)
                  %9 = affine.load %alloca[%arg2, %8] : memref<10x10xf64>
                  %10 = arith.mulf %9, %cst : f64
                  affine.store %10, %alloca[%arg2, %8] : memref<10x10xf64>
                  %11 = affine.apply #map3(%c1)
                  %12 = affine.load %alloca[%arg2, %11] : memref<10x10xf64>
                  %13 = arith.mulf %12, %cst : f64
                  affine.store %13, %alloca[%arg2, %11] : memref<10x10xf64>
                  affine.for %arg3 = 6 to 10 {
                    %14 = affine.load %alloca[%arg2, %arg3] : memref<10x10xf64>
                    %15 = arith.mulf %14, %cst : f64
                    affine.store %15, %alloca[%arg2, %arg3] : memref<10x10xf64>
                  }
                }
                return
              }
            }
            """
        )
        check_correct(correct, module)
        mlir_gc()

    def test_skewing(self):
        mlir_gc()
        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                A: MemRef[(16, 16), F32],
                B: MemRef[(16, 16), F32],
                C: MemRef[(16, 16), F32],
            ):
                D = MemRef.alloca((32, 32), F32)
                E = MemRef.alloca((32, 32), F32)
                for i in range(0, 16):
                    for j in range(0, 16):
                        for k in range(0, 16):
                            a = A[i, k]
                            b = B[k, j]
                            C[i, j] += a * b
                            d = D[1, 1]
                            e = E[1, 1]
                            f = d + e

        for_ops = find_ops(module, lambda o: o.name == "affine.for")
        assert len(for_ops) == 3
        for_op = ForOp(for_ops[2])
        shifts = [1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4]
        for_op.skew(shifts)
        # module.operation.print(assume_verified=True, print_generic_op_form=True)
        correct = """\
        #map = affine_map<(d0) -> (d0 - 1)>
        #map1 = affine_map<(d0) -> (d0 - 4)>
        module {
          func.func @matmul(%arg0: memref<16x16xf32>, %arg1: memref<16x16xf32>, %arg2: memref<16x16xf32>) {
            %alloca = memref.alloca() : memref<32x32xf32>
            %alloca_0 = memref.alloca() : memref<32x32xf32>
            affine.for %arg3 = 0 to 16 {
              affine.for %arg4 = 0 to 16 {
                affine.for %arg5 = 1 to 4 {
                  %0 = affine.apply #map(%arg5)
                  %1 = affine.load %arg0[%arg3, %0] : memref<16x16xf32>
                  %2 = affine.load %arg1[%0, %arg4] : memref<16x16xf32>
                  %3 = affine.load %arg2[%arg3, %arg4] : memref<16x16xf32>
                  %4 = arith.mulf %1, %2 : f32
                  %5 = arith.addf %3, %4 : f32
                  affine.store %5, %arg2[%arg3, %arg4] : memref<16x16xf32>
                }
                affine.for %arg5 = 4 to 17 {
                  %0 = affine.apply #map(%arg5)
                  %1 = affine.load %arg0[%arg3, %0] : memref<16x16xf32>
                  %2 = affine.load %arg1[%0, %arg4] : memref<16x16xf32>
                  %3 = affine.load %arg2[%arg3, %arg4] : memref<16x16xf32>
                  %4 = arith.mulf %1, %2 : f32
                  %5 = arith.addf %3, %4 : f32
                  affine.store %5, %arg2[%arg3, %arg4] : memref<16x16xf32>
                  %6 = affine.apply #map1(%arg5)
                  %c1 = arith.constant 1 : index
                  %c1_1 = arith.constant 1 : index
                  %7 = affine.load %alloca[%c1, %c1_1] : memref<32x32xf32>
                  %c1_2 = arith.constant 1 : index
                  %c1_3 = arith.constant 1 : index
                  %8 = affine.load %alloca_0[%c1_2, %c1_3] : memref<32x32xf32>
                  %9 = arith.addf %7, %8 : f32
                }
                affine.for %arg5 = 17 to 20 {
                  %0 = affine.apply #map1(%arg5)
                  %c1 = arith.constant 1 : index
                  %c1_1 = arith.constant 1 : index
                  %1 = affine.load %alloca[%c1, %c1_1] : memref<32x32xf32>
                  %c1_2 = arith.constant 1 : index
                  %c1_3 = arith.constant 1 : index
                  %2 = affine.load %alloca_0[%c1_2, %c1_3] : memref<32x32xf32>
                  %3 = arith.addf %1, %2 : f32
                }
              }
            }
            return
          }
        }
        """
        check_correct(correct, module)

        backend = LLVMJITBackend()
        module = backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline().bufferize().lower_to_llvm(),
        )

        A = np.random.randint(low=0, high=10, size=(16, 16)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(16, 16)).astype(np.float32)
        C = np.zeros_like(B).astype(np.float32)

        A_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(A)))
        B_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(B)))
        C_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(C)))

        execution_engine = ExecutionEngine(module)
        execution_engine.invoke("matmul", A_ptr, B_ptr, C_ptr)
        c = A @ B
        # print(c, C)
        assert np.allclose(c, C)
        mlir_gc()
