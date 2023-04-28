- [Nelli](#nelli)
- [Examples](#examples)
- [Installing](#installing)
- [Development](#development)
  * [Generating MLIR Python bindings by hand](#generating-mlir-python-bindings-by-hand)
  * [ARM Docker](#arm-docker)
  * [Conda](#conda)

# Nelli

`Nelli` builds on top of existing MLIR Python bindings (and a few other MLIR-related projects) to map Python primitives (such as `if`s, `for`s, and `class`es) to various MLIR dialects.
The goal is to both be "Pythonic" *and* preserve the semantics of MLIR vis-a-vis the in-tree Python bindings.

[![Test](https://github.com/makslevental/nelli/actions/workflows/test.yml/badge.svg)](https://github.com/makslevental/nelli/actions/workflows/test.yml)
[![Build](https://github.com/makslevental/nelli/actions/workflows/build.yml/badge.svg)](https://github.com/makslevental/nelli/actions/workflows/build.yml)

# Examples

Examples abound in the [tests](./tests) directory; a few that demonstrate the key value proposition:

```python
@mlir_func
def ifs(M: F64, N: F64):
    one = constant(1.0)
    if M < N:
        two = constant(2.0)
        mem = MemRef.alloca([3, 3], F64)
    else:
        six = constant(6.0)
        mem = MemRef.alloca([7, 7], F64)
```

lowers to 

```mlir
func.func @ifs(%arg0: f64, %arg1: f64) {
  %cst = arith.constant 1.000000e+00 : f64
  %0 = arith.cmpf olt, %arg0, %arg1 : f64
  scf.if %0 {
    %cst_0 = arith.constant 2.000000e+00 : f64
    %1 = memref.alloca() : memref<3x3xf64>
  } else {
    %cst_0 = arith.constant 6.000000e+00 : f64
    %1 = memref.alloca() : memref<7x7xf64>
  }
  return
}
```

and 

```python
M, N, K = 4, 16, 8

@mlir_func
def matmul(A: MemRef[(M, N), F32], B: MemRef[(N, K), F32], C: MemRef[(M, K), F32]):
    for i in range(M):
        for j in range(N):
            for k in range(K):
                a = A[i, j]
                b = B[i, j]
                c = C[i, k]
                d = a * b
                e = c + d
                C[i, k] = e
```

lowers to 

```mlir
func.func @matmul(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) {
  affine.for %arg3 = 0 to 4 {
    affine.for %arg4 = 0 to 16 {
      affine.for %arg5 = 0 to 8 {
        %0 = memref.load %arg0[%arg3, %arg4] : memref<4x16xf32>
        %1 = memref.load %arg1[%arg3, %arg4] : memref<16x8xf32>
        %2 = memref.load %arg2[%arg3, %arg5] : memref<4x8xf32>
        %3 = arith.mulf %0, %1 : f32
        %4 = arith.addf %2, %3 : f32
        memref.store %4, %arg2[%arg3, %arg5] : memref<4x8xf32>
      }
    }
  }
  return
}
```

There are lots of knobs and switches;

```python
@mlir_func(range_ctor=parfor)
def mat_product(A: MemRef[(4, 16), F32], B: MemRef[(16, 8), F32], C: MemRef[(4, 8), F32]):
    for i, j in range([0, 0], [4, 8]):
        a = A[i, j]
        b = B[i, j]
        C[i, j] = a * b
```

lowers to

```mlir
func.func @mat_product(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) {
  %c0 = arith.constant 0 : index
  %c4 = arith.constant 4 : index
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  scf.parallel (%arg3, %arg4) = (%c0, %c0) to (%c4, %c8) step (%c1, %c1) {
    %0 = memref.load %arg0[%arg3, %arg4] : memref<4x16xf32>
    %1 = memref.load %arg1[%arg3, %arg4] : memref<16x8xf32>
    %2 = arith.mulf %0, %1 : f32
    memref.store %2, %arg2[%arg3, %arg4] : memref<4x8xf32>
    scf.yield
  }
  return
}
```

There is also limited (but constantly improving) support for nested modules;

```python
M, N, K = 4, 16, 8
class MyClass1(GPUModule):
    def kernel(self, A: MemRef[(M, N), F32], B: MemRef[(N, K), F32], C: MemRef[(M, K), F32]):
        x = block_id_x()
        y = block_id_y()
        a = A[x, y]
        b = B[x, y]
        C[x, y] = a * b
        return

m = MyClass1()

@mlir_func
def main(A: MemRef[(M, N), F32], B: MemRef[(N, K), F32], C: MemRef[(M, K), F32]):
    m.kernel(A, B, C, grid_size=[4, 4, 1], block_size=[1, 1, 1])
```

lowers to 

```mlir
module {
  gpu.module @MyClass1 {
    gpu.func @kernel(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) kernel {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = memref.load %arg0[%0, %1] : memref<4x16xf32>
      %3 = memref.load %arg1[%0, %1] : memref<16x8xf32>
      %4 = arith.mulf %2, %3 : f32
      memref.store %4, %arg2[%0, %1] : memref<4x8xf32>
      gpu.return
    }
  }
  func.func @main(%arg0: memref<4x16xf32>, %arg1: memref<16x8xf32>, %arg2: memref<4x8xf32>) {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %0 = gpu.launch_func async @MyClass1::@kernel blocks in (%c4, %c4, %c1) threads in (%c1, %c1, %c1) args(%arg0 : memref<4x16xf32>, %arg1 : memref<16x8xf32>, %arg2 : memref<4x8xf32>)
    return
  }
}
```

and 

```python
@mlir_func(range_ctor=scf_for)
def loop_unroll_op():
    for i in range(0, 42, 5):
        v = i + i

@sequence
def basic(target, *extra_args):
    m = match(target, ["arith.addi"])
    loop = get_parent_for_loop(m)
    unroll(loop, 4)
```

lowers to 

```mlir
module {
  func.func @loop_unroll_op() {
    %c0 = arith.constant 0 : index
    %c42 = arith.constant 42 : index
    %c5 = arith.constant 5 : index
    scf.for %arg0 = %c0 to %c42 step %c5 {
      %0 = arith.addi %arg0, %arg0 : index
    }
    return
  }
  transform.sequence  failures(propagate) attributes {transform.target_tag = "basic"} {
  ^bb0(%arg0: !pdl.operation):
    %0 = transform.structured.match ops{["arith.addi"]} in %arg0 : (!pdl.operation) -> !pdl.operation
    %1 = transform.loop.get_parent_for %0 : (!pdl.operation) -> !transform.op<"scf.for">
    transform.loop.unroll %1 {factor = 4 : i64} : !transform.op<"scf.for">
  }
}
```

In addition, running pass pipelines is also supported; 

```python
run_pipeline(
    module,
    Pipeline()
    .transform_dialect_interpreter()
    .transform_dialect_erase_schedule()
    .materialize(),
)
```

in the context of the just prior example produces

```mlir
func.func @loop_unroll_op() {
  %c0 = arith.constant 0 : index
  %c42 = arith.constant 42 : index
  %c5 = arith.constant 5 : index
  %c40 = arith.constant 40 : index
  %c20 = arith.constant 20 : index
  scf.for %arg0 = %c0 to %c40 step %c20 {
    %1 = arith.addi %arg0, %arg0 : index
    %c1 = arith.constant 1 : index
    %2 = arith.muli %c5, %c1 : index
    %3 = arith.addi %arg0, %2 : index
    %4 = arith.addi %3, %3 : index
    %c2 = arith.constant 2 : index
    %5 = arith.muli %c5, %c2 : index
    %6 = arith.addi %arg0, %5 : index
    %7 = arith.addi %6, %6 : index
    %c3 = arith.constant 3 : index
    %8 = arith.muli %c5, %c3 : index
    %9 = arith.addi %arg0, %8 : index
    %10 = arith.addi %9, %9 : index
  }
  %0 = arith.addi %c40, %c40 : index
  return
}
```

# Installing

Just

```shell
pip install . -v
```

or peruse the [release page](https://github.com/makslevental/nelli/releases).
In fact, you can `pip install` directly from such a release:

```shell
pip install nelli -f https://github.com/makslevental/nelli/releases/expanded_assets/0.0.7
```

For Raspberry Pi (`linux-aarch64`) prefix `pip install` with these CMake args (in order to prevent OOMing with GNU's `ld`):

```shell
CMAKE_ARGS="-DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_EXE_LINKER_FLAGS_INIT=-fuse-ld=lld -DCMAKE_MODULE_LINKER_FLAGS_INIT=-fuse-ld=lld -DCMAKE_SHARED_LINKER_FLAGS_INIT=-fuse-ld=lld"
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