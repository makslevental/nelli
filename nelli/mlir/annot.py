from dataclasses import dataclass

from nelli.mlir._mlir._mlir_libs._mlir.ir import Type as MLIRType


@dataclass
class Annot:
    py_type: type
    mlir_type: MLIRType
