import contextlib
from typing import Union, List, Optional

from . import _omp_ops_gen as omp
from .._mlir.dialects._ods_common import get_op_results_or_values
from ..arith import constant
from ..utils import I32
from .._mlir.ir import Value, InsertionPoint


class ParallelOp(omp.ParallelOp):
    def __init__(
        self,
        num_threads: Union[Value, int] = None,
        *,
        loc=None,
        ip=None,
    ):
        if isinstance(num_threads, int):
            num_threads = constant(num_threads, type=I32)
        super().__init__(
            allocate_vars=[],
            allocators_vars=[],
            reduction_vars=[],
            if_expr_var=None,
            num_threads_var=num_threads,
            reductions=None,
            proc_bind_val=None,
            loc=loc,
            ip=ip,
        )
        self.regions[0].blocks.append(*[])

    @property
    def body(self):
        return self.regions[0].blocks[0]


@contextlib.contextmanager
def parallel(num_threads=None):
    p = ParallelOp(num_threads=num_threads)
    with InsertionPoint.at_block_begin(p.body):
        yield
        omp.TerminatorOp()


class WsLoopOp(omp.WsLoopOp):
    def __init__(
        self,
        lower_bounds: List[Union[Value, int]],
        upper_bounds: List[Union[Value, int]],
        steps: Optional[List[Union[Value, int]]] = None,
        *,
        loc=None,
        ip=None,
    ):
        num_bounds = len(lower_bounds)
        assert num_bounds == len(upper_bounds)
        if steps is None:
            steps = [1] * num_bounds
        else:
            assert len(steps) == num_bounds

        if isinstance(lower_bounds[0], int):
            lower_bounds = [constant(l, type=I32) for l in lower_bounds]
        if isinstance(upper_bounds[0], int):
            upper_bounds = [constant(l, type=I32) for l in upper_bounds]
        if isinstance(steps[0], int):
            steps = [constant(l, type=I32) for l in steps]

        linear_vars = linear_step_vars = reduction_vars = []
        super().__init__(
            lower_bounds,
            upper_bounds,
            steps,
            linear_vars,
            linear_step_vars,
            reduction_vars,
            loc=loc,
            ip=ip,
        )
        self.regions[0].blocks.append(*[I32] * len(steps), *[])

    @property
    def body(self):
        return self.regions[0].blocks[0]

    @property
    def induction_variable(self):
        return get_op_results_or_values(self.body.arguments)


_loop_ip = None


def ws_loop(starts, stops, steps=None):
    global _loop_ip
    if steps is None:
        steps = [1] * len(starts)

    inits = [starts, stops, steps]
    for i, l in enumerate(inits):
        if not isinstance(l, (tuple, list)):
            inits[i] = [l]
        elif isinstance(l, tuple):
            inits[i] = list(l)
    starts, stops, steps = inits
    assert len(starts) == len(stops)

    for args in [starts, stops, steps]:
        for i, a in enumerate(args):
            if isinstance(a, int):
                args[i] = constant(a, type=I32)

    for_op = WsLoopOp(starts, stops, steps)
    _loop_ip = InsertionPoint(for_op.body)
    _loop_ip.__enter__()
    ivs = get_op_results_or_values(for_op.induction_variable)
    if len(ivs) == 1:
        return ivs
    else:
        return [ivs]


def omp_end_for():
    omp.YieldOp([])
    global _loop_ip
    _loop_ip.__exit__(None, None, None)
