from pprint import pprint

from loopy.aff import StoreOp, LoadOp
from loopy.loopy_mlir.ir import (
    Context,
    Location,
    Module,
)

with Context() as ctx, Location.unknown(ctx):
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
    first_store = StoreOp(first_for_loop_operations[2].operation)
    print("constraint system for store op:")
    pprint(first_store.z3_access_constraints)

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
    print("constraint system for load op:")
    pprint(first_load.z3_access_constraints)
