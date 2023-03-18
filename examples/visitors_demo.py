import contextlib
import inspect
from typing import Optional

from nelli.mlir._mlir import ir
from nelli.mlir._mlir.dialects import (
    arith,
    bufferization,
    builtin,
    cf,
    complex,
    func,
    math,
    memref,
    ml_program,
    pdl,
    quant,
    scf,
    shape,
    sparse_tensor,
    tensor,
    tosa,
    vector,
)
from nelli.mlir.ast.visitors import (
    DialectVisitor,
    ArithDialectVisitor,
    AllDialectVisitor,
)

dialects = (
    arith,
    bufferization,
    builtin,
    cf,
    complex,
    func,
    math,
    memref,
    ml_program,
    pdl,
    quant,
    scf,
    shape,
    sparse_tensor,
    tensor,
    tosa,
    vector,
)


from textwrap import dedent, indent


src = dedent(
    """\
module {
  func.func @loop_unroll_op() {
    %c0 = arith.constant 0 : index
    %c42 = arith.constant 42 : index
    %c5 = arith.constant 5 : index
    scf.for %arg0 = %c0 to %c42 step %c5 {
      %0 = arith.addi %arg0, %arg0 : index
    }
    return
  }
  transform.sequence  failures(propagate) attributes {transform.target_tag = "basic"} {
  ^bb0(%arg0: !pdl.operation):
    %0 = transform.structured.match ops{["arith.addi"]} in %arg0 : (!pdl.operation) -> !pdl.operation
    %1 = transform.loop.get_parent_for %0 : (!pdl.operation) -> !transform.op<"scf.for">
    transform.loop.unroll %1 {factor = 4 : i64} : !transform.op<"scf.for">
  }
}
"""
)


@contextlib.contextmanager
def mlir_mod_ctx(src: Optional[str] = None):
    if src is not None:
        module = ir.Module.parse(src)
    else:
        module = ir.Module.create()
    with ir.InsertionPoint(module.body):
        yield module


with mlir_mod_ctx(src) as module:
    pass


class myArithDialectVisitor(ArithDialectVisitor):
    def visit_AddIOp(self, op: arith.AddIOp):
        print(op)


all_dialect_visitor = AllDialectVisitor(arith_visitor_ctor=myArithDialectVisitor)

all_dialect_visitor.visit(module.operation)
