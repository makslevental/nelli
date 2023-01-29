from contextvars import ContextVar
from typing import Optional, Union, Sequence

from . import _affine_ops_gen as affine
from .value import ArithValue
from ..loopy_mlir.dialects._ods_common import (
    get_op_result_or_value,
    get_op_results_or_values,
)
from ..loopy_mlir.ir import (
    Type,
    Value,
    IntegerType,
    IndexType,
    F64Type,
    Operation,
    OpView,
    MemRefType,
    AffineMapAttr,
    AffineMap,
    IntegerAttr,
    InsertionPoint,
)


class ForOp(affine.AffineForOp):
    """Specialization for the Affine for op class."""

    def __init__(
        self,
        lower_bound,
        upper_bound,
        step,
        *,
        loc=None,
        ip=None,
    ):
        attributes = {
            "lower_bound": AffineMapAttr.get(AffineMap.get_constant(lower_bound)),
            "upper_bound": AffineMapAttr.get(AffineMap.get_constant(upper_bound)),
            "step": IntegerAttr.get(IntegerType.get_signless(64), step),
        }

        results = []
        super().__init__(
            self.build_generic(
                regions=1,
                results=[],
                attributes=attributes,
                operands=[],
                loc=loc,
                ip=ip,
            )
        )
        self.regions[0].blocks.append(IndexType.get(), *results)

    @property
    def body(self):
        """Returns the body (block) of the loop."""
        return self.regions[0].blocks[0]

    @property
    def induction_variable(self):
        """Returns the induction variable of the loop."""
        return self.body.arguments[0]

    @property
    def inner_iter_args(self):
        """Returns the loop-carried arguments usable within the loop.

        To obtain the loop-carried operands, use `iter_args`.
        """
        return self.body.arguments[1:]


class LoadOp:
    """Specialization for the MemRef load operation."""

    def __init__(
        self,
        memref: Union[Operation, OpView, Value],
        indices: Optional[Union[Operation, OpView, Sequence[Value]]] = None,
        *,
        loc=None,
        ip=None,
    ):
        """Creates a memref load operation.

        Args:
          memref: the buffer to load from.
          indices: the list of subscripts, may be empty for zero-dimensional
            buffers.
          loc: user-visible location of the operation.
          ip: insertion point.
        """
        memref_resolved = get_op_result_or_value(memref)
        indices_resolved = [] if indices is None else get_op_results_or_values(indices)
        return_type = MemRefType(memref_resolved.type).element_type
        super().__init__(return_type, memref, indices_resolved, loc=loc, ip=ip)


def affine_store(
    store_value: Value,
    dst_memref: Value,
    indices: Union[tuple[Value], list[Value]],
) -> Value:
    # value, memref, indices
    return affine.AffineStoreOp(store_value, dst_memref, indices).memref


def affine_load(
    src_memref: Value,
    indices: Union[tuple[Value], list[Value]],
) -> Value:
    # result_type, memref, indices
    return ArithValue(LoadOp(src_memref, indices).result)


_current_for_op = ContextVar("_current_affine_for_op")

ip = None


def affinefor(start, stop, step):
    global ip
    for_op = ForOp(start, stop, step)
    ip = InsertionPoint(for_op.body)
    ip.__enter__()
    return [for_op.induction_variable]


def endfor():
    affine.AffineYieldOp([])
    global ip
    ip.__exit__(None, None, None)
