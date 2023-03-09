from textwrap import dedent

from nelli import F32
from nelli.mlir._mlir.dialects import linalg
from nelli.mlir.arith import constant
from nelli.mlir.func import declare, mlir_func
from nelli.mlir.gpu import (
    Module as GPUModule,
)
from nelli.mlir.memref import (
    MemRefValue as MemRef,
    UnrankedMemRefValue as UnrankedMemRef,
    cast,
)
from nelli.mlir.module import Module
from nelli.mlir.tensor import TensorValue as Tensor
from nelli.mlir.transform import match, tile_linalg_to_scf_for, lazy_sequence
from nelli.utils import mlir_mod_ctx
from util import check_correct


class TestModules:
    def test_basic(self):
        with mlir_mod_ctx() as module:

            class MyClass1(Module):
                def method(self):
                    constant(1.0, type=F32)

            m = MyClass1()

        correct = dedent(
            """\
        module {
          module @MyClass1 {
            func.func @method() {
              %cst = arith.constant 1.000000e+00 : f32
              return
            }
          }
        }
        """
        )
        check_correct(correct, module)

    def test_basic2(self):
        with mlir_mod_ctx() as module:

            class MyClass1(Module):
                def method(self):
                    constant(1.0, type=F32)

            m = MyClass1()

        correct = dedent(
            """\
        module @MyClass1 {
          func.func @method() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
        }
        """
        )
        check_correct(correct, m.mlir_module)

    def test_basic_call(self):
        with mlir_mod_ctx() as module:

            class MyClass1(Module):
                def method(self):
                    constant(1.0, type=F32)

            mod = MyClass1(mlir_module=module)
            mod.method()

        correct = dedent(
            """\
        module @MyClass1 {
          func.func @method() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
          func.call @method() : () -> ()
        }
        """
        )
        check_correct(correct, module)

    def test_hand_def(self):
        with mlir_mod_ctx() as module:

            class MyClass1(Module):
                def method1(self):
                    constant(1.0, type=F32)

            MyClass1(mlir_module=module)

        correct = dedent(
            """\
        module @MyClass1 {
          func.func @method1() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_mixed_def(self):
        with mlir_mod_ctx() as module:

            class MyClass1(Module):
                def method2(self):
                    constant(1.0, type=F32)

            MyClass1()

            @mlir_func
            def method1():
                constant(1.0, type=F32)

        correct = dedent(
            """\
        module {
          module @MyClass1 {
            func.func @method2() {
              %cst = arith.constant 1.000000e+00 : f32
              return
            }
          }
          func.func @method1() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_calling_mixed_def(self):
        with mlir_mod_ctx() as module:

            class MyClass1(Module):
                def method1(self):
                    constant(1.0, type=F32)

                def method2(self):
                    self.method1()

            MyClass1(mlir_module=module)

        correct = dedent(
            """\
        module @MyClass1 {
          func.func @method1() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
          func.func @method2() {
            call @method1() : () -> ()
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_args(self):
        with mlir_mod_ctx() as module:

            class MyClass1(Module):
                def conv_2d_nhwc_hwcf(
                    self,
                    input: Tensor[(1, 225, 225, 3), F32],
                    kernel: Tensor[(3, 3, 3, 32), F32],
                    output: Tensor[(1, 112, 112, 32), F32],
                ):
                    return linalg.conv_2d_nhwc_hwcf(input, kernel, outs=[output])

                @lazy_sequence
                def basic(target, *extra_args):
                    m = match(target, ["linalg.conv_2d_nhwc_hwcf"])
                    tiled = tile_linalg_to_scf_for(m, sizes=[0, 1, 8, 8, 1])

            MyClass1(mlir_module=module)

        correct = dedent(
            """\
        module @MyClass1 {
          transform.sequence  failures(propagate) attributes {transform.target_tag = "basic"} {
          ^bb0(%arg0: !pdl.operation):
            %0 = transform.structured.match ops{["linalg.conv_2d_nhwc_hwcf"]} in %arg0 : (!pdl.operation) -> !pdl.operation
            %tiled_linalg_op, %loops:4 = transform.structured.tile %0[0, 1, 8, 8, 1] : (!pdl.operation) -> (!pdl.operation, !transform.op<"scf.for">, !transform.op<"scf.for">, !transform.op<"scf.for">, !transform.op<"scf.for">)
          }
          func.func @conv_2d_nhwc_hwcf(%arg0: tensor<1x225x225x3xf32>, %arg1: tensor<3x3x3x32xf32>, %arg2: tensor<1x112x112x32xf32>) -> tensor<1x112x112x32xf32> {
            %0 = linalg.conv_2d_nhwc_hwcf ins(%arg0, %arg1 : tensor<1x225x225x3xf32>, tensor<3x3x3x32xf32>) outs(%arg2 : tensor<1x112x112x32xf32>) -> tensor<1x112x112x32xf32>
            return %0 : tensor<1x112x112x32xf32>
          }
        }
        """
        )
        check_correct(correct, module)

    def test_declare_calls(self):
        scale = 1
        M, N, K = 4 * scale, 16 * scale, 8 * scale
        dynamic_2d_memref = MemRef[(-1, -1), F32]
        unranked_memref = UnrankedMemRef[F32]

        with mlir_mod_ctx() as module:
            print_memref_32 = declare("printMemrefF32", [unranked_memref])
            fill_resource_2d_float = declare(
                "fillResource2DFloat", [dynamic_2d_memref, F32]
            )

            class MyClass1(Module):
                def matmul(
                    self,
                    A: MemRef[(M, N), F32],
                    B: MemRef[(N, K), F32],
                    C: MemRef[(M, K), F32],
                ):
                    zero = constant(0.0, type=F32)
                    one = constant(1.0, type=F32)
                    two = constant(2.0, type=F32)

                    A_cast = cast(A, dynamic_2d_memref.mlir_type)
                    B_cast = cast(B, dynamic_2d_memref.mlir_type)
                    C_cast = cast(C, dynamic_2d_memref.mlir_type)

                    fill_resource_2d_float(A_cast, one)
                    fill_resource_2d_float(B_cast, two)
                    fill_resource_2d_float(C_cast, zero)

                    A_cast = cast(A, unranked_memref.mlir_type)
                    B_cast = cast(B, unranked_memref.mlir_type)
                    C_cast = cast(C, unranked_memref.mlir_type)

                    print_memref_32(A_cast)
                    print_memref_32(B_cast)
                    print_memref_32(C_cast)

                    linalg.matmul(A, B, outs=[C])

                    print_memref_32(C_cast)

            m = MyClass1(mlir_module=module)

        correct = dedent(
            """\
        module @MyClass1 {
          func.func private @printMemrefF32(memref<*xf32>)
          func.func private @fillResource2DFloat(memref<?x?xf32>, f32)
          func.func @matmul(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) {
            %cst = arith.constant 0.000000e+00 : f32
            %cst_0 = arith.constant 1.000000e+00 : f32
            %cst_1 = arith.constant 2.000000e+00 : f32
            %cast = memref.cast %arg0 : memref<4x16xf32> to memref<?x?xf32>
            %cast_2 = memref.cast %arg1 : memref<16x8xf32> to memref<?x?xf32>
            %cast_3 = memref.cast %arg2 : memref<4x8xf32> to memref<?x?xf32>
            call @fillResource2DFloat(%cast, %cst_0) : (memref<?x?xf32>, f32) -> ()
            call @fillResource2DFloat(%cast_2, %cst_1) : (memref<?x?xf32>, f32) -> ()
            call @fillResource2DFloat(%cast_3, %cst) : (memref<?x?xf32>, f32) -> ()
            %cast_4 = memref.cast %arg0 : memref<4x16xf32> to memref<*xf32>
            %cast_5 = memref.cast %arg1 : memref<16x8xf32> to memref<*xf32>
            %cast_6 = memref.cast %arg2 : memref<4x8xf32> to memref<*xf32>
            call @printMemrefF32(%cast_4) : (memref<*xf32>) -> ()
            call @printMemrefF32(%cast_5) : (memref<*xf32>) -> ()
            call @printMemrefF32(%cast_6) : (memref<*xf32>) -> ()
            linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%arg0, %arg1 : memref<4x16xf32>, memref<16x8xf32>) outs(%arg2 : memref<4x8xf32>)
            call @printMemrefF32(%cast_6) : (memref<*xf32>) -> ()
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_nested(self):
        with mlir_mod_ctx() as module:

            class MyClass1(GPUModule):
                def method(self):
                    constant(1.0, type=F32)

            MyClass1()

        correct = dedent(
            """\
        module {
          gpu.module @MyClass1 {
            gpu.func @method() kernel {
              %cst = arith.constant 1.000000e+00 : f32
              gpu.return
            }
          }
        }
        """
        )
        check_correct(correct, module)

    def test_lazy(self):
        with mlir_mod_ctx() as module:

            class MyClass1(Module):
                def method(self):
                    constant(1.0, type=F32)

            m = MyClass1(lazy=True, mlir_module=module)

        correct = dedent(
            """\
        module @MyClass1 {
        }
        """
        )
        check_correct(correct, module)

        m.method()
        correct = dedent(
            """\
        module @MyClass1 {
          func.func @method() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
        }
        """
        )
        check_correct(correct, module)
