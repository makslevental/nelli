from typing import List

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
from sympy.core.relational import Relational
from z3 import Sqrt, Int


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
    z3_vars = set()
    constraints = []
    for constraint in sympy_constraints:
        z3_vars_, z3_rel = sympy_to_z3(list(constraint.free_symbols), constraint)
        constraints.append(z3_rel)
        z3_vars.update(z3_vars_)

    return constraints
