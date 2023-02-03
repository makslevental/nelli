import logging

logger = logging.getLogger(__name__)

# noinspection PyUnresolvedReferences
from loopy.poly.affine import (
    StoreOp,
    LoadOp,
)
from loopy.poly.constraints import (
    check_mem_dep,
    get_ordering_constraints,
    compute_dependence_direction_vector,
)

from loopy.mlir import F64, Index, F32, I32
from loopy.poly.sympy_ import d0, d1, d2, s0, s1
from loopy.mlir.arith import constant
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import MemRefValue
from loopy.utils import (
    mlir_gc,
    mlir_mod_ctx,
    get_common_loops,
    find_ops,
)


class TestMemrefDependenceCheck:
    def test_dependent_loops(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def dependent_loops():

                m = MemRefValue.alloca([10], F32)
                cst = constant(7.0, F32)

                for i in range(0, 10):
                    m[d0 @ i] = cst

                for i in range(0, 10):
                    v = m[d0 @ i]

        logger.debug(module)
        stores_loads = find_ops(
            module, lambda op: op.name in {"affine.store", "affine.load"}
        )
        store = StoreOp(stores_loads[0])
        load = LoadOp(stores_loads[1])
        dep = check_mem_dep(store, load)
        assert dep is not None
        dep = {str(k): v.as_long() for k, v in dep.items()}
        assert dep == {"%arg0": 0, "%arg0'": 0, "ssa2": 0, "ssa2'": 0}
        mlir_gc()

    def test_num_common_loops(self):
        def zero_loops():
            with mlir_mod_ctx() as module:

                @mlir_func
                def zero_loops():

                    m = MemRefValue.alloca([10], F32)
                    cst = constant(7.0, F32)

                    for i in range(0, 10):
                        m[d0 @ i] = cst

                    for i in range(0, 10):
                        v = m[d0 @ i]

            logger.debug(module)
            stores_loads = find_ops(
                module, lambda op: op.name in {"affine.store", "affine.load"}
            )
            store = StoreOp(stores_loads[0])
            load = LoadOp(stores_loads[1])
            assert len(get_common_loops(store.mlir_op, load.mlir_op)) == 0
            mlir_gc()

        def one_loop():
            with mlir_mod_ctx() as module:

                @mlir_func
                def one_loop():
                    m = MemRefValue.alloca([10], F32)
                    cst = constant(7.0, F32)

                    for i in range(0, 10):
                        m[d0 @ i] = cst
                        v = m[d0 @ i]

            logger.debug(module)
            stores_loads = find_ops(
                module, lambda op: op.name in {"affine.store", "affine.load"}
            )
            store = StoreOp(stores_loads[0])
            load = LoadOp(stores_loads[1])
            assert len(get_common_loops(store.mlir_op, load.mlir_op)) == 1

        def two_loops():
            with mlir_mod_ctx() as module:

                @mlir_func
                def two_loops():

                    m = MemRefValue.alloca([10], F32)
                    cst = constant(7.0, F32)

                    for i in range(0, 10):
                        for i in range(0, 10):
                            m[d0 @ i] = cst
                            v = m[d0 @ i]

            logger.debug(module)
            stores_loads = find_ops(
                module, lambda op: op.name in {"affine.store", "affine.load"}
            )
            store = StoreOp(stores_loads[0])
            load = LoadOp(stores_loads[1])
            assert len(get_common_loops(store.mlir_op, load.mlir_op)) == 2

        def three_loops():
            with mlir_mod_ctx() as module:

                @mlir_func
                def three_loops():

                    m = MemRefValue.alloca([10], F32)
                    cst = constant(7.0, F32)

                    for i in range(0, 10):
                        for i in range(0, 10):
                            for k in range(0, 10):
                                m[d0 @ i] = cst

                                v = m[d0 @ i]

            logger.debug(module)
            stores_loads = find_ops(
                module, lambda op: op.name in {"affine.store", "affine.load"}
            )
            store = StoreOp(stores_loads[0])
            load = LoadOp(stores_loads[1])
            assert len(get_common_loops(store.mlir_op, load.mlir_op)) == 3

        mlir_gc()
        zero_loops()
        mlir_gc()
        one_loop()
        mlir_gc()
        two_loops()
        mlir_gc()
        three_loops()
        mlir_gc()

    def test_ordering_constraints(self):
        def loop_carried_dep():

            with mlir_mod_ctx() as module:

                @mlir_func
                def has_dep(M: Index, N: Index, K: Index):

                    mem = MemRefValue.alloca([4, 4], F64)
                    zero = constant(0.0)
                    for i in range(0, 100):
                        for j in range(0, 50):
                            for k in range(0, 50):
                                ii = (d2 + d0 * 2 - d1 * 4 + s1) @ (i, j, k, N)
                                jj = (d2 + d1 * 3 - s0) @ (j, k, M)
                                mem[ii, jj] = zero
                                op1 = mem.most_recent_store

                                iii = (d2 + d0 * 7 + d1 * 9 - s1) @ (i, j, k, M)
                                jjj = (d2 + d1 * 11 + s0) @ (j, k, K)
                                v = mem[iii, jjj]

            logger.debug(module)

            stores_loads = find_ops(
                module, lambda op: op.name in {"affine.store", "affine.load"}
            )
            store = StoreOp(stores_loads[0])
            load = LoadOp(stores_loads[1])

            # show_access_relation(store.mlir_op, load.mlir_op)
            cons = get_ordering_constraints(store, load, to_loop_depth=1)
            cons = set(str(c) for c in cons)
            assert cons == {"%arg3' + -1*%arg3 >= 1"}

            cons = get_ordering_constraints(store, load, to_loop_depth=2)
            cons = set(str(c) for c in cons)
            assert cons == {"%arg3' + -1*%arg3 == 0", "%arg4' + -1*%arg4 >= 1"}

            cons = get_ordering_constraints(store, load, to_loop_depth=3)
            cons = set(str(c) for c in cons)
            assert cons == {
                "%arg3' + -1*%arg3 == 0",
                "%arg4' + -1*%arg4 == 0",
                "%arg5' + -1*%arg5 >= 1",
            }

            cons = get_ordering_constraints(store, load, to_loop_depth=4)
            cons = set(str(c) for c in cons)
            assert cons == {
                "%arg3' + -1*%arg3 == 0",
                "%arg4' + -1*%arg4 == 0",
                "%arg5' + -1*%arg5 == 0",
            }

            cons = get_ordering_constraints(store, load, to_loop_depth=5)
            cons = set(str(c) for c in cons)
            assert cons == {
                "%arg3' + -1*%arg3 == 0",
                "%arg4' + -1*%arg4 == 0",
                "%arg5' + -1*%arg5 == 0",
            }

        mlir_gc()
        loop_carried_dep()

    def test_direction_vectors(self):
        def direction_vector():
            with mlir_mod_ctx() as module:

                @mlir_func
                def mod_div_3d():
                    M = MemRefValue.alloca([2, 2, 2], I32)
                    c0 = constant(0, I32)
                    for i0 in range(0, 8):
                        for i1 in range(0, 8):
                            for i2 in range(0, 8):
                                idx0 = (d0 // 4) @ i0
                                idx1 = (d1 % 2) @ i1
                                idx2 = (d2 // 4) @ i2
                                M[idx0, idx1, idx2] = c0
                                jdx0 = (d0 // 4) @ i0
                                jdx1 = (d1 % 2) @ i1
                                jdx2 = (d2 // 4) @ i2
                                v = M[jdx0, jdx1, jdx2]

            stores_loads = find_ops(
                module, lambda op: op.name in {"affine.store", "affine.load"}
            )
            store = StoreOp(stores_loads[0])
            load = LoadOp(stores_loads[1])
            dir_vecs = compute_dependence_direction_vector(store, load, 1)
            # TODO(max): these are off by one
            assert str(dir_vecs) == "{v0: [1, 3], v1: [-6, 6], v2: [-3, 3]}"
            dir_vecs = compute_dependence_direction_vector(store, load, 2)
            assert str(dir_vecs) == "{v0: [0, 0], v1: [2, 6], v2: [-3, 3]}"
            dir_vecs = compute_dependence_direction_vector(store, load, 3)
            assert str(dir_vecs) == "{v0: [0, 0], v1: [0, 0], v2: [1, 3]}"
