from textwrap import dedent

from loopy.mlir import F64, Index
from loopy.mlir.arith import constant, ArithValue
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import MemRefValue as MemRef
from loopy.mlir.affine import affine_endfor
from loopy.mlir.scf import scf_if, scf_endif_branch, scf_endif
from loopy.poly.affine import ForOp
from loopy.utils import mlir_mod_ctx, find_ops
from util import check_correct


class TestLoops:
    def test_unroll(self):
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
            print(i, op)
            return None

        for_op.unroll_by_factor(5, annotator)

        print(module)

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

    def test_inner_unroll(self):
        op = None
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
