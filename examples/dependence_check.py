# from pprint import pprint
from textwrap import dedent

# noinspection PyUnresolvedReferences
from loopy.loopy_mlir._mlir_libs._loopy_mlir import (
    show_access_relation,
    walk_operation,
)

from loopy.aff import StoreOp, LoadOp, print_sympy_constraints, check_mem_dep, find_ops
from loopy.loopy_mlir import ir
from loopy.loopy_mlir.ir import Module, InsertionPoint
from loopy.mlir import f64_t, index_t
from loopy.mlir.affine import (
    affinefor as range,
    endfor,
)
from loopy.mlir.affine_defs import d0, d1
from loopy.mlir.arith import constant
from loopy.mlir.func import func
from loopy.mlir.memref import aff_alloc


def has_dep():
    module = Module.create()

    with InsertionPoint(module.body):

        @func(index_t, index_t, index_t)
        def has_dep(M, N, K):
            mem = aff_alloc([4, 4], f64_t)
            zero = constant(0.0)
            for i in range(0, 100):
                for j in range(0, 50):
                    ii = (d0 * 2 + d1 * (-4)) @ (i, j)
                    jj = (d1 * 3) @ j
                    mem[ii, jj] = zero
                endfor()
            endfor()
            for i in range(0, 100):
                for j in range(0, 50):
                    ii = (d0 * 7 + d1 * 9) @ (i, j)
                    jj = (d0 * 11) @ i
                    v = mem[ii, jj]
                endfor()
            endfor()

    # print(module)
    stores_loads = find_ops(
        module, lambda op: op.name in {"affine.store", "affine.load"}
    )
    assert stores_loads[0].name == "affine.store"
    assert stores_loads[1].name == "affine.load"
    store = StoreOp(stores_loads[0])
    print("\nconstraint system for store op:\n")
    print_sympy_constraints(store.sympy_access_constraints)
    load = LoadOp(stores_loads[1])
    print("\nconstraint system for store op:\n")
    print_sympy_constraints(load.sympy_access_constraints)

    show_access_relation(store.mlir_op, load.mlir_op)
    check_mem_dep(store, load)


def hasnt_dep():
    module = Module.create()

    with InsertionPoint(module.body):

        @func(index_t, index_t, index_t)
        def hasnt_dep(M, N, K):
            mem = aff_alloc([4, 4], f64_t)
            zero = constant(0.0)
            for i in range(0, 100):
                for j in range(0, 50):
                    ii = (d0 * 4 + d1 * (-8)) @ (i, j)
                    jj = (d1 * 6) @ j
                    mem[ii, jj] = zero
                endfor()
            endfor()
            for i in range(0, 100):
                for j in range(0, 50):
                    ii = (d0 * 14 + d1 * 18 + 1) @ (i, j)
                    jj = (d0 * 22 + 1) @ i
                    v = mem[ii, jj]
                endfor()
            endfor()

    # print(module)
    stores_loads = find_ops(
        module, lambda op: op.name in {"affine.store", "affine.load"}
    )
    assert stores_loads[0].name == "affine.store"
    assert stores_loads[1].name == "affine.load"
    store = StoreOp(stores_loads[0])
    print("\nconstraint system for store op:\n")
    print_sympy_constraints(store.sympy_access_constraints)
    load = LoadOp(stores_loads[1])
    print("\nconstraint system for store op:\n")
    print_sympy_constraints(load.sympy_access_constraints)

    show_access_relation(store.mlir_op, load.mlir_op)
    check_mem_dep(store, load)


has_dep()
# hasnt_dep()
