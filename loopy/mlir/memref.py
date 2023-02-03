from typing import (
    List,
    Union,
    Optional,
    Sequence,
    Tuple,
)

from .affine import LoadOp as AffineLoadOp, StoreOp as AffineStoreOp
from .arith import ArithValue
from ..loopy_mlir.dialects import memref
from ..loopy_mlir.dialects._ods_common import (
    get_op_result_or_value,
    get_op_results_or_values,
)
from ..loopy_mlir.ir import Type, Value, F64Type, Operation, OpView, MemRefType
from ..loopy_mlir._mlir_libs._loopy_mlir import MemRefValue


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
        memref_resolved = get_op_result_or_value(memref)
        value_resolved = get_op_result_or_value(value)
        indices_resolved = [] if indices is None else get_op_results_or_values(indices)
        super().__init__(
            value_resolved, memref_resolved, indices_resolved, loc=loc, ip=ip
        )


class AllocaOp(memref.AllocaOp):
    def __init__(
        self,
        dim_sizes: Union[List[int], Tuple[int]],
        el_type: Type = None,
        *,
        loc=None,
        ip=None,
    ):
        if el_type is None:
            el_type = F64Type.get()
        assert dim_sizes
        assert isinstance(dim_sizes[0], int)

        # TODO(max): this goes in dynamic/symbolic sizes
        # if isinstance(dim_sizes[0], (Operation, OpView, Value)):
        #     dim_sizes = [] if dim_sizes is None else _get_op_results_or_values(dim_sizes)

        res_type = MemRefType.get(dim_sizes, el_type)
        super().__init__(res_type, [], [], loc=loc, ip=ip)


def load(memref_, indices) -> ArithValue:
    return ArithValue(AffineLoadOp(memref_, indices).result)


class MemRefValue(MemRefValue):
    most_recent_store: AffineStoreOp = None

    @staticmethod
    def alloca(dim_sizes: Union[list[int], tuple[int, ...]], el_type: Type):
        return MemRefValue(AllocaOp(dim_sizes, el_type).memref)

    def __class_getitem__(cls, t_args):
        assert all(
            isinstance(t, int) for t in t_args[:-1]
        ), f"wrong type T args for memref: {t_args}"
        assert isinstance(t_args[-1], Type), f"wrong type T args for memref: {t_args}"
        return MemRefType.get(t_args[:-1], t_args[-1])

    def __getitem__(self, item):
        if not isinstance(item, tuple):
            item = tuple([item])
        return ArithValue(AffineLoadOp(self, item).result)

    def __setitem__(self, indices, value):
        if not isinstance(indices, tuple):
            indices = tuple([indices])
        # store op has no result...
        self.most_recent_store = AffineStoreOp(self, value, indices)
