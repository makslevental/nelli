# Nelli

Loop analysis for the polyhedrally challenged.

[![Test](https://github.com/makslevental/nelli/actions/workflows/test.yml/badge.svg)](https://github.com/makslevental/nelli/actions/workflows/test.yml)
[![Build](https://github.com/makslevental/nelli/actions/workflows/build.yml/badge.svg)](https://github.com/makslevental/nelli/actions/workflows/build.yml)

# Installing

Just

```shell
pip install . -v
```

or peruse the [release page](https://github.com/makslevental/nelli/releases).

For Raspberry Pi (`linux-aarch64`) prefix `pip install` with these CMake args (in order to prevent OOMing with GNU's `ld`):

```shell
CMAKE_ARGS="-DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_EXE_LINKER_FLAGS_INIT=-fuse-ld=lld -DCMAKE_MODULE_LINKER_FLAGS_INIT=-fuse-ld=lld -DCMAKE_SHARED_LINKER_FLAGS_INIT=-fuse-ld=lld"
```

# Example

[dependence_check.py](examples/dependence_check.py) demos this example: from this


```python
@mlir_func
def has_dep(M: Index, N: Index, K: Index):
    mem = MemRef.alloca([4, 4], F64)
    zero = constant(0.0)
    for i in range(0, 100):
        for j in range(0, 50):
            ii = (d0 * 2 - d1 * 4 + s1) @ (i, j, N)
            jj = (d1 * 3 - s0) @ (j, M)
            mem[ii, jj] = zero
    for i in range(0, 100):
        for j in range(0, 50):
            ii = (d0 * 7 + d1 * 9 - s1) @ (i, j, M)
            jj = (d1 * 11 + s0) @ (j, K)
            v = mem[ii, jj]
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
   arg1 + 2*arg3 + -4*arg4 + arg0 + -7*arg3' + -9*arg4' == 0, 
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


```python
def hasnt_dep(M: Index, N: Index, K: Index):
    mem = MemRef.alloca([4, 4], F64)
    zero = constant(0.0)
    for i in range(0, 100):
        for j in range(0, 50):
            ii = 2 * (d0 * 2 - d1 * 4 + s1) @ (i, j, N)
            jj = 2 * (d1 * 3 - s0) @ (j, M)
            mem[ii, jj] = zero
    for i in range(0, 100):
        for j in range(0, 50):
            ii = (2 * (d0 * 7 + d1 * 9 - s1) + 1) @ (i, j, M)
            jj = (2 * (d1 * 11 + s0) + 1) @ (j, K)
            v = mem[ii, jj]
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

constraint system for load op:

2' = -2*arg0 + 14*arg3' + 18*arg4' + 1
3' = 2*arg2 + 22*arg4' + 1
0 <= arg3'
arg3' <= 99
0 <= arg4'
arg4' <= 49

composed constraint system: {
   2*arg1 + 4*arg3 + -8*arg4 + 2*arg0 + -14*arg3' + -18*arg4' == 1, 
   6*arg4 + -2*arg0 + -2*arg2 + -22*arg4' == 1, 
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
-DPython3_EXECUTABLE="$(which python)" \
-DCMAKE_INSTALL_PREFIX=llvm_install
```

## Generating MLIR Python bindings by hand

Create a td file like this (note that inclusion of `Python/Attributes.td`):

```
#ifndef PYTHON_BINDINGS_OPENMP_OPS
#define PYTHON_BINDINGS_OPENMP_OPS

include "mlir/Bindings/Python/Attributes.td"
include "mlir/Dialect/OpenMP/OpenMPOps.td"

#endif
```

Then run 

```shell
LLVM_INSTALL_DIR=/home/mlevental/dev_projects/nelli/llvm_install

$LLVM_INSTALL_DIR/bin/mlir-tblgen -gen-python-op-bindings -bind-dialect=omp \
  -I $LLVM_INSTALL_DIR/include \
  OpenMPOps.td \
  -o _omp_ops_gen.py
```

If you're feeling adventurous you can dump raw JSON corresponding to the `.td`:

```shell
LLVM_INSTALL_DIR=/Users/mlevental/dev_projects/nelli/llvm_install

$LLVM_INSTALL_DIR/bin/llvm-tblgen -dump-json \
  -I $LLVM_INSTALL_DIR/include \
  OpenMPOps.td \
  -o openmp.json
```

## ARM Docker

```shell
$ docker build -t nelli_build --build-arg PY_VERSION=3.11 -f scripts/Dockerfile .
```

will build a `linux-aarch64` wheel (note the trailing `.`) at `/repo/wheelhouse` within the container.
An ARM `z3-solver` wheel will also be built.
Then 

```shell
$ docker cp 134c40a817db /repo/wheelhouse/nelli-0.0.3-cp311-cp311-linux_aarch64.whl .
```

will copy that wheel out of the container.

## Conda

If you have an existing conda environment with everything you need then

```shell
$ conda run -n nelli_base python -m venv venv --system-site-packages && source venv/bin/activate
```

will "clone" that environment. Note that further `pip install`ing will need a `-I` and also packages with command line scripts (like `pytest`) won't work, so they'll need to be reinstalled.