import re
from collections import defaultdict
from typing import Union, List, Tuple, Optional

from sympy.core.relational import Relational
from z3 import Int, substitute, is_eq, simplify
from z3.z3util import get_vars

from .loopy_mlir.ir import (
    AffineAddExpr,
    AffineExpr,
    AffineBinaryExpr,
    AffineCeilDivExpr,
    AffineConstantExpr,
    AffineDimExpr,
    AffineFloorDivExpr,
    AffineMapAttr,
    AffineModExpr,
    AffineMulExpr,
    AffineSymbolExpr,
    Value,
    Operation,
)
from .loopy_mlir._mlir_libs._loopyMlir import (
    get_affine_map_from_attr,
    print_value_as_operand,
    get_access_relation,
    get_affine_value_map,
    show_access_relation,
    walk_affine_exprs,
    walk_operation,
)

# from symengine import Eq, Symbol, Integer
from sympy import Eq, Symbol, Integer, pprint

from .z3_ import build_z3_access_constraints, print_z3_constraints, solve_system

# def callback(res_idx, expr):
#     if isinstance(expr, AffineDimExpr):
#         name = str(expr)
#         assert self_dims[name]['pos'] == expr.position
#         self_exprs[name] = self_dims[name]["symbol"] = Symbol(name)
#     elif isinstance(expr, AffineSymbolExpr):
#         name = str(expr)
#         assert self_symbols[name]['pos'] == expr.position
#         self_exprs[name] = self_symbols[name]["symbol"] = Symbol(name)
#     elif isinstance(expr, AffineConstantExpr):
#         value = str(expr)
#         self_exprs[value] = self_constants[value] = Integer(int(value))
#     elif isinstance(expr, AffineAddExpr):
#         lhs = str(expr.lhs)
#         rhs = str(expr.rhs)
#         self_exprs[str(expr)] = self_exprs[lhs] + self_exprs[rhs]
#     elif isinstance(expr, AffineMulExpr):
#         lhs = str(expr.lhs)
#         rhs = str(expr.rhs)
#         self_exprs[str(expr)] = self_exprs[lhs] * self_exprs[rhs]
#     elif isinstance(expr, AffineModExpr):
#         lhs = str(expr.lhs)
#         rhs = str(expr.rhs)
#         self_exprs[str(expr)] = self_exprs[lhs] % self_exprs[rhs]
#     elif isinstance(expr, AffineFloorDivExpr):
#         lhs = str(expr.lhs)
#         rhs = str(expr.rhs)
#         self_exprs[str(expr)] = self_exprs[lhs] // self_exprs[rhs]
#     elif isinstance(expr, AffineCeilDivExpr):
#         lhs = str(expr.lhs)
#         rhs = str(expr.rhs)
#         self_exprs[str(expr)] = (self_exprs[lhs] // self_exprs[rhs]) + 1
#     elif isinstance(expr, AffineBinaryExpr):
#         print("BinaryExpr", expr)
#     else:
#         raise Exception("unknown expr type", expr, type(expr))


seen = {}


def make_disambig_name(o: Value):
    name = print_value_as_operand(o)
    if name in seen and o not in seen[name]:
        seen[name][o] = name + "'" * len(seen[name])
    elif name in seen and o in seen[name]:
        # name = seen[name][o]
        pass
    else:
        seen[name] = {o: name}
    return seen[name][o]

    # return (
    #     + "@"
    #     + str(o.owner.name).split(".")[0]
    #     + re.findall(r'-"(.*)\)', str(o.owner.location))[0]
    #     + "_" + re.findall(r'-"(.*)\)', str(o.owner.location))[0].split(":")[-2]
    # )


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
        self.operands = {}
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


def print_sympy_constraints(cons: list[Relational]):
    for c in cons:
        pprint(c, use_unicode=False)


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
    else:
        quantified = []
    return quantified, new_constraints


def check_mem_dep(src_op, dst_op):
    quants, cons = compose(src_op, dst_op)
    print("\ncomposed constraint system: ", end="")
    print_z3_constraints(cons)
    maybe_model = solve_system(cons, quants)
    if maybe_model is not None:
        print("\ndependence found @ {")
        for i, v in enumerate(maybe_model):
            print(
                "  ",
                v,
                "->",
                maybe_model[v],
                end=", \n" if i < len(maybe_model) - 1 else "\n",
            )
        print("}")
    else:
        print("\nno dependency\n")


def find_ops(module, pred):
    matching = []

    def find(op):
        if pred(op):
            matching.append(op)

    walk_operation(module.operation, find)
    return matching
