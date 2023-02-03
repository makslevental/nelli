import logging
from collections import OrderedDict
from typing import List

# from symengine import Eq, Symbol, Integer
from sympy import Eq, Symbol, Integer

from loopy.loopy_mlir.ir import (
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
from ..loopy_mlir._mlir_libs._loopy_mlir import (
    get_affine_map_from_attr,
    get_access_relation,
    walk_affine_exprs,
)
from ..utils import make_disambig_name

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
            # TODO(max): handle passing just block args
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
        return f"MemOp({str(self.mlir_op)}"

    def __str__(self):
        return f"MemOp({str(self.mlir_op)}"


class StoreOp(MemOp):
    def __init__(self, store_op):
        assert store_op.name == "affine.store"
        super().__init__(store_op, list(store_op.operands[2:]))


class LoadOp(MemOp):
    def __init__(self, load_op):
        assert load_op.name == "affine.load"
        super().__init__(load_op, list(load_op.operands[1:]))
