from ..nelli_mlir.ir import Operation


class Op:
    mlir_op: Operation

    def __init__(self, mlir_op):
        self.mlir_op = mlir_op

    def __repr__(self):
        return str(self)

    def __str__(self):
        return f"{self.__class__.__name__}({str(self.mlir_op)})"
