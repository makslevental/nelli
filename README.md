# Loopy

Loops for the polyhedrally challenged.

# Installing

Just

```shell
pip install - requirements.txt 
pip install . --no-build-isolation
```

# Example

[examples.py](examples.py) demos this example; from this

```mlir
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
```

to this

```python
constraint system for store op:

[
    _2 == _arg1 + -4*_arg4 + 2*_arg3,
    _3 == -1*_arg0 + 3*_arg4,
    _arg3 >= 0,
    _arg3 <= 99,
    _arg4 >= 0,
    _arg4 <= 49
]

constraint system for load op:
    
[
    _2 == -1*_arg0 + 7*_arg3 + 9*_arg4,
    _3 == _arg2 + 11*_arg4,
    _arg3 >= 0,
    _arg3 <= 99,
    _arg4 >= 0,
    _arg4 <= 49
]
```

# Development

Use this for CMake

```bash
-DCMAKE_INSTALL_PREFIX=<SRC_ROOT>/loopy/loopy \
-DPython3_EXECUTABLE=python \
-DCMAKE_PREFIX_PATH=<LLVM_INSTALL>/install
```