import logging

from .z3_ import show_z3_constraints, opt_system

logger = logging.getLogger(__name__)
from typing import Union, Tuple, List

# from symengine import Eq, Symbol, Integer
from sympy import Eq, pretty
from sympy.core.relational import Relational
from z3 import Int, substitute, simplify, ExprRef

from ..loopy_mlir._mlir_libs._loopy_mlir import (
    get_common_loops,
    show_value_as_operand,
)


def build_sympy_access_constraints(
    affine_mem_op: Union["MemOp"], idx_affine_ops: Tuple["ApplyOp", ...]
):
    constraints = [app.affine_relation for app in idx_affine_ops]
    for sym, bounds in affine_mem_op.domain_bounds.items():
        for bound_type, bound in bounds.items():
            match bound_type:
                case "LB":
                    constraints.append(bound <= sym)
                case "UB":
                    constraints.append(sym <= bound)
                case "EQ":
                    if bound is not None:
                        constraints.append(Eq(bound, sym))
                case _:
                    raise Exception(f"unknown bound type: {bound_type}")

    return constraints


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


def compose(src_op: "MemOp", dst_op: "MemOp") -> Tuple[List[ExprRef], List[ExprRef]]:
    alloc1 = (
        src_op.mlir_op.operands[1]
        if src_op.mlir_op.name == "affine.store"
        else src_op.mlir_op.operands[0]
    )
    alloc2 = (
        dst_op.mlir_op.operands[0]
        if dst_op.mlir_op.name == "affine.load"
        else dst_op.mlir_op.operands[1]
    )
    assert alloc1 == alloc2

    quantified = set()
    constraints = []
    # for ops in the same loop nest, we need to "pretend" the loop ivs
    # are actually distinct so that we can perform "overlap analysis" downstream
    common_loop_ivs = get_common_loop_ivs(src_op, dst_op, symbol_factory=Int)
    for i, m in enumerate([src_op, dst_op]):
        quantified.update({Int(q.name) for q in m.quantified})
        for c in m.z3_access_constraints:
            for iv in common_loop_ivs:
                c = substitute(c, (iv, Int(str(iv) + "'" * i)))
            constraints.append(c)

    # Here's the description from checkMemrefAccessDependence in MLIR:
    #
    # "Compute the dependence relation by composing access relation of
    # `srcAccess` with the inverse of the access relation of `dstAccess`.
    # Doing this builds a relation between iteration domain of `srcAccess`
    # to the iteration domain of `dstAccess` which access the same memory
    # location."
    #
    # Inverse means essentially swapping the role of the domain and range
    # since everything is linear; effectively you have to find on which
    # indices in the memref the ivs (through affine maps) line up and equate them
    #
    # Note this is "implicit" inversion - you get implicit equations for the
    # iteration space of the dst access in terms of the iteration space of the
    # source access (you need to eliminate variables/solve the equations to get explicit
    # equations)
    #
    # TODO(max): check idx positions wrt syms and dims
    for dim_m1, dim_m2 in zip(src_op.operands, dst_op.operands):
        constraints.append(Int(dim_m1.name) == Int(dim_m2.name))

    for i, n in enumerate(constraints):
        constraints[i] = simplify(n, arith_lhs=True, sort_sums=True)

    return list(quantified), constraints


# Adds ordering constraints to 'dependenceDomain' based on number of loops
# common to 'src/dstDomain' and requested 'loopDepth'.
# Note that 'loopDepth' cannot exceed the number of common loops plus one.
# EX: Given a loop nest of depth 3 with IVs 'i' and 'j' and 'k':
# *) If 'loopDepth == 1' then one constraint is added: i' >= i + 1
# *) If 'loopDepth == 2' then two constraints are added: i == i' and j' >= j + 1
# *) If 'loopDepth == 3' then three constraints are added: i == i' and j' == j and k' >= k + 1
# *) If 'loopDepth == 4' then three constraints are added: i == i' and j == j' and k == k'
#
# i.e. you constrain all of the common loop ivs (up to loop depth) to be equal, except the last one
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


def check_mem_dep(src_op: "MemOp", dst_op: "MemOp", to_loop_depth: int = 1):
    quants, cons = compose(src_op, dst_op)
    cons.extend(get_ordering_constraints(src_op, dst_op, to_loop_depth))
    logger.debug("composed constraint system: ")
    logger.debug(show_z3_constraints(cons))
    maybe_model = opt_system(cons, quants)
    if maybe_model is not None:
        dep = {v: maybe_model[v] for v in maybe_model}
        return dep
    else:
        return None
