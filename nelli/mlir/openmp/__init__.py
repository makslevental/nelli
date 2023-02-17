from . import _omp_ops_gen
from ...mlir._mlir import ir

# noinspection PyUnresolvedReferences
from ...mlir._mlir._mlir_libs._site_initialize_0 import register_openmp_dialect_translation


def register_dialect_translation(ctx):
    registry = ir.DialectRegistry()
    register_openmp_dialect_translation(registry)
    ctx.append_dialect_registry(registry)
