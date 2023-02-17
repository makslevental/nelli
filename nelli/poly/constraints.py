import logging
from functools import reduce
import itertools

logger = logging.getLogger(__name__)
from typing import Tuple, List

from z3.z3util import get_vars

from .z3_ import show_z3_constraints, opt_system, elim_vars


# from symengine import Eq, Symbol, Integer
from sympy import Eq, pretty
from sympy.core.relational import Relational
from z3 import Int, substitute, simplify, ExprRef

# noinspection PyUnresolvedReferences
from ..mlir._mlir._mlir_libs._nelli_mlir import (
    get_common_loops,
    show_value_as_operand,
    show_direction_vector,
)


def show_sympy_constraints(cons: list[Relational]) -> str:
    s = "\n{\n"
    for i, c in enumerate(cons):
        s += (
            "  "
            + pretty(c, use_unicode=False)
            + (", \n" if i < len(cons) - 1 else "\n")
        )

    s += "}"
    return s


def get_common_loop_ivs(src_op: "MemOp", dst_op: "MemOp", symbol_factory=None):
    common_loop_ivs = [
        show_value_as_operand(l.induction_variable)
        for l in get_common_loops(src_op.mlir_op, dst_op.mlir_op)
    ]
    if symbol_factory is not None:
        common_loop_ivs = [symbol_factory(iv) for iv in common_loop_ivs]
    return common_loop_ivs


def compose(*mem_ops: List["MemOp"]) -> Tuple[List[ExprRef], List[ExprRef]]:
    symbolic = set()
    constraints = []
    # for ops in the same loop nest, we need to "pretend" the loop ivs
    # are actually distinct so that we can perform "overlap analysis" downstream
    for i, op1 in enumerate(mem_ops[:-1]):
        for op2 in mem_ops[i + 1 :]:
            if op1.memref != op2.memref:
                continue
            common_loop_ivs = get_common_loop_ivs(op1, op2, symbol_factory=Int)
            for i, m in enumerate([op1, op2]):
                symbolic.update({Int(q.name) for q in m.symbolic})
                for c in m.z3_access_constraints:
                    for iv in common_loop_ivs:
                        c = substitute(c, (iv, Int(str(iv) + "'" * i)))
                    constraints.append(c)

    for i, n in enumerate(constraints):
        constraints[i] = simplify(n, arith_lhs=True, sort_sums=True)

    return list(symbolic), constraints


# Adds ordering constraints to 'dependenceDomain' based on number of loops
# common to 'src/dstDomain' and requested 'loopDepth'.
# Note that 'loopDepth' cannot exceed the number of common loops plus one.
# EX: Given a loop nest of depth 3 with IVs 'i' and 'j' and 'k':
# *) If 'loopDepth == 1' then one constraint is added: i' >= i + 1
# *) If 'loopDepth == 2' then two constraints are added: i == i' and j' >= j + 1
# *) If 'loopDepth == 3' then three constraints are added: i == i' and j' == j and k' >= k + 1
# *) If 'loopDepth == 4' then three constraints are added: i == i' and j == j' and k == k'
#
# i.e. you constrain all the common loop ivs (up to loop depth) to be equal, except the last one
#
# Note there's an asymmetry here: j' >= j + 1 means we're freeing up the dst access to be after the src access
def get_ordering_constraints(src_op: "MemOp", dst_op: "MemOp", to_loop_depth: int):
    ordering_constraints = []
    common_loop_ivs = get_common_loop_ivs(src_op, dst_op, symbol_factory=Int)
    num_common_loops = len(common_loop_ivs)
    max_depth = min(num_common_loops, to_loop_depth)
    logger.debug(f"{num_common_loops=} {max_depth=}")
    # add equality constraints all but the last "legal" depth
    for i, iv in enumerate(common_loop_ivs[:max_depth]):
        if i < to_loop_depth - 1:
            ordering_constraints.append(Int(str(iv) + "'") == iv)
        else:
            ordering_constraints.append(Int(str(iv) + "'") >= iv + 1)

    for i, n in enumerate(ordering_constraints):
        ordering_constraints[i] = simplify(n, arith_lhs=True, sort_sums=True)
    return ordering_constraints


def build_constraint_system(src_op: "MemOp", dst_op: "MemOp", to_loop_depth: int = 1):
    symbolic_variables, constraints = compose(src_op, dst_op)
    constraints.extend(get_ordering_constraints(src_op, dst_op, to_loop_depth))
    return symbolic_variables, constraints


def check_mem_dep(quants, cons):
    logger.debug("composed constraint system: ")
    logger.debug(show_z3_constraints(cons))
    all_vars = reduce(lambda acc, c: acc | set(get_vars(c)), cons, set())
    nonquants = list(all_vars - set(quants))
    maybe_model = opt_system(cons, quants + nonquants)
    if maybe_model is not None:
        dep = {v: maybe_model[v] for v in maybe_model}
        return dep
    else:
        return None


def compute_dependence_direction_vector(
    src_op: "MemOp", dst_op: "MemOp", to_loop_depth: int = 1
) -> "dependenceComponents":
    quants, cons = build_constraint_system(src_op, dst_op, to_loop_depth)
    common_loop_ivs = get_common_loop_ivs(src_op, dst_op, symbol_factory=Int)
    num_common_loops = len(common_loop_ivs)
    if num_common_loops == 0:
        return None

    # Add new variables to represent the direction constraints for each shared loop.
    dir_vec_vars = [Int(f"v{i}") for i in range(num_common_loops)]
    logger.debug(f"{dir_vec_vars=}")
    for i, iv in enumerate(common_loop_ivs):
        dv = dir_vec_vars[i]
        cons.append(dv == Int(str(iv) + "'") - iv)

    # Eliminate all variables other than the direction variables just added.
    vars_to_eliminate = set()
    s = "system with direction vars: {\n"
    for i, c in enumerate(sorted(cons, key=lambda k: str(k))):
        vars_to_eliminate.update(get_vars(c))
        s += f"  {c}"
        if i < len(cons) - 1:
            s += " &&\n"
        else:
            s += "\n"
    s += "}"
    logger.debug(s)
    vars_to_eliminate -= set(dir_vec_vars)
    after_elim = elim_vars(cons, vars_to_eliminate)
    min_vecs = opt_system([after_elim], dir_vec_vars, min=True)
    assert min_vecs is not None, f"couldn't minimize dir vec"
    dir_vecs = {v: [min_vecs[v]] for v in min_vecs}
    max_vecs = opt_system([after_elim], dir_vec_vars, min=False)
    assert max_vecs is not None, f"couldn't minimize dir vec"
    for v in max_vecs:
        dir_vecs[v].append(max_vecs[v])

    return {k: dir_vecs[k] for k in sorted(dir_vecs, key=lambda k: str(k))}
