import logging
from collections import OrderedDict
from typing import Union, List, Tuple

# from symengine import Eq, Symbol, Integer
from sympy import Eq, Symbol, Integer, pretty
from sympy.core.relational import Relational
from z3 import Int, substitute, is_eq, simplify, ExprRef
from z3.z3util import get_vars

from .loopy_mlir._mlir_libs._loopy_mlir import (
    get_affine_map_from_attr,
    get_access_relation,
    walk_affine_exprs,
    get_common_loops,
    show_value_as_operand,
)
from .loopy_mlir.ir import (
    AffineAddExpr,
    AffineExpr,
    AffineBinaryExpr,
    AffineCeilDivExpr,
    AffineConstantExpr,
    AffineDimExpr,
    AffineFloorDivExpr,
    AffineModExpr,
    AffineMulExpr,
    AffineSymbolExpr,
    Value,
)
from .utils import make_disambig_name
from .z3_ import (
    build_z3_access_constraints,
    show_z3_constraints,
    opt_system,
)

logger = logging.getLogger(__name__)


class ApplyOp:
    def __init__(self, apply_op):
        self.apply_op = apply_op
        assert apply_op.name == "affine.apply"

        self.operands = [Symbol(make_disambig_name(o)) for o in apply_op.operands]
        affine_map = get_affine_map_from_attr(apply_op.attributes[0].attr)
        self.dims = {}
        self.exprs = {}
        self.symbols = {}
        self.constants = {}
        for i in range(affine_map.n_dims):
            name = str(AffineExpr.get_dim(i))
            self.exprs[name] = Symbol(name)
            self.dims[name] = {
                "pos": i,
                "expr": self.exprs[name],
                "operand": self.operands[i],
            }
        self.symbols = {}
        for i in range(affine_map.n_symbols):
            name = str(AffineExpr.get_symbol(i))
            self.exprs[name] = Symbol(name)
            self.symbols[name] = {
                "pos": i,
                "expr": self.exprs[name],
                "operand": self.operands[i + affine_map.n_dims],
            }

        def callback(res_idx, expr):
            if isinstance(expr, AffineDimExpr):
                name = str(expr)
                # assert self.dims[name]["pos"] == expr.position
            elif isinstance(expr, AffineSymbolExpr):
                name = str(expr)
                # assert self.symbols[name]["pos"] == expr.position
            elif isinstance(expr, AffineConstantExpr):
                value = str(expr)
                self.exprs[value] = self.constants[value] = Integer(int(value))
            elif isinstance(
                expr,
                (
                    AffineAddExpr,
                    AffineMulExpr,
                    AffineModExpr,
                    AffineFloorDivExpr,
                    AffineCeilDivExpr,
                ),
            ):
                lhs = str(expr.lhs)
                rhs = str(expr.rhs)
                self.exprs[str(expr)] = {
                    AffineAddExpr: lambda: self.exprs[lhs] + self.exprs[rhs],
                    AffineMulExpr: lambda: self.exprs[lhs] * self.exprs[rhs],
                    AffineModExpr: lambda: self.exprs[lhs] % self.exprs[rhs],
                    AffineFloorDivExpr: lambda: self.exprs[lhs] // self.exprs[rhs],
                    AffineCeilDivExpr: lambda: self.exprs[lhs] // self.exprs[rhs] + 1,
                }[type(expr)]()
            elif isinstance(expr, AffineBinaryExpr):
                raise Exception("unhandled expr type")
            else:
                raise Exception("unknown expr type", expr, type(expr))

        walk_affine_exprs(affine_map, callback)
        res_name = make_disambig_name(apply_op.result)
        self.exprs[res_name] = Symbol(res_name)

        self.affine_expr = self.exprs[str(affine_map.results[0])]
        self.affine_map = Eq(self.exprs[res_name], self.affine_expr)

        self.affine_relation = self.affine_map.xreplace(
            {v["expr"]: v["operand"] for k, v in self.dims.items()}
        ).xreplace({v["expr"]: v["operand"] for k, v in self.symbols.items()})


class MemOp:
    sympy_access_constraints: list

    def __init__(self, mlir_op, idx_operands: List[Value]):
        self.mlir_op = mlir_op

        domain_bounds, positions_to_idxs = get_access_relation(mlir_op)
        self.domain_bounds = {}
        for sym, bounds in domain_bounds.items():
            self.domain_bounds[Symbol(make_disambig_name(sym))] = {
                k: Integer(v) if isinstance(v, int) else v for k, v in bounds.items()
            }

        self.positions_to_idxs = {k: Symbol(v) for k, v in positions_to_idxs.items()}
        self.operands = OrderedDict()
        self.quantified = set()
        for i, o in enumerate(idx_operands):
            assert o.owner.name == "affine.apply"
            apply_op = ApplyOp(o.owner)
            for sym in apply_op.symbols.values():
                self.quantified.add(sym["operand"])
            self.operands[Symbol(make_disambig_name(o))] = apply_op

        self.sympy_access_constraints = build_sympy_access_constraints(
            self, tuple(self.operands.values())
        )

        self.z3_access_constraints, self.z3_vars = build_z3_access_constraints(
            self.sympy_access_constraints
        )

    def __repr__(self):
        return str(self.mlir_op)

    def __str__(self):
        return str(self.mlir_op)


class StoreOp(MemOp):
    def __init__(self, store_op):
        assert store_op.name == "affine.store"
        assert store_op.operands[0].owner.name == "arith.constant"
        # assert store_op.operands[1].owner.name == "memref.alloc"
        super().__init__(store_op, list(store_op.operands[2:]))


class LoadOp(MemOp):
    def __init__(self, load_op):
        assert load_op.name == "affine.load"
        # assert load_op.operands[0].owner.name == "memref.alloc"
        super().__init__(load_op, list(load_op.operands[1:]))


def build_sympy_access_constraints(
    affine_mem_op: Union[MemOp], idx_affine_ops: Tuple[ApplyOp, ...]
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


def compose(src_op: MemOp, dst_op: MemOp) -> Tuple[List[ExprRef], List[ExprRef]]:
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
    common_loop_ivs = {
        show_value_as_operand(l.induction_variable)
        for l in get_common_loops(src_op.mlir_op, dst_op.mlir_op)
    }
    # for ops in the same loop nest, we need to "pretend" the loop ivs
    # are actually distinct so that we can perform "overlap analysis" downstream
    for i, m in enumerate([src_op, dst_op]):
        quantified.update({Int(q.name) for q in m.quantified})
        for c in m.z3_access_constraints:
            for iv in common_loop_ivs:
                c = substitute(c, (Int(iv), Int(iv + "'" * i)))
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
        constraints[i] = simplify(n, arith_lhs=False, sort_sums=True)

    return list(quantified), constraints


# Adds ordering constraints to 'dependenceDomain' based on number of loops
# common to 'src/dstDomain' and requested 'loopDepth'.
# Note that 'loopDepth' cannot exceed the number of common loops plus one.
# EX: Given a loop nest of depth 3 with IVs 'i' and 'j' and 'k':
# *) If 'loopDepth == 1' then one constraint is added: i' >= i + 1
# *) If 'loopDepth == 2' then two constraints are added: i == i' and j' >= j + 1
# *) If 'loopDepth == 3' then two constraints are added: i == i' and j' == j and k' >= k + 1
# *) If 'loopDepth == 4' then two constraints are added: i == i' and j == j' and k == k'
def get_ordering_constraints(
    src_op: MemOp, dst_op: MemOp, loop_depth: int, constraints: list
):
    num_common_loops = get_common_loops(src_op.mlir_op, dst_op.mlir_op)
    num_common_loop_constraints = min(num_common_loops, loop_depth)
    print(num_common_loops)


def check_mem_dep(src_op: MemOp, dst_op: MemOp):
    quants, cons = compose(src_op, dst_op)
    logger.debug("composed constraint system: ")
    logger.debug(show_z3_constraints(cons))
    maybe_model = opt_system(cons, quants)
    if maybe_model is not None:
        dep = {v: maybe_model[v] for v in maybe_model}
        return dep
    else:
        return None
