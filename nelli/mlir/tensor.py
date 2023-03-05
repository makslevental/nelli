from typing import (
    Union,
    Tuple,
)

from .annot import Annot
from .arith import constant

# noinspection PyUnresolvedReferences
from ..mlir._mlir._mlir_libs._nelli_mlir import TensorValue
from ..mlir._mlir.dialects import tensor as tensor_dialect
from ..mlir._mlir.ir import (
    Type,
    RankedTensorType,
    UnrankedTensorType,
    InsertionPoint,
    Value,
    Operation,
    IndexType,
)


class TensorValue(TensorValue):
    @staticmethod
    def empty(dim_sizes: Union[list[int], tuple[int, ...]], el_type: Type):
        return TensorValue(tensor_dialect.EmptyOp(dim_sizes, el_type).result)

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
        return Annot(cls, RankedTensorType.get(dim_sizes, el_type))

    # def __getitem__(self, item):
    #     if not isinstance(item, tuple):
    #         item = tuple([item])
    #     return ArithValue(LoadOp(self, item).result)
    #
    # def __setitem__(self, indices, value):
    #     if not isinstance(indices, tuple):
    #         indices = tuple([indices])
    #     # store op has no result...
    #     self.most_recent_store = StoreOp(self, value, indices)


def dim(tensor, dim):
    dim = constant(dim, index=True)
    return tensor_dialect.DimOp(tensor, dim).result


def extract(tensor, dims: list):
    for i, d in enumerate(dims):
        if isinstance(d, int):
            dims[i] = constant(d, index=True)

    return tensor_dialect.ExtractOp(tensor, dims).result


# TODO(max): this needs to be a tensor pad ext
def pad(source, low, high, pad_value):
    assert all(
        isinstance(l, int) for l in low
    ), f"only literal pad values supported: {low=}"
    assert all(
        isinstance(l, int) for l in high
    ), f"only literal pad values supported: {high=}"

    if RankedTensorType.isinstance(source.type):
        source_type = RankedTensorType(source.type)
    elif UnrankedTensorType.isinstance(source.type):
        source_type = UnrankedTensorType(source.type)
    else:
        raise RuntimeError(f"source is not a tensor type: {source.type=}")

    if not isinstance(pad_value, (Value, Operation)):
        pad_value = constant(pad_value, type=source_type.element_type)

    if isinstance(source_type, RankedTensorType):
        dim_sizes = []
        for dim in range(source_type.rank):
            dim_sizes.append(source_type.get_dim_size(dim) + low[dim] + high[dim])
        result_type = RankedTensorType.get(dim_sizes, source_type.element_type)
    else:
        result_type = source_type

    pad_op = tensor_dialect.PadOp(
        result_type, source, [], [], static_low=low, static_high=high
    )
    block = pad_op.regions[0].blocks.append(*[IndexType.get()] * source_type.rank)
    with InsertionPoint.at_block_begin(block):
        tensor_dialect.YieldOp(pad_value)

    return pad_op.result


def expand_shape(tensor, reassociation_map: list[list[int]], shape: list[int]):
    orig_type = RankedTensorType(tensor.type)
    res_type = RankedTensorType.get(shape, orig_type.element_type)
    return tensor_dialect.ExpandShapeOp(
        res_type, tensor, reassociation=reassociation_map
    ).result


def collapse_shape(tensor, reassociation_map: list[list[int]], shape: list[int]):
    orig_type = RankedTensorType(tensor.type)
    res_type = RankedTensorType.get(shape, orig_type.element_type)
    return tensor_dialect.CollapseShapeOp(
        res_type, tensor, reassociation=reassociation_map
    ).result
