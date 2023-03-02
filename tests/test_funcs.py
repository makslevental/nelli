from textwrap import dedent

from nelli import F32
from nelli.mlir.arith import constant
from nelli.mlir.func import mlir_func
from nelli.utils import mlir_mod_ctx
from util import check_correct


class TestFunc:
    def test_mlir_func(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def method():
                constant(1.0, type=F32)

        correct = dedent(
            """\
        module {
          func.func @method() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_mlir_func_dont_build(self):
        with mlir_mod_ctx() as module:

            @mlir_func(build=False)
            def method():
                constant(1.0, type=F32)

        correct = dedent(
            """\
        module {
        }
        """
        )
        check_correct(correct, module)

    def test_mlir_func_explicit_build(self):
        with mlir_mod_ctx() as module:

            @mlir_func(build=False)
            def method():
                constant(1.0, type=F32)

            method._build_func_op()

        correct = dedent(
            """\
        module {
          func.func @method() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_mlir_func_call(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def method():
                constant(1.0, type=F32)

            method()

        correct = dedent(
            """\
        module {
          func.func @method() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
          func.call @method() : () -> ()
        }
        """
        )
        check_correct(correct, module)

    def test_mlir_func_args(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def method(x: F32):
                y = constant(1.0, type=F32)
                z = x + y

        correct = dedent(
            """\
        module {
          func.func @method(%arg0: f32) {
            %cst = arith.constant 1.000000e+00 : f32
            %0 = arith.addf %arg0, %cst : f32
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_mlir_func_args_return(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def method(x: F32):
                y = constant(1.0, type=F32)
                z = x + y
                return z

        correct = dedent(
            """\
        module {
          func.func @method(%arg0: f32) -> f32 {
            %cst = arith.constant 1.000000e+00 : f32
            %0 = arith.addf %arg0, %cst : f32
            return %0 : f32
          }
        }
        """
        )
        check_correct(correct, module)

    def test_mlir_func_args_call(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def method():
                constant(1.0, type=F32)

            method()

        correct = dedent(
            """\
        module {
          func.func @method() {
            %cst = arith.constant 1.000000e+00 : f32
            return
          }
          func.call @method() : () -> ()
        }
        """
        )
        check_correct(correct, module)

    def test_mlir_func_args_call_return(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def method(x: F32):
                y = constant(1.0, type=F32)
                z = x + y
                return z

            x = constant(1.0, type=F32)
            z = method(x)

        correct = dedent(
            """\
        module {
          func.func @method(%arg0: f32) -> f32 {
            %cst_0 = arith.constant 1.000000e+00 : f32
            %1 = arith.addf %arg0, %cst_0 : f32
            return %1 : f32
          }
          %cst = arith.constant 1.000000e+00 : f32
          %0 = func.call @method(%cst) : (f32) -> f32
        }
        """
        )
        check_correct(correct, module)
