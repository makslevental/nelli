from typing import Optional, Union, Sequence

from . import _affine_ops_gen as affine
from ._affine_ops_gen import _Dialect
from ..annot import Annot
from ..arith import ArithValue, constant
from ..memref import MemRefValue, AllocaOp

# noinspection PyUnresolvedReferences
from ...mlir._mlir.dialects._ods_common import _cext
from ...mlir._mlir.dialects._ods_common import (
    get_op_result_or_value,
    get_op_results_or_values,
)
from ...mlir._mlir.ir import (
    AffineMap,
    AffineMapAttr,
    IndexType,
    InsertionPoint,
    IntegerAttr,
    IntegerType,
    MemRefType,
    UnrankedMemRefType,
    Attribute,
    OpView,
    Operation,
    Value,
    Type,
)


@_cext.register_operation(_Dialect)
class AffineForOp(OpView):
    OPERATION_NAME = "affine.for"

    _ODS_REGIONS = (1, True)

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
    def results_(self):
        _ods_variadic_group_length = len(self.operation.results) - 1 + 1
        return self.operation.results[0 : 0 + _ods_variadic_group_length]

    @property
    def region(self):
        return self.regions[0]

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


class LoadOp(affine.AffineLoadOp):
    def __init__(
        self,
        memref: Union[Operation, OpView, Value],
        indices: Optional[Sequence[Union[Value, int]]] = None,
        *,
        loc=None,
        ip=None,
    ):
        if isinstance(indices, tuple):
            indices = list(indices)
        memref_resolved = get_op_result_or_value(memref)
        for idx, i in enumerate(indices):
            if isinstance(i, int):
                indices[idx] = constant(i, index=True)
        indices_resolved = [] if indices is None else get_op_results_or_values(indices)
        return_type = MemRefType(memref_resolved.type).element_type
        map = AffineMapAttr.get(AffineMap.get_identity(n_dims=len(indices)))
        super().__init__(
            return_type, memref_resolved, indices_resolved, map=map, loc=loc, ip=ip
        )


class StoreOp(affine.AffineStoreOp):
    def __init__(
        self,
        memref: Union[Operation, OpView, Value],
        value: Value,
        indices: Optional[Sequence[Union[Value, int]]] = None,
        *,
        loc=None,
        ip=None,
    ):
        if isinstance(indices, tuple):
            indices = list(indices)
        value_resolved = get_op_result_or_value(value)
        for idx, i in enumerate(indices):
            if isinstance(i, int):
                indices[idx] = constant(i, index=True)
        map = AffineMapAttr.get(AffineMap.get_identity(n_dims=len(indices)))

        operands = [value_resolved]
        results = []
        attributes = {"map": map}
        regions = None
        operands.append(get_op_result_or_value(memref))
        operands.extend(get_op_results_or_values(indices))
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )


_for_ip = None


def range(start, stop, step=1):
    global _for_ip
    for_op = AffineForOp(start, stop, step)
    _for_ip = InsertionPoint(for_op.body)
    _for_ip.__enter__()
    return [ArithValue(for_op.induction_variable)]


def end_for():
    affine.AffineYieldOp([])
    global _for_ip
    _for_ip.__exit__(None, None, None)


def store(
    store_value: Value,
    dst_memref: Value,
    indices: Union[tuple[Value], list[Value]],
) -> Value:
    return StoreOp(store_value, dst_memref, indices)


def load(
    src_memref: Value,
    indices: Union[tuple[Value], list[Value]],
) -> Value:
    l = LoadOp(src_memref, indices)
    return ArithValue(l.result)


class Apply(affine.AffineApplyOp):
    def __init__(self, map, operands):
        result = IndexType.get()
        super().__init__(result, map, operands)


class RankedAffineMemRefValue(MemRefValue):
    alloc_op = AllocaOp
    load_op = LoadOp
    store_op = StoreOp
    memref_type = MemRefType


class UnrankedAffineMemRefValue(RankedAffineMemRefValue):
    memref_type = UnrankedMemRefType

    def __class_getitem__(cls, el_type: Type):
        assert isinstance(el_type, Type), f"wrong type T args for memref: {el_type}"
        return Annot(cls, cls.memref_type.get(el_type, Attribute.parse("0")))
