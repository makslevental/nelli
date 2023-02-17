from .arith import ArithValue
from ..mlir._mlir.dialects import scf
from ..mlir._mlir.ir import (
    InsertionPoint,
)


class IfOp(scf.IfOp):
    def __init__(self, cond, *, loc=None, ip=None):
        super().__init__(cond, hasElse=False, loc=None, ip=None)

    def add_else(self):
        self.regions[1].blocks.append(*[])
        return self.else_block


_current_if_op: list[IfOp] = []
_if_ip: InsertionPoint = None


def scf_if(cond: ArithValue):
    assert isinstance(cond, ArithValue)
    global _if_ip, _current_if_op
    if_op = IfOp(cond)
    _current_if_op.append(if_op)
    _if_ip = InsertionPoint(if_op.then_block)
    _if_ip.__enter__()
    return True


def scf_else():
    global _if_ip, _current_if_op
    _if_ip = InsertionPoint(_current_if_op[-1].add_else())
    _if_ip.__enter__()
    return True


def scf_endif_branch():
    global _if_ip
    scf.YieldOp([])
    _if_ip.__exit__(None, None, None)


def scf_endif():
    global _current_if_op
    _current_if_op.pop()
