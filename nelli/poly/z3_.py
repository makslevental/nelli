import io
import logging
from pathlib import Path
from typing import List, Optional, Tuple, Set

import z3
from sympy import Matrix, pretty
from sympy.core import (
    Symbol as SySymbol,
)
from sympy.core.relational import Relational
from z3 import (
    Int,
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
    set_param,
    OnClause,
    Optimize,
    ExprRef,
    Exists,
)

from .sympy_ import SymPyVisitor

set_param(proof=True)
# set_param("logic", "nia")

from z3.z3util import get_vars

logger = logging.getLogger(__name__)


def sympy_to_z3(sympy_exp):
    z3_vars = []
    z3_var_map = {}

    return z3_vars


def build_z3_access_constraints(
    sympy_constraints: List[Relational],
) -> Tuple[List[ExprRef], Set[ExprRef]]:
    assert len(sympy_constraints)
    vars = set()
    constraints = []
    for constraint in sympy_constraints:
        z3_rel = SymPyVisitor(symbol_factory=Int).visit(constraint)
        z3_rel = simplify(z3_rel, arith_lhs=False, sort_sums=True)
        constraints.append(z3_rel)
        vars.update(get_vars(z3_rel))

    return constraints, vars


def pp_z3(a):
    out = io.StringIO()
    pp = PP()
    pp.max_width = 100
    pp.bounded = True
    pp(out, Formatter()(a))
    return out.getvalue()


def show_z3_constraints(cons: list) -> str:
    cons[0], cons[1] = cons[1], cons[0]
    s = "\n{\n"
    for i, c in enumerate(cons):
        s += "  " + pp_z3(
            simplify(c, arith_lhs=True, arith_ineq_lhs=True, sort_sums=True)
        )
        if i < len(cons) - 1:
            s += ", \n"
        else:
            s += "\n"
    s += "}"
    return s


def show_z3_constraints_as_tableau(cons: list, quants: Optional[list] = None) -> str:
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
        tab[0, all_vars[v]] = SySymbol(str(v))
    tab[0, -1] = SySymbol("const")
    tab[0, -2] = SySymbol("")
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

        tab[i, -2] = SySymbol(rel)
        swap = 1
        if is_lt(con) or is_le(con):
            swap = -1

        tab[i, -1] = int(str(rhs)) * swap

        if lhs.num_args() == 0:
            tab[i, all_vars[lhs]] = 1 * swap * SySymbol(str(lhs))
        else:
            for j in range(lhs.num_args()):
                term = lhs.arg(j)
                syms = get_vars(term)
                sym = syms[0]
                assert len(syms) == 1, f"unexpected number of syms: {syms=}"
                if term.num_args() == 0:
                    # tab[i, all_vars[sym]] = Symbol(str(term))
                    tab[i, all_vars[sym]] = 1 * swap * SySymbol(str(sym))
                elif term.num_args() == 1:
                    # negative (-1)
                    # tab[i, all_vars[sym]] = Symbol(str(term))
                    tab[i, all_vars[sym]] = -1 * swap * SySymbol(str(sym))
                elif term.num_args() == 2:
                    # coefficient (term.arg(0))
                    # tab[i, all_vars[sym]] = Symbol(str(term))
                    tab[i, all_vars[sym]] = int(str(term.arg(0))) * SySymbol(str(sym))

    quant_cols = {all_vars[q]: tab[:, all_vars[q]] for q in quants}
    for idx, col in sorted(quant_cols.items(), reverse=True):
        tab.col_del(idx)
        tab = tab.col_insert(-2, col)
    s = "\n"
    s += pretty(tab)
    s += "\n"
    for r in range(1, tab.rows):
        s += (
            " + ".join(map(str, list(tab[r, :])[:-2]))
            + str(list(tab[r, :])[-2])
            + str(list(tab[r, :])[-1])
        )
        s += ", \n"

    return s


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
    # TODO(max): not necessary?
    solver = Then("qe2", "smt").solver(logFile=str(Path(__file__).parent / "log.txt"))
    OnClause(solver, log_instance)
    solver.add(con)
    if solver.check() == z3.sat:
        return solver.model()
    else:
        return None


# https://stackoverflow.com/a/70656700
def all_smt(s, initial_terms):
    def block_term(s, m, t):
        s.add(t != m.eval(t, model_completion=True))

    def fix_term(s, m, t):
        s.add(t == m.eval(t, model_completion=True))

    def all_smt_rec(terms):
        if z3.sat == s.check():
            m = s.model()
            yield m
            for i in range(len(terms)):
                s.push()
                block_term(s, m, terms[i])
                # term[i] should not be the same as that in m
                for j in range(i):
                    fix_term(s, m, terms[j])
                yield from all_smt_rec(terms[i:])
                # we are yet to discover all the assignments for term[i]. Using term[i+1:] means we are skipping
                # past the first satisfying assignment of term[i]
                # Note that term[i] might be multivalued and not binary
                s.pop()

    yield from all_smt_rec(list(initial_terms))


# http://www.hakank.org/z3/
def opt_system(cons: list, opt_vars: list, min=True, priority="lex", limit=1):
    assert isinstance(cons, list), f"unexpected constraints {cons=}"
    assert isinstance(opt_vars, list), f"unexpected opt vars {opt_vars=}"
    con = And(*cons)
    # logger.debug(con.sexpr())
    opt = Optimize()
    opt.set("opt.priority", priority)
    opt.add(con)
    if min:
        for q in opt_vars:
            opt.minimize(q)
    else:
        for q in opt_vars:
            opt.maximize(q)

    i = 0
    models = []
    for maybe_model in all_smt(opt, opt_vars):
        if maybe_model is not None:
            model = {
                k: maybe_model[k] for k in sorted(maybe_model, key=lambda m: str(m))
            }
            if limit == 1:
                return model
            else:
                models.append(model)
            i += 1
            if i > limit:
                break

    return sorted(models, key=lambda k: str(k)) if models != [] else None


def elim_vars(cons, vars, repeats=1):
    t = Then("simplify", "qe")
    expr = Exists(list(vars), And(*cons))
    for i in range(repeats):
        new_expr = t(expr).as_expr()
        if expr.sexpr() == new_expr.sexpr():
            break
        expr = new_expr

    return expr
