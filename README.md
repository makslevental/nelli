# Loopy

Loop analysis for the polyhedrally challenged.

# Installing

Just

```shell
pip install - requirements.txt 
pip install . --no-build-isolation
```

# Example

[examples.py](examples.py) demos this example; from this


```mlir
   2  func.func @checkMemrefAccessDependence(%arg0: index, %arg1: index, %arg2: index) {
   3    %alloc = memref.alloc() : memref<4x4xf32>
   4    %cst = arith.constant 0.000000e+00 : f32
   5    affine.for %arg3 = 0 to 100 {
   6      affine.for %arg4 = 0 to 50 {
   7        %2 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 2 - d1 * 4 + s1)>(%arg3, %arg4)[%arg0, %arg1]
   8        %3 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 3 - s0)>(%arg3, %arg4)[%arg0, %arg1]
   9        affine.store %cst, %alloc[%2, %3] : memref<4x4xf32>
  10      }
  11    }
  12    affine.for %arg3 = 0 to 100 {
  13      affine.for %arg4 = 0 to 50 {
  14        %2 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d0 * 7 + d1 * 9 - s1)>(%arg3, %arg4)[%arg2, %arg0]
  15        %3 = affine.apply affine_map<(d0, d1)[s0, s1] -> (d1 * 11 + s0)>(%arg3, %arg4)[%arg2, %arg0]
  16        %4 = affine.load %alloc[%2, %3] : memref<4x4xf32>
  17      }
  18    }
  19    return
  20  }
```

to this

```
constraint system for store op:

%2 = %arg1 + 2⋅%arg3 - 4⋅%arg4
%3 = -%arg0 + 3⋅%arg4
0 ≤ %arg3
%arg3 ≤ 99
0 ≤ %arg4
%arg4 ≤ 49

constraint system for load op:

%2 = -%arg0 + 7⋅%arg3 + 9⋅%arg4
%3 = %arg2 + 11⋅%arg4
0 ≤ %arg3
%arg3 ≤ 99
0 ≤ %arg4
%arg4 ≤ 49

solve constraint system

[%2 == %arg1 + -4*%arg4 + 2*%arg3,
 %3 == -1*%arg0 + 3*%arg4,
 %arg3 >= 0,
 %arg3 <= 99,
 %arg4 >= 0,
 %arg4 <= 49,
 %2 == -1*%arg0 + 7*%arg3 + 9*%arg4,
 %3 == %arg2 + 11*%arg4,
 %arg3 >= 0,
 %arg3 <= 99,
 %arg4 >= 0,
 %arg4 <= 49,
 %2 == %2,
 %3 == %3]

unsat
```

# Development

Use this for CMake

```bash
-DCMAKE_INSTALL_PREFIX=<SRC_ROOT>/loopy/loopy \
-DPython3_EXECUTABLE=python \
-DCMAKE_PREFIX_PATH=<LLVM_INSTALL>/install
```

`awk '{printf("% 4d  %s\n", NR+1, $0)}'`
