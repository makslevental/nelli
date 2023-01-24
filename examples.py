# from pprint import pprint
from sympy import pprint

from loopy.aff import StoreOp, LoadOp, print_sympy_constraints, show_access_relation
from loopy.z3_ import compose, solve_system, print_z3_constraints, print_z3_constraints_as_tableau
from loopy.loopy_mlir.ir import (
    Context,
    Location,
    Module,
)

with Context() as ctx, Location.name("example.py", context=ctx):
    module = Module.parse(
        r"""
  func.func @checkMemrefAccessDependence(%arg0: index, %arg1: index, %arg2: index) {
    %alloc = memref.alloc() : memref<4x4xf32>
    %cst = arith.constant 0.000000e+00 : f32
    affine.for %arg3 = 0 to 100 {
      affine.for %arg4 = 0 to 50 {
        %2 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 2 - d1 * 4 + s1)>(%arg3, %arg4)[%arg0, %arg1]
        %3 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 3 - s0)>(%arg3, %arg4)[%arg0, %arg1]
        affine.store %cst, %alloc[%2, %3] : memref<4x4xf32>
        // affine.store %cst, %alloc[%arg3 * 2 - %arg4 * 4 + %arg1, %arg4 * 3 - %arg0] : memref<4x4xf32>
      }
    }
    affine.for %arg3 = 0 to 100 {
      affine.for %arg4 = 0 to 50 {
        %2 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 7 + d1 * 9 - s1)>(%arg3, %arg4)[%arg2, %arg0]
        %3 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 11 + s0)>(%arg3, %arg4)[%arg2, %arg0]
        %4 = affine.load %alloc[%2, %3] : memref<4x4xf32>
        // %2 = affine.load %alloc[%arg3 * 7 + %arg4 * 9 - %arg0, %arg4 * 11 + %arg2] : memref<4x4xf32>
      }
    }
    return
  }
    """, context=ctx
    )
    show_access_relation(module)


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
    first_store = StoreOp(first_for_loop_operations[2].operation)
    # print("\nconstraint system for store op:\n")
    # print_sympy_constraints(first_store.sympy_access_constraints)

    second_for_loop_operations = (
        func_body.operations[3]
        .regions[0]
        .blocks[0]
        .operations[0]
        .regions[0]
        .blocks[0]
        .operations
    )
    first_load = LoadOp(second_for_loop_operations[2].operation)

    quants, cons = compose(first_store, first_load)
    print_z3_constraints(cons)
    # print_z3_constraints_as_tableau(cons, quants)
    # print("\nsolve constraint system\n")
    # solve_system(quants, cons)