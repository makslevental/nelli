from textwrap import dedent

from loopy.loopy_mlir.ir import InsertionPoint
from loopy.mlir.arith import constant
from loopy.mlir.openmp.omp import ParallelOp
from loopy.mlir.openmp._omp_ops_gen import TerminatorOp
from loopy.utils import mlir_mod_ctx
from util import check_correct


class TestOMP:
    def test_basic(self):
        with mlir_mod_ctx() as module:
            p = ParallelOp(num_threads=12)
            with InsertionPoint.at_block_begin(p.body):
                two = constant(1.0)
                TerminatorOp()

        # print(module)
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
        check_correct(correct, module)
