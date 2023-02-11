from textwrap import dedent

from loopy.mlir import F64, Index
from loopy.mlir.arith import constant, ArithValue
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import MemRefValue as MemRef
from loopy.mlir.affine import affine_range, affine_endfor
from loopy.mlir.scf import scf_if, scf_endif_branch, scf_endif
from loopy.utils import mlir_mod_ctx
from util import check_correct


class TestLoops:
    def test_without_rewriting_ast1(self):
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=False)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                for i in affine_range(1, 10, 1):
                    for j in affine_range(1, 10, 1):
                        v = mem[i, j]
                        w = v * two
                        mem[i, j] = w
                        affine_endfor()
                    affine_endfor()

        correct = dedent(
            """\
        module {
          func.func @double_loop(%arg0: index, %arg1: index) {
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            affine.for %arg2 = 1 to 10 {
              affine.for %arg3 = 1 to 10 {
                %1 = affine.load %0[%arg2, %arg3] : memref<10x10xf64>
                %2 = arith.mulf %1, %cst : f64
                affine.store %2, %0[%arg2, %arg3] : memref<10x10xf64>
              }
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_with_rewriting_ast1(self):
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

        correct = dedent(
            """\
        module {
          func.func @double_loop(%arg0: index, %arg1: index) {
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            affine.for %arg2 = 1 to 10 {
              affine.for %arg3 = 1 to 10 {
                %1 = affine.load %0[%arg2, %arg3] : memref<10x10xf64>
                %2 = arith.mulf %1, %cst : f64
                affine.store %2, %0[%arg2, %arg3] : memref<10x10xf64>
              }
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_without_rewriting_ast2(self):
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=False)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                for i in affine_range(1, 10, 1):
                    for j in affine_range(1, 10, 1):
                        if scf_if(ArithValue(i) < ArithValue(j)):
                            v = mem[i, j]
                            w = v * two
                            mem[i, j] = w
                            scf_endif_branch()
                            scf_endif()
                        affine_endfor()
                    affine_endfor()
                return None

        correct = dedent(
            """\
        module {
          func.func @double_loop(%arg0: index, %arg1: index) {
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            affine.for %arg2 = 1 to 10 {
              affine.for %arg3 = 1 to 10 {
                %1 = arith.cmpi ult, %arg2, %arg3 : index
                scf.if %1 {
                  %2 = affine.load %0[%arg2, %arg3] : memref<10x10xf64>
                  %3 = arith.mulf %2, %cst : f64
                  affine.store %3, %0[%arg2, %arg3] : memref<10x10xf64>
                }
              }
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_with_rewriting_ast2(self):
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=True)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                for i in range(1, 10, 1):
                    for j in range(1, 10, 1):
                        if i < j:
                            v = mem[i, j]
                            w = v * two
                            mem[i, j] = w

        correct = dedent(
            """\
        module {
          func.func @double_loop(%arg0: index, %arg1: index) {
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            affine.for %arg2 = 1 to 10 {
              affine.for %arg3 = 1 to 10 {
                %1 = arith.cmpi ult, %arg2, %arg3 : index
                scf.if %1 {
                  %2 = affine.load %0[%arg2, %arg3] : memref<10x10xf64>
                  %3 = arith.mulf %2, %cst : f64
                  affine.store %3, %0[%arg2, %arg3] : memref<10x10xf64>
                }
              }
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_with_rewriting_ast3(self):
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=True)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                for i in range(1, 10, 1):
                    for j in range(1, 10, 1):
                        if i < j:
                            v = mem[i, j]
                            w = v * two
                            mem[i, j] = w
                        else:
                            v = mem[j, i]
                            mem[j, i] = v

        correct = dedent(
            """\
        module {
          func.func @double_loop(%arg0: index, %arg1: index) {
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            affine.for %arg2 = 1 to 10 {
              affine.for %arg3 = 1 to 10 {
                %1 = arith.cmpi ult, %arg2, %arg3 : index
                scf.if %1 {
                  %2 = affine.load %0[%arg2, %arg3] : memref<10x10xf64>
                  %3 = arith.mulf %2, %cst : f64
                  affine.store %3, %0[%arg2, %arg3] : memref<10x10xf64>
                } else {
                  %2 = affine.load %0[%arg3, %arg2] : memref<10x10xf64>
                  affine.store %2, %0[%arg3, %arg2] : memref<10x10xf64>
                }
              }
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_with_rewriting_ast4(self):
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=True)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                for i in range(1, 10, 1):
                    for j in range(1, 10, 1):
                        if M < N:
                            v = mem[i, j]
                            w = v * two
                            mem[i, j] = w
                        else:
                            v = mem[j, i]
                            mem[j, i] = v

        correct = dedent(
            """\
        module {
          func.func @double_loop(%arg0: index, %arg1: index) {
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            affine.for %arg2 = 1 to 10 {
              affine.for %arg3 = 1 to 10 {
                %1 = arith.cmpi ult, %arg0, %arg1 : index
                scf.if %1 {
                  %2 = affine.load %0[%arg2, %arg3] : memref<10x10xf64>
                  %3 = arith.mulf %2, %cst : f64
                  affine.store %3, %0[%arg2, %arg3] : memref<10x10xf64>
                } else {
                  %2 = affine.load %0[%arg3, %arg2] : memref<10x10xf64>
                  affine.store %2, %0[%arg3, %arg2] : memref<10x10xf64>
                }
              }
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_with_rewriting_ast5(self):
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=True)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                if M < N:
                    for i in range(1, 10, 1):
                        for j in range(1, 10, 1):
                            v = mem[i, j]
                            w = v * two
                            mem[i, j] = w

        print(module)
        correct = dedent(
            """\
        module {
          func.func @double_loop(%arg0: index, %arg1: index) {
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            %1 = arith.cmpi ult, %arg0, %arg1 : index
            scf.if %1 {
              affine.for %arg2 = 1 to 10 {
                affine.for %arg3 = 1 to 10 {
                  %2 = affine.load %0[%arg2, %arg3] : memref<10x10xf64>
                  %3 = arith.mulf %2, %cst : f64
                  affine.store %3, %0[%arg2, %arg3] : memref<10x10xf64>
                }
              }
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_metaprogramming(self):
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=False)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                for _ in range(2):
                    mem = MemRef.alloca([10, 10], F64)
                for _ in range(2):
                    for i in affine_range(1, 10, 1):
                        for j in affine_range(1, 10, 1):
                            v = mem[i, j]
                            w = v * two
                            mem[i, j] = w
                            affine_endfor()
                        affine_endfor()

        correct = dedent(
            """\
        module {
          func.func @double_loop(%arg0: index, %arg1: index) {
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            %alloca_0 = memref.alloca() : memref<10x10xf64>
            affine.for %arg2 = 1 to 10 {
              affine.for %arg3 = 1 to 10 {
                %0 = affine.load %alloca_0[%arg2, %arg3] : memref<10x10xf64>
                %1 = arith.mulf %0, %cst : f64
                affine.store %1, %alloca_0[%arg2, %arg3] : memref<10x10xf64>
              }
            }
            affine.for %arg2 = 1 to 10 {
              affine.for %arg3 = 1 to 10 {
                %0 = affine.load %alloca_0[%arg2, %arg3] : memref<10x10xf64>
                %1 = arith.mulf %0, %cst : f64
                affine.store %1, %alloca_0[%arg2, %arg3] : memref<10x10xf64>
              }
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)
