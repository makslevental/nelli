import logging

FORMAT = "[%(filename)s:%(funcName)s:%(lineno)d] %(message)s"
logging.basicConfig(level=logging.DEBUG, format=FORMAT)
logger = logging.getLogger(__name__)

from loopy.poly.affine import (
    StoreOp,
    LoadOp,
)
from loopy.poly.constraints import (
    show_sympy_constraints,
    check_mem_dep,
    compute_dependence_direction_vector,
)
from loopy.mlir import f64_t, index_t, f32_t
from loopy.mlir.affine import (
    affine_for as range,
)
from loopy.poly.sympy_ import d0, d1, s0, s1
from loopy.mlir.arith import constant
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import aff_alloc
from loopy.utils import find_ops, mlir_mod_ctx, reset_disambig_names, mlir_gc


def has_dep():
    with mlir_mod_ctx() as module:

        @mlir_func
        def has_dep(M: index_t, N: index_t, K: index_t):
            mem = aff_alloc([4, 4], f64_t)
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

    stores_loads = find_ops(
        module, lambda op: op.name in {"affine.store", "affine.load"}
    )
    assert stores_loads[0].name == "affine.store"
    assert stores_loads[1].name == "affine.load"
    store = StoreOp(stores_loads[0])
    logger.debug("constraint system for store op:")
    logger.debug(show_sympy_constraints(store.sympy_access_constraints))
    load = LoadOp(stores_loads[1])
    logger.debug("constraint system for load op:")
    logger.debug(show_sympy_constraints(load.sympy_access_constraints))

    # show_access_relation(store.mlir_op, load.mlir_op)
    dep = check_mem_dep(store, load)
    if dep is not None:
        logger.debug(f"dependence found @ {dep}".replace(":", "->"))
    else:
        logger.debug("no dependency")


def hasnt_dep():
    with mlir_mod_ctx() as module:

        @mlir_func
        def hasnt_dep(M: index_t, N: index_t, K: index_t):
            mem = aff_alloc([4, 4], f64_t)
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
    logger.debug("constraint system for store op:")
    logger.debug(show_sympy_constraints(store.sympy_access_constraints))
    load = LoadOp(stores_loads[1])
    logger.debug("constraint system for load op:")
    logger.debug(show_sympy_constraints(load.sympy_access_constraints))

    # show_access_relation(store.mlir_op, load.mlir_op)
    dep = check_mem_dep(store, load)
    if dep is not None:
        logger.debug(f"dependence found @ {dep}".replace(":", "->"))
    else:
        logger.debug("no dependency")


def direction_vector():
    with mlir_mod_ctx() as module:

        @mlir_func
        def store_range_load_last_in_range():
            mem = aff_alloc([100], f32_t)
            c7 = constant(7.0, f32_t)
            for i0 in range(0, 10):
                for i1 in range(0, 10):
                    a0 = (d0 + 1) @ i1
                    v0  = mem[a0]
                    a1 = d0 @ i1
                    mem[a1] = c7

    stores_loads = find_ops(
        module, lambda op: op.name in {"affine.store", "affine.load"}
    )
    store = StoreOp(stores_loads[1])
    load = LoadOp(stores_loads[0])
    compute_dependence_direction_vector(store, load, 1)


if __name__ == "__main__":
    # has_dep()
    # reset_disambig_names()
    # mlir_gc()
    # hasnt_dep()
    # mlir_gc()
    direction_vector()
    mlir_gc()
