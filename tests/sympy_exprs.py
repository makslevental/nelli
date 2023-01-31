from sympy import Eq
from z3 import Int

from loopy.mlir import arith
from loopy.sympy_ import SymPyVisitor, d0, d1, s0, s1
from loopy.z3_ import build_z3_access_constraints


class TestSympyConversion:
    def test_expr(self):
        expr = 2 * d0 + 3 * d1 - 5 - s0 + 3 * s1
        res = SymPyVisitor(symbol_factory=Int).visit(expr)
        print(res)

    def test_rel(self):
        expr = 2 * d0 + 3 * d1 - 5 - s0 + 3 * s1 <= 5
        res = SymPyVisitor(symbol_factory=Int).visit(expr)
        print(res)

    def test_constraints(self):
        cons = build_z3_access_constraints(
            [
                2 * d0 + 3 * d1 - 5 - s0 + 3 * s1 <= 5,
                Eq(-5 - s0 + 3 * s1, 5),
                2 * d0 + 3 * d1 >= 5,
            ]
        )
        print(cons)

    def test_affine(self):
        from loopy import ir

        expr = 2 * d0 + 3 * d1 - 5 - s0 + 3 * s1

        module = ir.Module.create()
        with ir.InsertionPoint(module.body):
            i = arith.constant(1, index=True).mlir_value
            j = arith.constant(2, index=True).mlir_value
            k = arith.constant(3, index=True).mlir_value
            l = arith.constant(4, index=True).mlir_value
            res = expr @ (i, j, k, l)
        print(module)
