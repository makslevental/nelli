from . import _omp_ops_gen as omp

from typing import Union

from ...mlir import I32
from ..arith import constant
from ...loopy_mlir.ir import (
    Value,
)


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
