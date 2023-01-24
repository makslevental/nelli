import io
from functools import reduce
from typing import List, Set, Union, Optional

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
from sympy import Symbol as SySymbol, Matrix, zeros, pprint
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
    SolverFor,
    simplify,
    Contains,
    is_eq,
    is_bool,
    is_const,
    is_lt,
    is_le,
    is_gt,
    is_ge,
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
        z3_rel = simplify(z3_rel, arith_lhs=False, sort_sums=True)
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
    canon = {}
    for idx_m1, idx_m2 in zip(mem_ops[0].operands, mem_ops[1].operands):
        for i, c in enumerate(constraints):
            canonoical_idx = Int(idx_m1.name)
            canon[canonoical_idx] = []
            constraints[i] = substitute(c, (Int(idx_m2.name), canonoical_idx))

    new_constraints = []
    for i, c in enumerate(constraints):
        for ca in canon:
            if ca in get_vars(c):
                assert c.arg(0) == ca, f"canon sym {ca} in the wrong place: {c}"
                assert is_eq(c), f"unexpected canon expression type {c}"
                canon[ca].append(c)
                break
        else:
            new_constraints.append(c)

    for ca, cons in canon.items():
        assert len(cons) == 2, f"unexpected number of canon constraints {cons=}"
        new_constraints.insert(0, substitute(cons[0], (ca, cons[1].arg(1))))

    for i, n in enumerate(new_constraints):
        new_constraints[i] = simplify(n, arith_lhs=True, sort_sums=True)

    if len(quantified):
        quantified = [Int(s.name) for s in quantified]
    return quantified, new_constraints


def pp_z3(a):
    out = io.StringIO()
    pp = PP()
    pp.max_width = 100
    pp.bounded = True
    pp(out, Formatter()(a))
    return out.getvalue()


def print_z3_constraints(cons: list):
    cons[0], cons[1] = cons[1], cons[0]
    print("z3affinemap={")
    for i, c in enumerate(cons):
        print(
            pp_z3(simplify(c, arith_lhs=True, arith_ineq_lhs=True, sort_sums=True)),
            end=", \n" if i < len(cons) - 1 else "\n",
        )
    print("}")


def print_z3_constraints_as_tableau(cons: list, quants: Optional[list] = None):
    if quants is None:
        quants = []
    all_vars = set()
    for con in cons:
        for v in get_vars(con):
            all_vars.add(v)

    def trailing_tick(s):
        s = str(s)
        if s.endswith("'"):
            return 1, s[:-1]
        else:
            return 0, s

    all_vars = {
        v: i for i, v in enumerate(sorted(all_vars, key=trailing_tick, reverse=False))
    }
    tab = Matrix.zeros(rows=len(cons) + 1, cols=len(all_vars) + 2)
    for v in all_vars:
        tab[0, all_vars[v]] = Symbol(str(v))
    tab[0, -1] = Symbol("const")
    tab[0, -2] = Symbol("")
    for i, con in enumerate(cons, start=1):
        assert is_bool(con), f"unexpected expr type {con=}"
        lhs, rhs = con.arg(0), con.arg(1)
        assert is_const(rhs)
        if is_eq(con):
            rel = "=="
        elif is_lt(con):
            # rel = "<"
            rel = ">"
        elif is_le(con):
            # rel = "<="
            rel = ">="
        elif is_gt(con):
            rel = ">"
        elif is_ge(con):
            rel = ">="
        else:
            raise RuntimeError(f"unexpected constraint type {con=}")

        tab[i, -2] = Symbol(rel)
        swap = 1
        if is_lt(con) or is_le(con):
            swap = -1

        tab[i, -1] = int(str(rhs)) * swap

        if lhs.num_args() == 0:
            tab[i, all_vars[lhs]] = 1 * swap * Symbol(str(lhs))
        else:
            for j in range(lhs.num_args()):
                term = lhs.arg(j)
                syms = get_vars(term)
                sym = syms[0]
                assert len(syms) == 1, f"unexpected number of syms: {syms=}"
                if term.num_args() == 0:
                    # tab[i, all_vars[sym]] = Symbol(str(term))
                    tab[i, all_vars[sym]] = 1 * swap * Symbol(str(sym))
                elif term.num_args() == 1:
                    # negative (-1)
                    # tab[i, all_vars[sym]] = Symbol(str(term))
                    tab[i, all_vars[sym]] = -1 * swap * Symbol(str(sym))
                elif term.num_args() == 2:
                    # coefficient (term.arg(0))
                    # tab[i, all_vars[sym]] = Symbol(str(term))
                    tab[i, all_vars[sym]] = int(str(term.arg(0))) * Symbol(str(sym))

    quant_cols = {all_vars[q]: tab[:, all_vars[q]] for q in quants}
    for idx, col in sorted(quant_cols.items(), reverse=True):
        tab.col_del(idx)
        tab = tab.col_insert(-2, col)
    pprint(tab)
    print(flush=True)
    for r in range(1, tab.rows):
        print(
            " + ".join(map(str, list(tab[r, :])[:-2]))
            + str(list(tab[r, :])[-2])
            + str(list(tab[r, :])[-1]),
            end=", \n",
        )


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
