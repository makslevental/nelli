from typing import Optional, Union

from .. import DefaultContext

# noinspection PyUnresolvedReferences
from ..mlir._mlir._mlir_libs._nelli_mlir import tile as _tile


def tile(
    func_op,
    filter_name: str,
    tile_sizes: Union[list[int], tuple[int, ...]],
    interchange: Optional[Union[list[int], tuple[int, ...]]] = None,
):
    if isinstance(tile_sizes, tuple):
        tile_sizes = list(tile_sizes)
    if interchange is None:
        interchange = []
    else:
        if isinstance(interchange, tuple):
            interchange = list(interchange)

    _tile(DefaultContext, func_op, filter_name, tile_sizes, interchange)
