from typing import (
    List,
    Union,
    Optional,
    Sequence,
    Tuple,
)

from ._mlir._mlir_libs._mlir.ir import Attribute, ShapedType
from .annot import Annot
from .arith import ArithValue, constant

# noinspection PyUnresolvedReferences
from ..mlir._mlir._mlir_libs._nelli_mlir import MemRefValue
from ..mlir._mlir.dialects import memref
from ..mlir._mlir.dialects._ods_common import (
    get_op_result_or_value,
    get_op_results_or_values,
)
from ..mlir._mlir.ir import (
    Type,
    Value,
    F64Type,
    Operation,
    OpView,
    MemRefType,
    UnrankedMemRefType,
)


class LoadOp(memref.LoadOp):
    def __init__(
        self,
        memref: Union[Operation, OpView, Value],
        indices: Optional[Union[Operation, OpView, Sequence[Value]]] = None,
    ):
        super().__init__(memref, indices)


class StoreOp(memref.StoreOp):
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


class AllocOp(memref.AllocOp):
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


class MemRefValue(MemRefValue):
    most_recent_store: StoreOp = None
    alloca_op = AllocaOp
    alloc_op = AllocOp
    load_op = LoadOp
    store_op = StoreOp
    memref_type = MemRefType

    @classmethod
    def alloca(cls, dim_sizes: Union[list[int], tuple[int, ...]], el_type: Type):
        return cls(cls.alloca_op(dim_sizes, el_type).memref)

    @classmethod
    def alloc(cls, dim_sizes: Union[list[int], tuple[int, ...]], el_type: Type):
        return cls(cls.alloc_op(dim_sizes, el_type).memref)

    def __class_getitem__(
        cls, dim_sizes_el_type: Tuple[Union[list[int], tuple[int, ...]], Type]
    ):
        assert (
            len(dim_sizes_el_type) == 2
        ), f"wrong dim_sizes_el_type: {dim_sizes_el_type}"
        dim_sizes, el_type = dim_sizes_el_type
        assert all(
            isinstance(t, int) for t in dim_sizes[:-1]
        ), f"wrong type T args for tensor: {dim_sizes}"
        assert isinstance(el_type, Type), f"wrong type T args for tensor: {el_type}"
        dim_sizes = list(dim_sizes)
        for i, v in enumerate(dim_sizes):
            if v == -1:
                dim_sizes[i] = ShapedType.get_dynamic_size()
        return Annot(cls, cls.memref_type.get(dim_sizes, el_type))

    def __map_tuple_ints_to_indices(self, tup):
        if not isinstance(tup, tuple):
            tup = tuple([tup])
        tup = list(tup)
        for i, l in enumerate(tup):
            if isinstance(l, int):
                tup[i] = constant(l, index=True)
        return tuple(tup)

    def __getitem__(self, item):
        item = self.__map_tuple_ints_to_indices(item)
        return ArithValue(self.load_op(self, item).result)

    def __setitem__(self, indices, value):
        indices = self.__map_tuple_ints_to_indices(indices)
        # store op has no result...
        self.most_recent_store = self.store_op(self, value, indices)


class UnrankedMemRefValue(MemRefValue):
    memref_type = UnrankedMemRefType

    def __class_getitem__(cls, el_type: Type):
        assert isinstance(el_type, Type), f"wrong type T args for memref: {el_type}"
        return Annot(cls, cls.memref_type.get(el_type, Attribute.parse("0")))


def load(memref_, indices) -> ArithValue:
    return ArithValue(LoadOp(memref_, indices).result)


def cast(src, dst_type):
    return MemRefValue(memref.CastOp(dst_type, src).result)
