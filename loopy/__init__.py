# noinspection PyUnresolvedReferences
from .loopy_mlir._mlir_libs._loopyMlir import (
    get_access_relation,
    get_affine_value_map,
)

__all__ = ["get_affine_value_map", "get_access_relation"]