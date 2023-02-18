import logging
import time
from itertools import product

from nelli.mlir.affine._affine_ops_gen import AffineStoreOp, AffineLoadOp

FORMAT = "[%(filename)s:%(funcName)s:%(lineno)d] %(message)s"
logging.basicConfig(level=logging.DEBUG, format=FORMAT)
logger = logging.getLogger(__name__)

from nelli.poly.z3_ import opt_system

# noinspection PyUnresolvedReferences
from nelli.mlir._mlir._mlir_libs._nelli_mlir import (
    show_direction_vector,
)
from nelli.poly.affine import (
    StoreOp,
    LoadOp,
    make_mem_op,
)
from nelli.poly.constraints import (
    show_sympy_constraints,
    check_mem_dep,
    compute_dependence_direction_vector,
    compose,
    build_constraint_system,
)
from nelli import F32, F64, I32, Index
from nelli.poly.sympy_ import d0, d1, d2, d3, d4, d5, s0, s1
from nelli.mlir.arith import constant
from nelli.mlir.func import mlir_func
from nelli.mlir.affine import AffineMemRefValue as MemRef
from nelli.utils import find_ops, mlir_mod_ctx, mlir_gc, reset_disambig_names


def has_dep():
    with mlir_mod_ctx() as module:

        @mlir_func
        def has_dep(M: Index, N: Index, K: Index):
            mem = MemRef.alloca([4, 4], F64)
            zero = constant(0.0)
            for i in range(0, 100):
                for j in range(0, 50):
                    ii = (d0 * 2 - d1 * 4 + s1) @ (i, j, N)
                    jj = (d1 * 3 - s0) @ (j, M)
                    mem[ii, jj] = zero

                    ii = (d0 * 7 + d1 * 9 - s1) @ (i, j, M)
                    jj = (d1 * 11 + s0) @ (j, K)
                    v = mem[ii, jj]

    print(module)

    stores_loads = find_ops(
        module, lambda op: op.name in {"affine.store", "affine.load"}
    )
    assert stores_loads[0].name == "affine.store"
    assert stores_loads[1].name == "affine.load"
    store = StoreOp(stores_loads[0])
    print("constraint system for store op:")
    print(show_sympy_constraints(store.sympy_access_constraints))
    load = LoadOp(stores_loads[1])
    print("constraint system for load op:")
    print(show_sympy_constraints(load.sympy_access_constraints))

    # show_access_relation(store.mlir_op, load.mlir_op)
    quants, cons = build_constraint_system(store, load)
    dep = check_mem_dep(quants, cons)
    if dep is not None:
        print(f"dependence found @ {dep}".replace(":", "->"))
    else:
        print("no dependency")


def hasnt_dep():
    with mlir_mod_ctx() as module:

        @mlir_func
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

    # print(module)

    stores_loads = find_ops(
        module, lambda op: op.name in {"affine.store", "affine.load"}
    )
    assert stores_loads[0].name == "affine.store"
    assert stores_loads[1].name == "affine.load"
    store = StoreOp(stores_loads[0])
    print("constraint system for store op:")
    print(show_sympy_constraints(store.sympy_access_constraints))
    load = LoadOp(stores_loads[1])
    print("constraint system for load op:")
    print(show_sympy_constraints(load.sympy_access_constraints))

    # show_access_relation(store.mlir_op, load.mlir_op)
    quants, cons = build_constraint_system(store, load)
    dep = check_mem_dep(quants, cons)
    if dep is not None:
        print(f"dependence found @ {dep}".replace(":", "->"))
    else:
        print("no dependency")


def direction_vector():
    with mlir_mod_ctx() as module:

        @mlir_func
        def mod_div_3d():
            M = MemRef.alloca([2, 2, 2], I32)
            c0 = constant(0, I32)
            for i0 in range(0, 8):
                for i1 in range(0, 8):
                    for i2 in range(0, 8):
                        idx0 = (d0 // 4) @ i0
                        idx1 = (d1 % 2) @ i1
                        idx2 = (d2 // 4) @ i2
                        M[idx0, idx1, idx2] = c0
                        # TODO(max): they have to be different
                        # because in compose equality
                        # constraints.append(Int(dim_m1.name) == Int(dim_m2.name))
                        jdx0 = (d0 // 4) @ i0
                        jdx1 = (d1 % 2) @ i1
                        jdx2 = (d2 // 4) @ i2
                        v = M[jdx0, jdx1, jdx2]

    # print(module)
    stores_loads = find_ops(
        module, lambda op: op.name in {"affine.store", "affine.load"}
    )
    store = StoreOp(stores_loads[0])
    load = LoadOp(stores_loads[1])
    for loop_depth in [1, 2, 3]:
        print(f"{loop_depth=}")
        dir_vecs = compute_dependence_direction_vector(store, load, loop_depth)
        print(dir_vecs)
        print(show_direction_vector(store.mlir_op, load.mlir_op, loop_depth))


def deep_loop(scale=10):
    with mlir_mod_ctx() as module:

        @mlir_func
        def mod_div_6d(K: Index, L: Index, MM: Index, N: Index, O: Index, P: Index):
            M = MemRef.alloca(
                [
                    10 * scale,
                    10 * scale,
                    10 * scale,
                    10 * scale,
                    10 * scale,
                    10 * scale,
                ],
                I32,
            )
            c0 = constant(0, I32)
            for i0 in range(0, 10 * scale):
                for i1 in range(0, 10 * scale):
                    for i2 in range(0, 10 * scale):
                        for i3 in range(0, 10 * scale):
                            for i4 in range(0, 10 * scale):
                                for i5 in range(0, 10 * scale):
                                    idx0 = (d0 // 4 + s0) @ (i0, K)
                                    idx1 = (d1 % 2 + s0) @ (i1, L)
                                    idx2 = (d2 // 4 + s0) @ (i2, MM)
                                    idx3 = (d3 % 4 + s0) @ (i3, N)
                                    idx4 = (d4 // 2 + s0) @ (i4, O)
                                    idx5 = (d5 % 4 + s0) @ (i5, P)
                                    M[idx0, idx1, idx2, idx3, idx4, idx5] = c0
                                    # TODO(max): they have to be different
                                    # because in compose equality
                                    # constraints.append(Int(dim_m1.name) == Int(dim_m2.name))
                                    jdx0 = (d0 // 4 + s0) @ (i0, K)
                                    jdx1 = (d1 % 2 + s0) @ (i1, L)
                                    jdx2 = (d2 // 4 + s0) @ (i2, MM)
                                    jdx3 = (d3 % 4 + s0) @ (i3, N)
                                    jdx4 = (d4 // 2 + s0) @ (i4, O)
                                    jdx5 = (d5 % 4 + s0) @ (i5, P)
                                    v = M[jdx0, jdx1, jdx2, jdx3, jdx4, jdx5]

    print(module)
    stores_loads = find_ops(
        module, lambda op: op.name in {"affine.store", "affine.load"}
    )
    store = StoreOp(stores_loads[0])
    load = LoadOp(stores_loads[1])
    for loop_depth in [1, 2, 3, 4, 5, 6]:
        print(f"{loop_depth=}")
        s = time.monotonic()
        dir_vecs = compute_dependence_direction_vector(store, load, loop_depth)
        print("mine", time.monotonic() - s)
        print(dir_vecs)
        s = time.monotonic()
        print(show_direction_vector(store.mlir_op, load.mlir_op, loop_depth))
        print("fpl", time.monotonic() - s)


def collapsing_memref():
    with mlir_mod_ctx() as module:

        @mlir_func
        def collapsing_memref(A: MemRef[(31, 31, 31), F64]):
            B = MemRef.alloca([3, 4, 5], F64)
            for i in range(0, 31):
                for j in range(0, 31):
                    for k in range(0, 31):
                        a = A[i, j, k]

                        ii = (d0 % 3) @ i
                        jj = (d1 % 4) @ j
                        kk = (d2 % 5) @ k
                        B[ii, jj, kk] = a

    print(module)

    stores_loads = find_ops(
        module, lambda op: op.name in {"affine.store", "affine.load"}
    )
    assert stores_loads[1].name == "affine.store"
    assert stores_loads[0].name == "affine.load"
    store = StoreOp(stores_loads[1])
    print("constraint system for store op:")
    print(show_sympy_constraints(store.sympy_access_constraints))
    idx0, idx1, idx2 = (
        store.dim_to_operand[0].res_sym,
        store.dim_to_operand[1].res_sym,
        store.dim_to_operand[2].res_sym,
    )
    idx0_z3, idx1_z3, idx2_z3 = (
        store.z3_vars[str(idx0)],
        store.z3_vars[str(idx1)],
        store.z3_vars[str(idx2)],
    )
    for i, j, k in product(range(2), range(3), range(5)):
        cons = list(store.z3_access_constraints)
        cons.extend(
            [
                idx0_z3 == i,
                idx1_z3 == j,
                idx2_z3 == k,
            ]
        )
        model = opt_system(cons, list(store.z3_vars.values()), min=False)
        print(model)


def matmul():
    with mlir_mod_ctx() as module:

        @mlir_func
        def matmul(A: MemRef[(16, 16, 16), F64], B: MemRef[(16, 16, 16), F64]):
            C = MemRef.alloca([16, 16, 16], F64)
            for i in range(0, 16):
                for j in range(0, 16):
                    for k in range(0, 16):
                        C[i, j, k] = A[i, j, k] * B[i, j, k]

            return C

    print(module)


def should_fuse_across_intermediate_loop_with_no_deps():
    with mlir_mod_ctx() as module:

        @mlir_func
        def should_fuse_across_intermediate_loop_with_no_deps():
            A = MemRef.alloca([10], F32)
            B = MemRef.alloca([10], F32)
            C = MemRef.alloca([10], F32)
            cf7 = constant(7.0, F32)
            for i in range(0, 10):
                v0 = A[d0 @ i]
            for i in range(0, 10):
                v0 = B[d0 @ i]
                w0 = C[d0 @ i]
            for i in range(0, 10):
                v0 = C[d0 @ i]

            return

    mem_ops = find_ops(
        module, lambda op: isinstance(op.opview, (AffineStoreOp, AffineLoadOp))
    )
    mem_ops = [make_mem_op(m) for m in mem_ops]
    print(module)
    symbolic_variables, constraints = compose(*mem_ops)
    dep = check_mem_dep(symbolic_variables, constraints)
    print(dep)


if __name__ == "__main__":
    has_dep()
    reset_disambig_names()
    mlir_gc()
    hasnt_dep()
    mlir_gc()
    direction_vector()
    mlir_gc()
    deep_loop(scale=100)
    reset_disambig_names()
    collapsing_memref()
    reset_disambig_names()
    matmul()
    reset_disambig_names()
    should_fuse_across_intermediate_loop_with_no_deps()
