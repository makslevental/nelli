from typing import (
    Union,
    Tuple,
)

from .arith import constant
from .utils import Annot

# noinspection PyUnresolvedReferences
from ..mlir._mlir._mlir_libs._nelli_mlir import TensorValue
from ..mlir._mlir.dialects import tensor as tensor_dialect
from ..mlir._mlir.ir import (
    Type,
    RankedTensorType,
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
