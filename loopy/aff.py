from pprint import pprint

from loopy_mlir.ir import (
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
    Context,
    Location,
    Module,
    Value,
)
from loopy_mlir.dialects._ods_common import get_op_result_or_value

from loopy_mlir._mlir_libs._loopyMlir import (
    LoopyAffineMapAttr,
    get_access_relation,
    get_affine_value_map,
    print_value_as_operand,
)

from symengine import Symbol, Integer, symbols, Eq, linsolve
from symengine.lib.symengine_wrapper import solve
from symengine import Interval, EmptySet, FiniteSet, I, oo, Eq, Symbol, linsolve


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


class ApplyOp:
    def __init__(self, apply_op):
        affine_map = LoopyAffineMapAttr(AffineMapAttr(apply_op.attributes[0].attr)).map
        self.dims = {}
        self.exprs = {}
        self.symbols = {}
        self.constants = {}
        for i in range(affine_map.n_dims):
            name = str(AffineExpr.get_dim(i))
            self.exprs[name] = Symbol(name)
            self.dims[name] = {"pos": i, "expr": self.exprs[name]}
        self.symbols = {}
        for i in range(affine_map.n_symbols):
            name = str(AffineExpr.get_symbol(i))
            self.exprs[name] = Symbol(name)
            self.symbols[name] = {"pos": i, "expr": self.exprs[name]}

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

        affine_map.walkExprs(callback)
        res_name = print_value_as_operand(apply_op.result)
        self.exprs[res_name] = Symbol(res_name)
        self.map_expr = self.exprs[str(affine_map.results[0])]
        self.map_equation = Eq(self.map_expr, self.exprs[res_name])


def demo():
    with Context() as ctx, Location.unknown(ctx):
        module = Module.parse(
            r"""
      func.func @checkMemrefAccessDependence(%arg0: index, %arg1: index, %arg2: index) {
        %alloc = memref.alloc() : memref<4x4xf32>
        %cst = arith.constant 0.000000e+00 : f32
        affine.for %arg3 = 0 to 100 {
          affine.for %arg4 = 0 to 50 {
            %0 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 2 - d1 * 4 + s1)>(%arg3, %arg4)[%arg0, %arg1]
            %1 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 3 - s0)>(%arg3, %arg4)[%arg0, %arg1]
            affine.store %cst, %alloc[%0, %1] : memref<4x4xf32>
            // affine.store %cst, %alloc[%arg3 * 2 - %arg4 * 4 + %arg1, %arg4 * 3 - %arg0] : memref<4x4xf32>
          }
        }
        affine.for %arg3 = 0 to 100 {
          affine.for %arg4 = 0 to 50 {
            %0 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 7 + d1 * 9 - s1)>(%arg3, %arg4)[%arg2, %arg0]
            %1 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 11 + s0)>(%arg3, %arg4)[%arg2, %arg0]
            %2 = affine.load %alloc[%0, %1] : memref<4x4xf32>
            // %2 = affine.load %alloc[%arg3 * 7 + %arg4 * 9 - %arg0, %arg4 * 11 + %arg2] : memref<4x4xf32>
          }
        }
        return
      }
        """
        )
        func_body = module.body.operations[0].regions[0].blocks[0]
        first_for_loop_operations = (
            func_body.operations[2]
            .regions[0]
            .blocks[0]
            .operations[0]
            .regions[0]
            .blocks[0]
            .operations
        )
        # print(func_body.operations[2].regions[0].blocks[0].operations[0].operation)

        first_affine_apply = first_for_loop_operations[0].operation
        first_app = ApplyOp(first_affine_apply)
        second_affine_apply = first_for_loop_operations[1].operation
        affine_value_map = get_affine_value_map(first_affine_apply)
        pprint(affine_value_map)

        second_app = ApplyOp(second_affine_apply)

        first_affine_store = first_for_loop_operations[2].operation
        first_access_relation = get_access_relation(first_affine_store)
        print(first_access_relation)


if __name__ == "__main__":
    demo()
