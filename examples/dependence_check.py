# from pprint import pprint
from textwrap import dedent

from loopy.z3_ import build_z3_access_constraints, print_z3_constraints_as_tableau

from loopy.aff import StoreOp, LoadOp, print_sympy_constraints, check_mem_dep, find_ops
from loopy.loopy_mlir.ir import Context, Location, Module, SymbolTable

# noinspection PyUnresolvedReferences
from loopy.loopy_mlir._mlir_libs._loopy_mlir import (
    show_access_relation,
    walk_operation,
)


def has_dep():
    src = dedent(
        """\
      func.func @checkMemrefAccessDependence(%arg0: index, %arg1: index, %arg2: index) {
        %alloc = memref.alloc() : memref<4x4xf32>
        %cst = arith.constant 0.000000e+00 : f32
        affine.for %arg3 = 0 to 100 {
          affine.for %arg4 = 0 to 50 {
            %2 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 2 - d1 * 4 + s1)>(%arg3, %arg4)[%arg0, %arg1]
            %3 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 3 - s0)>(%arg3, %arg4)[%arg0, %arg1]
            affine.store %cst, %alloc[%2, %3] : memref<4x4xf32>
          }
        }
        affine.for %arg3 = 0 to 100 {
          affine.for %arg4 = 0 to 50 {
            %2 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 7 + d1 * 9 - s1)>(%arg3, %arg4)[%arg2, %arg0]
            %3 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 11 + s0)>(%arg3, %arg4)[%arg2, %arg0]
            %4 = affine.load %alloc[%2, %3] : memref<4x4xf32>
          }
        }
        return
      }
    """
    )
    with Context() as ctx, Location.unknown():
        module = Module.parse(
            src,
            context=ctx,
        )

        stores_loads = find_ops(
            module, lambda op: op.name in {"affine.store", "affine.load"}
        )
        assert stores_loads[0].name == "affine.store"
        assert stores_loads[1].name == "affine.load"
        store = StoreOp(stores_loads[0])
        print("\nconstraint system for store op:\n")
        print_sympy_constraints(store.sympy_access_constraints)
        load = LoadOp(stores_loads[1])
        print("\nconstraint system for store op:\n")
        print_sympy_constraints(load.sympy_access_constraints)

        show_access_relation(store.mlir_op, load.mlir_op)
        check_mem_dep(store, load)


def hasnt_dep():
    src = dedent(
        """\
      func.func @checkMemrefAccessDependence(%arg0: index, %arg1: index, %arg2: index) {
        %alloc = memref.alloc() : memref<4x4xf32>
        %cst = arith.constant 0.000000e+00 : f32
        affine.for %arg3 = 0 to 100 {
          affine.for %arg4 = 0 to 50 {
            %2 = affine.apply affine_map<(d0, d1)[s0, s1] -> (2 * (d0 * 2 - d1 * 4 + s1))>(%arg3, %arg4)[%arg0, %arg1]
            %3 = affine.apply affine_map<(d0, d1)[s0, s1] -> (2 * (d1 * 3 - s0))>(%arg3, %arg4)[%arg0, %arg1]
            affine.store %cst, %alloc[%2 * 2, %3 * 2] : memref<4x4xf32>
          }
        }
        affine.for %arg3 = 0 to 100 {
          affine.for %arg4 = 0 to 50 {
            %2 = affine.apply affine_map<(d0, d1)[s0, s1] -> (2 * (d0 * 7 + d1 * 9 - s1) + 1)>(%arg3, %arg4)[%arg2, %arg0]
            %3 = affine.apply affine_map<(d0, d1)[s0, s1] -> (2 * (d1 * 11 + s0) + 1)>(%arg3, %arg4)[%arg2, %arg0]
            %4 = affine.load %alloc[%2, %3] : memref<4x4xf32>
          }
        }
        return
      }
    """
    )

    with Context() as ctx, Location.unknown():
        module = Module.parse(
            src,
            context=ctx,
        )
        stores_loads = find_ops(
            module, lambda op: op.name in {"affine.store", "affine.load"}
        )
        assert stores_loads[0].name == "affine.store"
        assert stores_loads[1].name == "affine.load"
        store = StoreOp(stores_loads[0])
        print("\nconstraint system for store op:\n")
        print_sympy_constraints(store.sympy_access_constraints)
        load = LoadOp(stores_loads[1])
        print("\nconstraint system for store op:\n")
        print_sympy_constraints(load.sympy_access_constraints)

        show_access_relation(store.mlir_op, load.mlir_op)
        check_mem_dep(store, load)


has_dep()
# hasnt_dep()