# Loopy

Loop analysis for the polyhedrally challenged.

# Installing

Just

```shell
pip install -r requirements.txt 
CMAKE_GENERATOR=Ninja pip install . --no-build-isolation -vvvv
```

# Example

[dependence_check_1.py](examples/dependence_check_1.py) demos this example: from this


```python
@mlir_func
def has_dep(M: index_t, N: index_t, K: index_t):
    mem = aff_alloc([4, 4], f64_t)
    zero = constant(0.0)
    for i in range(0, 100):
        for j in range(0, 50):
            ii = (d0 * 2 - d1 * 4 + s1) @ (i, j, N)
            jj = (d1 * 3 - s0) @ (j, M)
            mem[ii, jj] = zero
        endfor()
    endfor()
    for i in range(0, 100):
        for j in range(0, 50):
            ii = (d0 * 7 + d1 * 9 - s1) @ (i, j, M)
            jj = (d1 * 11 + s0) @ (j, K)
            v = mem[ii, jj]
        endfor()
    endfor()
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
@mlir_func
def hasnt_dep(M: index_t, N: index_t, K: index_t):
    mem = aff_alloc([4, 4], f64_t)
    zero = constant(0.0)
    for i in range(0, 100):
        for j in range(0, 50):
            ii = 2 * (d0 * 2 - d1 * 4 + s1) @ (i, j, N)
            jj = 2 * (d1 * 3 - s0) @ (j, M)
            mem[ii, jj] = zero
        endfor()
    endfor()
    for i in range(0, 100):
        for j in range(0, 50):
            ii = (2 * (d0 * 7 + d1 * 9 - s1) + 1) @ (i, j, M)
            jj = (2 * (d1 * 11 + s0) + 1) @ (j, K)
            v = mem[ii, jj]
        endfor()
    endfor()
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
-DCMAKE_INSTALL_PREFIX=<SRC_ROOT>/loopy/loopy \
-DPython3_EXECUTABLE=python \
-DCMAKE_PREFIX_PATH=<LLVM_INSTALL>/install
```