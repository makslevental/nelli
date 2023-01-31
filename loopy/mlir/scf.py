from contextvars import ContextVar, Token

from loopy.loopy_mlir.dialects import scf
from .arith import ArithValue
from ..loopy_mlir.ir import (
    InsertionPoint,
)


class IfOp(scf.IfOp):
    def __init__(self, cond, *, loc=None, ip=None):
        super().__init__(cond, hasElse=False, loc=None, ip=None)

    def add_else(self):
        self.regions[1].blocks.append(*[])
        return self.else_block


_if_op_ctx = ContextVar("_current_scf_if_op")
_current_if_op_token: Token = None
_if_ip: InsertionPoint = None


def scf_if(cond: ArithValue):
    assert isinstance(cond, ArithValue)
    global _if_ip, _current_if_op_token
    if_op = IfOp(cond)
    _current_if_op_token = _if_op_ctx.set(if_op)
    _if_ip = InsertionPoint(if_op.then_block)
    _if_ip.__enter__()
    return True


def scf_else():
    scf.YieldOp([])
    global _if_ip
    _if_ip.__exit__(None, None, None)
    if_op: IfOp = _if_op_ctx.get()
    _if_ip = InsertionPoint(if_op.add_else())
    _if_ip.__enter__()
    return True


def scf_endif():
    scf.YieldOp([])
    global _if_ip, _current_if_op_token
    _if_ip.__exit__(None, None, None)
    _if_op_ctx.reset(_current_if_op_token)
