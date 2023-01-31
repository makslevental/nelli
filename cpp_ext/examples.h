//
// Created by maksim on 1/18/23.
//

#include <string>

#ifndef PI_EXAMPLES_H
#define PI_EXAMPLES_H

std::string mul_add_0 = R"mlir(
module {
  func.func @mul_add_0(%arg0: memref<3x4xf32>, %arg1: memref<4x3xf32>, %arg2: memref<3x3xf32>, %arg3: memref<3x3xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() : memref<3x3xf32>
    affine.for %arg4 = 0 to 3 {
      affine.for %arg5 = 0 to 3 {
        // 0
        affine.store %cst, %alloc[%arg4, %arg5] : memref<3x3xf32>
      }
    }
    affine.for %arg4 = 0 to 3 {
      affine.for %arg5 = 0 to 3 {
        affine.for %arg6 = 0 to 4 {
          // 1
          %0 = affine.load %arg1[%arg6, %arg5] : memref<4x3xf32>
          // 2
          %1 = affine.load %arg0[%arg4, %arg6] : memref<3x4xf32>
          %2 = arith.mulf %1, %0 : f32
          // 3
          %3 = affine.load %alloc[%arg4, %arg5] : memref<3x3xf32>
          %4 = arith.addf %3, %2 : f32
          // 4
          affine.store %4, %alloc[%arg4, %arg5] : memref<3x3xf32>
        }
      }
    }
    return
  }
}
  )mlir";

std::string should_not_fuse = R"mlir(
module {
func.func @should_not_fuse_defining_node_has_dependence_from_source_loop(%a : memref<10xf32>, %b : memref<f32>) -> () {
  %cst = arith.constant 0.000000e+00 : f32
  affine.for %i0 = 0 to 10 {
    affine.store %cst, %b[] : memref<f32>
    affine.store %cst, %a[%i0] : memref<10xf32>
  }
  %0 = affine.load %b[] : memref<f32>
  affine.for %i1 = 0 to 10 {
    %1 = affine.load %a[%i1] : memref<10xf32>
    %2 = arith.divf %0, %1 : f32
  }
  return
}
}
  )mlir";

std::string checkMemrefAccessDependenceExample = R"mlir(
module {
  func.func @checkMemrefAccessDependence(%arg0: index, %arg1: index, %arg2: index) {
    %alloc = memref.alloc() : memref<4x4xf32>
    %cst = arith.constant 0.000000e+00 : f32
    affine.for %arg3 = 0 to 100 {
      affine.for %arg4 = 0 to 50 {
        // %0 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 2 - d1 * 4 + s1)>(%arg3, %arg4)[%arg0, %arg1]
        // %1 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 3 - s0)>(%arg3, %arg4)[%arg0, %arg1]
        // affine.store %cst, %alloc[%0, %1] : memref<4x4xf32>
        affine.store %cst, %alloc[%arg3 * 2 - %arg4 * 4 + %arg1, %arg4 * 3 - %arg0] : memref<4x4xf32>
      }
    }
    affine.for %arg3 = 0 to 100 {
      affine.for %arg4 = 0 to 50 {
        // %0 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 7 + d1 * 9 - s1)>(%arg3, %arg4)[%arg2, %arg0]
        // %1 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 11 + s0)>(%arg3, %arg4)[%arg2, %arg0]
        // %2 = affine.load %alloc[%0, %1] : memref<4x4xf32>
        %2 = affine.load %alloc[%arg3 * 7 + %arg4 * 9 - %arg0, %arg4 * 11 + %arg2] : memref<4x4xf32>
      }
    }
    return
  }
}
  )mlir";

std::string checkMemrefAccessDependenceExampleNoDep = R"mlir(
module {
  func.func @checkMemrefAccessDependence(%arg0: index, %arg1: index, %arg2: index) {
    %alloc = memref.alloc() : memref<4x4xf32>
    %cst = arith.constant 0.000000e+00 : f32
    affine.for %arg3 = 0 to 100 {
      affine.for %arg4 = 0 to 50 {
        %0 = affine.apply affine_map<(d0, d1)[s0, s1] -> ((d0 * 2 - d1 * 4 + s1) * 2)>(%arg3, %arg4)[%arg0, %arg1]
        %1 = affine.apply affine_map<(d0, d1)[s0, s1] -> ((d1 * 3 - s0) * 2)>(%arg3, %arg4)[%arg0, %arg1]
        affine.store %cst, %alloc[%0, %1] : memref<4x4xf32>
        // affine.store %cst, %alloc[%arg3 * 2 - %arg4 * 4 + %arg1, %arg4 * 3 - %arg0] : memref<4x4xf32>
      }
    }
    affine.for %arg3 = 0 to 100 {
      affine.for %arg4 = 0 to 50 {
        %0 = affine.apply affine_map<(d0, d1)[s0, s1] -> (((d0 * 7 + d1 * 9 - s1) * 2) + 1)>(%arg3, %arg4)[%arg2, %arg0]
        %1 = affine.apply affine_map<(d0, d1)[s0, s1] -> (((d1 * 11 + s0) * 2) + 1)>(%arg3, %arg4)[%arg2, %arg0]
        %2 = affine.load %alloc[%0, %1] : memref<4x4xf32>
        // %2 = affine.load %alloc[%arg3 * 7 + %arg4 * 9 - %arg0, %arg4 * 11 + %arg2] : memref<4x4xf32>
      }
    }
    return
  }
}
  )mlir";

#endif // PI_EXAMPLES_H
