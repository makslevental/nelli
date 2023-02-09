import logging
from collections import OrderedDict
from typing import List

# from symengine import Eq, Symbol, Integer
from sympy import Eq, Symbol, Integer

from .op import Op
from ..loopy_mlir.ir import (
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
from .constraints import build_sympy_access_constraints
from .z3_ import (
    build_z3_access_constraints,
)

# noinspection PyUnresolvedReferences
from ..loopy_mlir._mlir_libs._loopy_mlir import (
    get_affine_map_from_attr,
    get_access_relation,
    walk_affine_exprs,
    get_opview,
    get_loop_bounds,
    affine_for_skew,
    affine_for_unroll_by_factor,
)
from ..utils import make_disambig_name

logger = logging.getLogger(__name__)


class ApplyOp(Op):
    def __init__(self, apply_op):
        super().__init__(apply_op)
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


class ForOp(Op):
    def __init__(self, for_op):
        super().__init__(for_op)
        assert for_op.name == "affine.for"
        for_op = get_opview(for_op)
        self.domain_bounds = get_loop_bounds(for_op)
        self.operands = [Symbol(make_disambig_name(for_op.induction_variable))]

    def skew(self, shifts):
        affine_for_skew(self.mlir_op, shifts)

    def unroll_by_factor(self, factor, annotator=None):
        affine_for_unroll_by_factor(self.mlir_op, factor, annotator)


class MemOp(Op):
    sympy_access_constraints: list

    def __init__(self, mlir_op, idx_operands: List[Value]):
        super().__init__(mlir_op)

        domain_bounds, positions_to_idxs = get_access_relation(mlir_op)
        self.domain_bounds = {}
        for sym, bounds in domain_bounds.items():
            self.domain_bounds[Symbol(make_disambig_name(sym))] = {
                k: Integer(v) if isinstance(v, int) else v for k, v in bounds.items()
            }

        self.positions_to_idxs = {k: Symbol(v) for k, v in positions_to_idxs.items()}
        self.operands = OrderedDict()
        self.symbolic = set()
        for i, o in enumerate(idx_operands):
            if o.owner.name == "affine.apply":
                apply_op = ApplyOp(o.owner)
                for sym in apply_op.symbols.values():
                    self.symbolic.add(sym["operand"])
                self.operands[Symbol(make_disambig_name(o))] = apply_op
            elif o.owner.name == "affine.for":
                for_op = ForOp(o.owner)
                self.operands[Symbol(make_disambig_name(o))] = for_op
            else:
                raise NotImplementedError(f"unknown idx operand {o}")

        self.sympy_access_constraints = build_sympy_access_constraints(
            self, tuple(self.operands.values())
        )

        self.z3_access_constraints, z3_vars = build_z3_access_constraints(
            self.sympy_access_constraints
        )
        self.z3_vars = {str(z): z for z in z3_vars}


class StoreOp(MemOp):
    def __init__(self, store_op):
        assert store_op.name == "affine.store"
        super().__init__(store_op, list(store_op.operands[2:]))


class LoadOp(MemOp):
    def __init__(self, load_op):
        assert load_op.name == "affine.load"
        super().__init__(load_op, list(load_op.operands[1:]))
