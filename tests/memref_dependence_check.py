import builtins
import gc
import logging

logger = logging.getLogger(__name__)

# noinspection PyUnresolvedReferences
from loopy.aff import (
    StoreOp,
    LoadOp,
    show_sympy_constraints,
    check_mem_dep,
)
from loopy.mlir import f64_t, index_t, f32_t
from loopy.mlir.affine import (
    affine_for as range,
    affine_endfor as endfor,
)
from loopy.mlir.utils import mlir_mod_ctx
from loopy.sympy_ import d0, d1, s0, s1
from loopy.mlir.arith import constant
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import aff_alloc
from loopy.utils import (
    reset_disambig_names,
    find_ops,
    show_access_relation,
    show_sanity_check_access_relation,
    get_common_loops,
)

op1, op2 = None, None


class TestMemrefDependenceCheck:
    def test_dependent_loops(self):
        with mlir_mod_ctx() as module:

            @mlir_func
            def dependent_loops():
                m = aff_alloc([10], f32_t)
                cst = constant(7.0, f32_t)

                for i in range(0, 10):
                    m[d0 @ i] = cst
                endfor()

                for i in range(0, 10):
                    v = m[d0 @ i]
                endfor()

            logger.debug(module)
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

            # show_sanity_check_access_relation(store.mlir_op, load.mlir_op)
            dep = check_mem_dep(store, load)
            assert dep is not None
            dep = {str(k): v.as_long() for k, v in dep.items()}
            assert set(dep.keys()) == {"arg0", "arg0'"}
            assert set(dep.values()) == {0}

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

            assert len(get_common_loops(op1.operation, op2.owner)) == 0

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
                                op2 = m[d0 @ i]
                            endfor()
                        endfor()
                    endfor()
                    op1 = m.most_recent_store

            assert len(get_common_loops(op1.operation, op2.owner)) == 3

        zero_loops()
        op1, op2 = None, None
        for i in builtins.range(10):
            gc.collect()
        one_loop()
        op1, op2 = None, None
        for i in builtins.range(10):
            gc.collect()
        two_loops()
        op1, op2 = None, None
        for i in builtins.range(10):
            gc.collect()
        three_loops()
