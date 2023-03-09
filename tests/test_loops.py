from textwrap import dedent

from nelli import F64, Index, F32
from nelli.mlir.affine import (
    affine_range,
    end_for as affine_endfor,
    RankedAffineMemRefValue as AffineMemRef,
)
from nelli.mlir.arith import constant, ArithValue
from nelli.mlir.func import mlir_func
from nelli.mlir.memref import MemRefValue as MemRef
from nelli.mlir.passes import Pipeline
from nelli.mlir.scf import (
    scf_if,
    scf_endif_branch,
    scf_endif,
    par_range as parfor,
)
from nelli.mlir.utils import run_pipeline_with_repro_report
from nelli.utils import mlir_mod_ctx
from util import check_correct


class TestLoops:
    def test_without_rewriting_ast1(self):
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=False)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = AffineMemRef.alloca([10, 10], F64)
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
                mem = AffineMemRef.alloca([10, 10], F64)
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
                mem = AffineMemRef.alloca([10, 10], F64)
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
                mem = AffineMemRef.alloca([10, 10], F64)
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
                mem = AffineMemRef.alloca((10, 10), F64)
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
                mem = AffineMemRef.alloca((10, 10), F64)
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
                mem = AffineMemRef.alloca((10, 10), F64)
                if M < N:
                    for i in range(1, 10, 1):
                        for j in range(1, 10, 1):
                            v = mem[i, j]
                            w = v * two
                            mem[i, j] = w

        # print(module)
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
                    mem = AffineMemRef.alloca((10, 10), F64)
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

    def test_parfor(self):
        with mlir_mod_ctx() as module:

            @mlir_func(range_ctor=parfor)
            def mat_product(
                A: MemRef[(4, 16), F32],
                B: MemRef[(16, 8), F32],
                C: MemRef[(4, 8), F32],
            ):
                for i, j in range([0, 0], [4, 8]):
                    a = A[i, j]
                    b = B[i, j]
                    C[i, j] = a * b

        module = run_pipeline_with_repro_report(
            module, Pipeline().canonicalize().materialize()
        )
        correct = dedent(
            """\
        module {
          func.func @mat_product(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) {
            %c0 = arith.constant 0 : index
            %c4 = arith.constant 4 : index
            %c8 = arith.constant 8 : index
            %c1 = arith.constant 1 : index
            scf.parallel (%arg3, %arg4) = (%c0, %c0) to (%c4, %c8) step (%c1, %c1) {
              %0 = memref.load %arg0[%arg3, %arg4] : memref<4x16xf32>
              %1 = memref.load %arg1[%arg3, %arg4] : memref<16x8xf32>
              %2 = arith.mulf %0, %1 : f32
              memref.store %2, %arg2[%arg3, %arg4] : memref<4x8xf32>
              scf.yield
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_matmul(self):
        with mlir_mod_ctx() as module:

            M, N, K = 4, 16, 8

            @mlir_func
            def matmul(
                A: MemRef[(M, N), F32],
                B: MemRef[(N, K), F32],
                C: MemRef[(M, K), F32],
            ):
                for i in range(M):
                    for j in range(N):
                        for k in range(K):
                            a = A[i, j]
                            b = B[i, j]
                            c = C[i, k]
                            d = a * b
                            e = c + d
                            C[i, k] = e

        correct = dedent(
            """\
        module {
          func.func @matmul(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) {
            affine.for %arg3 = 0 to 4 {
              affine.for %arg4 = 0 to 16 {
                affine.for %arg5 = 0 to 8 {
                  %0 = memref.load %arg0[%arg3, %arg4] : memref<4x16xf32>
                  %1 = memref.load %arg1[%arg3, %arg4] : memref<16x8xf32>
                  %2 = memref.load %arg2[%arg3, %arg5] : memref<4x8xf32>
                  %3 = arith.mulf %0, %1 : f32
                  %4 = arith.addf %2, %3 : f32
                  memref.store %4, %arg2[%arg3, %arg5] : memref<4x8xf32>
                }
              }
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)
