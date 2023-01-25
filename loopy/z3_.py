import io
from pathlib import Path
from typing import List, Optional

from sympy import Matrix, pprint
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
import z3
from z3 import (
    Sqrt,
    Int,
    ForAll,
    And,
    Then,
    PP,
    Formatter,
    BoolVal,
    substitute,
    Not,
    unknown,
    SolverFor,
    simplify,
    is_eq,
    is_bool,
    is_const,
    is_lt,
    is_le,
    is_gt,
    is_ge,
    Tactic,
    solve_using,
    Ints,
    set_param,
    OnClause,
)

set_param(proof=True)
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
            rv = term ** exponent
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


def pp_z3(a):
    out = io.StringIO()
    pp = PP()
    pp.max_width = 100
    pp.bounded = True
    pp(out, Formatter()(a))
    return out.getvalue()


def print_z3_constraints(cons: list):
    cons[0], cons[1] = cons[1], cons[0]
    print("{")
    for i, c in enumerate(cons):
        print(
            "  ",
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
        con = simplify(con, arith_lhs=True, sort_sums=True)
        assert is_bool(con), f"unexpected expr type {con=}"
        lhs, rhs = con.arg(0), con.arg(1)
        assert is_const(rhs), f"not const rhs {rhs}"
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
def efsmt(constraints, quantified_vars, maxloops=None):
    """Solving exists xs. forall ys. phi(x, y)"""

    assert isinstance(constraints, list), f"unexpected constraints {constraints}"
    assert isinstance(
        quantified_vars, list
    ), f"unexpected quantified variables {quantified_vars}"

    if isinstance(constraints, list):
        constraints = And(*constraints)

    xs = [x for x in get_vars(constraints) if x not in quantified_vars]
    E = SolverFor("LIA")
    F = SolverFor("LIA")
    E.add(BoolVal(True))
    loops = 0
    while maxloops is None or loops <= maxloops:
        loops += 1
        eres = E.check()
        if eres == z3.sat:
            emodel = E.model()
            sub_phi = substitute(constraints, [(x, emodel.eval(x, True)) for x in xs])
            F.push()
            F.add(Not(sub_phi))
            fres = F.check()
            if fres == z3.sat:
                fmodel = F.model()
                sub_phi = substitute(
                    constraints, [(y, fmodel.eval(y, True)) for y in quantified_vars]
                )
                E.add(sub_phi)
            else:
                return fres, [(x, emodel.eval(x, True)) for x in xs]
            F.pop()
        else:
            return eres
    return unknown


def log_instance(pr, clause):
    if pr.decl().name() == "inst":
        q = pr.arg(0)
        for ch in pr.children():
            if ch.decl().name() == "bind":
                print("Binding")
                print(q)
                print(ch.children())
                break


def solve_system(cons: list, quants: Optional[list] = None):
    assert isinstance(cons, list), f"unexpected constraints {cons=}"
    assert isinstance(quants, list), f"unexpected quants {quants=}"
    con = And(*cons)
    # con = Exists(quants, con)
    # TODO(max): not necessary?
    solver = Then("qe2", "smt").solver(logFile=str(Path(__file__).parent / "log.txt"))
    OnClause(solver, log_instance)
    solver.add(con)
    if solver.check() == z3.sat:
        return solver.model()
    else:
        return None


# describe_tactics()
