import logging

logger = logging.getLogger(__name__)

# noinspection PyUnresolvedReferences
from loopy.aff import (
    StoreOp,
    LoadOp,
    show_sympy_constraints,
    check_mem_dep,
    get_ordering_constraints,
)
from loopy.mlir import f64_t, index_t, f32_t
from loopy.mlir.affine import (
    affine_for as range,
    affine_endfor as endfor,
)
from loopy.aff import StoreOp, LoadOp
from loopy.sympy_ import d0, d1, d2, s0, s1
from loopy.mlir.arith import constant
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import aff_alloc
from loopy.utils import (
    mlir_gc,
    mlir_mod_ctx,
    get_common_loops,
)

op1, op2 = None, None


class TestMemrefDependenceCheck:
    def test_dependent_loops(self):
        global op1, op2
        with mlir_mod_ctx() as module:

            @mlir_func
            def dependent_loops():
                global op1, op2
                m = aff_alloc([10], f32_t)
                cst = constant(7.0, f32_t)

                for i in range(0, 10):
                    m[d0 @ i] = cst
                    op1 = m.most_recent_store
                endfor()

                for i in range(0, 10):
                    op2 = m[d0 @ i]
                endfor()

            logger.debug(module)

            store = StoreOp(op1.operation)
            load = LoadOp(op2.owner)
            dep = check_mem_dep(store, load)
            assert dep is not None
            dep = {str(k): v.as_long() for k, v in dep.items()}
            assert dep == {"%arg0": 0, "%arg0'": 0, "%2": 0, "%2'": 0}
            mlir_gc()

    def test_num_common_loops(self):
        global op1, op2

        def zero_loops():
            with mlir_mod_ctx() as module:

                @mlir_func
                def zero_loops():
                    global op1, op2
                    m = aff_alloc([10], f32_t)
                    cst = constant(7.0, f32_t)

                    for i in range(0, 10):
                        m[d0 @ i] = cst
                    endfor()
                    op1 = m.most_recent_store

                    for i in range(0, 10):
                        op2 = m[d0 @ i]
                    endfor()

            logger.debug(module)
            assert len(get_common_loops(op1.operation, op2.owner)) == 0
            mlir_gc()

        def one_loop():
            with mlir_mod_ctx() as module:
                @mlir_func
                def one_loop():
                    global op1, op2
                    m = aff_alloc([10], f32_t)
                    cst = constant(7.0, f32_t)

                    for i in range(0, 10):
                        m[d0 @ i] = cst
                        op2 = m[d0 @ i]
                    endfor()
                    op1 = m.most_recent_store

            logger.debug(module)
            assert len(get_common_loops(op1.operation, op2.owner)) == 1

        def two_loops():
            with mlir_mod_ctx() as module:

                @mlir_func
                def two_loops():
                    global op1, op2
                    m = aff_alloc([10], f32_t)
                    cst = constant(7.0, f32_t)

                    for i in range(0, 10):
                        for i in range(0, 10):
                            m[d0 @ i] = cst
                            op2 = m[d0 @ i]
                        endfor()
                    endfor()
                    op1 = m.most_recent_store

            logger.debug(module)
            assert len(get_common_loops(op1.operation, op2.owner)) == 2

        def three_loops():
            with mlir_mod_ctx() as module:

                @mlir_func
                def three_loops():
                    global op1, op2
                    m = aff_alloc([10], f32_t)
                    cst = constant(7.0, f32_t)

                    for i in range(0, 10):
                        for i in range(0, 10):
                            for k in range(0, 10):
                                m[d0 @ i] = cst
                                op1 = m.most_recent_store
                                op2 = m[d0 @ i]
                            endfor()
                        endfor()
                    endfor()

            logger.debug(module)
            assert len(get_common_loops(op1.operation, op2.owner)) == 3

        mlir_gc()
        zero_loops()
        op1, op2 = None, None
        mlir_gc()
        one_loop()
        op1, op2 = None, None
        mlir_gc()
        two_loops()
        op1, op2 = None, None
        mlir_gc()
        three_loops()
        mlir_gc()

    def test_ordering_constraints(self):
        global op1, op2

        def loop_carried_dep():
            global op1, op2
            with mlir_mod_ctx() as module:

                @mlir_func
                def has_dep(M: index_t, N: index_t, K: index_t):
                    global op1, op2

                    mem = aff_alloc([4, 4], f64_t)
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
                                op2 = mem[iii, jjj]
                            endfor()
                        endfor()
                    endfor()

            logger.debug(module)

            store = StoreOp(op1.operation)
            load = LoadOp(op2.owner)

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
