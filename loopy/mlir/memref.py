from typing import List, Union, Optional, Sequence, Tuple

from .value import ArithValue
from ..loopy_mlir.dialects._ods_common import (
    get_op_result_or_value,
    get_op_results_or_values,
)
from ..loopy_mlir.ir import Type, Value, F64Type, Operation, OpView, MemRefType
from ..loopy_mlir.dialects import memref


class LoadOp(memref.LoadOp):
    def __init__(
        self,
        memref: Union[Operation, OpView, Value],
        indices: Optional[Union[Operation, OpView, Sequence[Value]]] = None,
    ):
        super().__init__(memref, indices)


class StoreOp:
    """Specialization for the MemRef store operation."""

    def __init__(
        self,
        memref: Union[Operation, OpView, Value],
        value: Union[Operation, OpView, Value],
        indices: Optional[Union[Operation, OpView, Sequence[Value]]] = None,
        *,
        loc=None,
        ip=None,
    ):
        """Creates a memref load operation.

        Args:
          memref: the buffer to store to.
          value: the value to store
          indices: the list of subscripts, may be empty for zero-dimensional
            buffers.
          loc: user-visible location of the operation.
          ip: insertion point.
        """

        # memref.StoreOp(store_value, dst_memref, indices).memref

        memref_resolved = get_op_result_or_value(memref)
        value_resolved = get_op_result_or_value(value)
        indices_resolved = [] if indices is None else get_op_results_or_values(indices)
        super().__init__(
            value_resolved, memref_resolved, indices_resolved, loc=loc, ip=ip
        )


class AllocaOp(memref.AllocaOp):
    """Specialization for the MemRef alloca operation."""

    def __init__(
        self,
        dim_sizes: Union[List[int], Tuple[int]],
        el_type: Type = None,
        *,
        loc=None,
        ip=None,
    ):
        """Creates a memref alloca operation.

        Args:
          loc: user-visible location of the operation.
          ip: insertion point.
        """

        if el_type is None:
            el_type = F64Type.get()
        assert dim_sizes
        assert isinstance(dim_sizes[0], int)

        # TODO(max): this goes in dynamic/symbolic sizes
        # if isinstance(dim_sizes[0], (Operation, OpView, Value)):
        #     dim_sizes = [] if dim_sizes is None else _get_op_results_or_values(dim_sizes)

        res_type = MemRefType.get(dim_sizes, el_type)
        super().__init__(res_type, [], [], loc=loc, ip=ip)

    def __getitem__(self, item):
        from ..loopy_mlir.dialects.memref import LoadOp

        load_op = LoadOp(self, item)
        return load_op

    def __setitem__(self, indices, value):
        from ..loopy_mlir.dialects.memref import StoreOp

        store_op = StoreOp(self, value, indices)
        return store_op


def alloc(dim_sizes: Union[list[int], tuple[int]], el_type: Type) -> Value:
    return AllocaOp(dim_sizes, el_type).memref


def load(memref_, indices) -> Value:
    return ArithValue(LoadOp(memref_, indices).result)
