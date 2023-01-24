import io
from functools import reduce
from typing import List, Set, Union

from sympy.core import (
    Mul,
    Expr,
    Add,
    Pow,
    Symbol,
    Number,
    Equality,
    LessThan,
    StrictLessThan,
    GreaterThan,
    StrictGreaterThan,
)
from sympy import Symbol as SySymbol
from sympy.core.relational import Relational
from z3 import (
    Sqrt,
    Int,
    Real,
    ForAll,
    And,
    Solver,
    sat,
    Or,
    QuantifierRef,
    Then,
    pp,
    PP,
    Formatter,
    BoolVal,
    substitute,
    Not,
    unknown,
    SolverFor
)
from z3.z3util import get_vars

def _sympy_to_z3_rec(var_map, e):
    rv = None

    if not isinstance(e, (Expr, Relational)):
        raise RuntimeError("Expected sympy Expr or Relational: " + repr(e))

    if isinstance(e, Symbol):
        rv = var_map.get(e.name)

        if rv is None:
            raise RuntimeError("No var was corresponds to symbol '" + str(e) + "'")

    elif isinstance(e, Number):
        rv = int(e)
    elif isinstance(e, Mul):
        rv = _sympy_to_z3_rec(var_map, e.args[0])

        for child in e.args[1:]:
            rv *= _sympy_to_z3_rec(var_map, child)
    elif isinstance(e, Add):
        rv = _sympy_to_z3_rec(var_map, e.args[0])

        for child in e.args[1:]:
            rv += _sympy_to_z3_rec(var_map, child)
    elif isinstance(e, Pow):
        term = _sympy_to_z3_rec(var_map, e.args[0])
        exponent = _sympy_to_z3_rec(var_map, e.args[1])

        if exponent == 0.5:
            # sqrt
            rv = Sqrt(term)
        else:
            rv = term**exponent
    elif isinstance(
        e,
        (Equality, LessThan, StrictLessThan, GreaterThan, StrictGreaterThan),
    ):
        lhs = _sympy_to_z3_rec(var_map, e.lhs)
        rhs = _sympy_to_z3_rec(var_map, e.rhs)
        rv = {
            Equality: lambda: lhs == rhs,
            LessThan: lambda: lhs <= rhs,
            StrictLessThan: lambda: lhs < rhs,
            GreaterThan: lambda: lhs >= rhs,
            StrictGreaterThan: lambda: lhs > rhs,
        }[type(e)]()

    if rv is None:
        raise RuntimeError(
            "Type '"
            + str(type(e))
            + "' is not yet implemented for convertion to a z3 expresion. "
            + "Subexpression was '"
            + str(e)
            + "'."
        )

    return rv


def sympy_to_z3(sympy_var_list, sympy_exp):
    z3_vars = []
    z3_var_map = {}

    for var in sympy_var_list:
        name = var.name
        z3_var = Int(name)
        z3_var_map[name] = z3_var
        z3_vars.append(z3_var)

    result_exp = _sympy_to_z3_rec(z3_var_map, sympy_exp)

    return z3_vars, result_exp


def build_z3_access_constraints(sympy_constraints: List[Relational]):
    assert len(sympy_constraints)
    z3_vars = set()
    constraints = []
    for constraint in sympy_constraints:
        z3_vars_, z3_rel = sympy_to_z3(list(constraint.free_symbols), constraint)
        constraints.append(z3_rel)
        z3_vars.update(z3_vars_)

    return constraints


def compose(*mem_ops: tuple["MemOp", "MemOp"]):
    alloc1 = (
        mem_ops[0].mlir_op.operands[1]
        if mem_ops[0].mlir_op.name == "affine.store"
        else mem_ops[0].mlir_op.operands[1]
    )
    alloc2 = (
        mem_ops[1].mlir_op.operands[0]
        if mem_ops[1].mlir_op.name == "affine.load"
        else mem_ops[1].mlir_op.operands[1]
    )
    assert alloc1 == alloc2

    quantified = set()
    constraints = []
    for m in mem_ops:
        z3_access_constraints = build_z3_access_constraints(m.sympy_access_constraints)
        quantified.update(m.quantified)
        constraints.extend(z3_access_constraints)

    assert len(mem_ops[0].operands) == len(mem_ops[1].operands)
    # TODO(max): check idx positions
    for idx_m1, idx_m2 in zip(mem_ops[0].operands, mem_ops[1].operands):
        constraints.append(Int(idx_m1.name) == Int(idx_m2.name))

    if len(quantified):
        quantified = [Int(s.name) for s in quantified]
    return quantified, constraints
    #     return ForAll(quantified, And(*constraints))
    # else:
    #     return constraints


def pp_z3(a):
    out = io.StringIO()
    pp = PP()
    pp.max_width = 100
    pp.bounded = True
    pp(out, Formatter()(a))
    print(out.getvalue())


# https://github.com/pysmt/pysmt/blob/97088bf3b0d64137c3099ef79a4e153b10ccfda7/examples/efsmt.py
def efsmt(ys, phi, maxloops=None):
    """Solving exists xs. forall ys. phi(x, y)"""
    xs = [x for x in get_vars(phi) if x not in ys]
    E = SolverFor("LIA")
    F = SolverFor("LIA")
    E.add(BoolVal(True))
    loops = 0
    while maxloops is None or loops <= maxloops:
        loops += 1
        eres = E.check()
        if eres == sat:
            emodel = E.model()
            sub_phi = substitute(phi, [(x, emodel.eval(x, True)) for x in xs])
            F.push()
            F.add(Not(sub_phi))
            fres = F.check()
            if fres == sat:
                fmodel = F.model()
                sub_phi = substitute(phi, [(y, fmodel.eval(y, True)) for y in ys])
                E.add(sub_phi)
            else:
                return fres, [(x, emodel.eval(x, True)) for x in xs]
            F.pop()
        else:
            return eres
    return unknown


def solve_system(quants, cons):
    pp_z3(cons)
    print()
    print(efsmt(list(quants), And(*cons)))
    #
    # if isinstance(constraints, list):
    #     s = Solver()
    #     for c in constraints:
    #         s.add(c)
    # else:
    #     s = Then("qe", "smt").solver()
    #     s.add(constraints)
    # print(s.check())
