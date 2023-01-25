# Loopy

Loop analysis for the polyhedrally challenged.

# Installing

Just

```shell
pip install -r requirements.txt 
CMAKE_GENERATOR=Ninja pip install . --no-build-isolation
```

# Example

[dependence_check.py](examples/dependence_check.py) demos this example; from this


```mlir
func @checkMemrefAccessDependence(%arg0: index, %arg1: index, %arg2: index) {
  %alloc = alloc() : memref<4x4xf32>
  %cst = constant 0.000000e+00 : f32
  for %arg3 = 0 to 100 {
    for %arg4 = 0 to 50 {
      %2 = apply <(d0, d1)[s0, s1] -> (d0 * 2 - d1 * 4 + s1)>(%arg3, %arg4)[%arg0, %arg1]
      %3 = apply <(d0, d1)[s0, s1] -> (d1 * 3 - s0)>(%arg3, %arg4)[%arg0, %arg1]
      store %cst, %alloc[%2, %3] : memref<4x4xf32>
    }
  }
  for %arg3 = 0 to 100 {
    for %arg4 = 0 to 50 {
      %2 = apply <(d0, d1)[s0, s1] -> (d0 * 7 + d1 * 9 - s1)>(%arg3, %arg4)[%arg2, %arg0]
      %3 = apply <(d0, d1)[s0, s1] -> (d1 * 11 + s0)>(%arg3, %arg4)[%arg2, %arg0]
      %4 = load %alloc[%2, %3] : memref<4x4xf32>
    }
  }
  return
}
```

to this

```
constraint system for store op:

2 = arg1 + 2*arg3 - 4*arg4
3 = -arg0 + 3*arg4
0 <= arg3
arg3 <= 99
0 <= arg4
arg4 <= 49

constraint system for load op:

2' = -arg0 + 7*arg3' + 9*arg4'
3' = arg2 + 11*arg4'
0 <= arg3'
arg3' <= 99
0 <= arg4'
arg4' <= 49

composed constraint system: {
   2*arg3 + arg1 + -4*arg4 + arg0 + -7*arg3' + -9*arg4' == 0, 
   3*arg4 + -1*arg0 + -11*arg4' + -1*arg2 == 0, 
   arg3 >= 0, 
   arg3 <= 99, 
   arg4 >= 0, 
   arg4 <= 49, 
   arg3' >= 0, 
   arg3' <= 99, 
   arg4' >= 0, 
   arg4' <= 49
}

dependence found @ {
   arg4' -> 0, 
   arg1 -> 0, 
   arg0 -> 0, 
   arg3 -> 0, 
   arg3' -> 0, 
   arg2 -> 0, 
   arg4 -> 0
}
```

and from this (can you spot the difference?)


```mlir
func @checkMemrefAccessDependence(%arg0: index, %arg1: index, %arg2: index) {
  %alloc = alloc() : memref<4x4xf32>
  %cst = constant 0.000000e+00 : f32
  for %arg3 = 0 to 100 {
    for %arg4 = 0 to 50 {
      %2 = apply <(d0, d1)[s0, s1] -> (2 * (d0 * 2 - d1 * 4 + s1))>(%arg3, %arg4)[%arg0, %arg1]
      %3 = apply <(d0, d1)[s0, s1] -> (2 * (d1 * 3 - s0))>(%arg3, %arg4)[%arg0, %arg1]
      store %cst, %alloc[%2 * 2, %3 * 2] : memref<4x4xf32>
    }
  }
  for %arg3 = 0 to 100 {
    for %arg4 = 0 to 50 {
      %2 = apply <(d0, d1)[s0, s1] -> (2 * (d0 * 7 + d1 * 9 - s1) + 1)>(%arg3, %arg4)[%arg2, %arg0]
      %3 = apply <(d0, d1)[s0, s1] -> (2 * (d1 * 11 + s0) + 1)>(%arg3, %arg4)[%arg2, %arg0]
      %4 = load %alloc[%2, %3] : memref<4x4xf32>
    }
  }
  return
}
```

to this

```
constraint system for store op:

2 = 2*arg1 + 4*arg3 - 8*arg4
3 = -2*arg0 + 6*arg4
0 <= arg3
arg3 <= 99
0 <= arg4
arg4 <= 49

constraint system for store op:

2' = -2*arg0 + 14*arg3' + 18*arg4' + 1
3' = 2*arg2 + 22*arg4' + 1
0 <= arg3'
arg3' <= 99
0 <= arg4'
arg4' <= 49

composed constraint system: {
   8*arg4 + -2*arg1 + -4*arg3 + -2*arg0 + 18*arg4' + 14*arg3' == -1, 
   6*arg4 + -2*arg0 + -22*arg4' + -2*arg2 == 1, 
   arg3 >= 0, 
   arg3 <= 99, 
   arg4 >= 0, 
   arg4 <= 49, 
   arg3' >= 0, 
   arg3' <= 99, 
   arg4' >= 0, 
   arg4' <= 49
}

no dependency
```

# Development

Use this for CMake

```bash
-DCMAKE_INSTALL_PREFIX=<SRC_ROOT>/loopy/loopy \
-DPython3_EXECUTABLE=python \
-DCMAKE_PREFIX_PATH=<LLVM_INSTALL>/install
```