from ..loopy_mlir.dialects import arith, linalg, math, memref
from ..loopy_mlir.dialects._ods_common import get_op_result_or_value
from ..loopy_mlir.dialects.linalg.opdsl.lang.emitter import (
    _is_integer_type,
    _is_floating_point_type,
    _is_index_type,
    _get_floating_point_width,
    _is_complex_type,
)
from ..loopy_mlir.ir import (
    Type as MLIRType,
    Value as MLIRValue,
    IntegerType,
    OpView,
    F64Type,
)


def cast_to_integer(
    to_type: MLIRType, operand: OpView, is_unsigned_cast: bool
) -> OpView:
    operand: MLIRValue = get_op_result_or_value(operand)
    to_width = IntegerType(to_type).width
    operand_type = operand.type
    if _is_floating_point_type(operand_type):
        if is_unsigned_cast:
            return arith.FPToUIOp(to_type, operand)
        return arith.FPToSIOp(to_type, operand)
    if _is_index_type(operand_type):
        return arith.IndexCastOp(to_type, operand)
    # Assume integer.
    from_width = IntegerType(operand_type).width
    if to_width > from_width:
        if is_unsigned_cast:
            return arith.ExtUIOp(to_type, operand)
        return arith.ExtSIOp(to_type, operand)
    elif to_width < from_width:
        return arith.TruncIOp(to_type, operand)
    raise ValueError(
        f"Unable to cast body expression from {operand_type} to " f"{to_type}"
    )


def cast_to_floating_point(
    to_type: MLIRType, operand: OpView, is_unsigned_cast: bool
) -> OpView:
    operand: MLIRValue = get_op_result_or_value(operand)
    operand_type: MLIRType = operand.type
    if _is_integer_type(operand_type):
        if is_unsigned_cast:
            return arith.UIToFPOp(to_type, operand)
        return arith.SIToFPOp(to_type, operand)
    # Assume FloatType.
    to_width = _get_floating_point_width(to_type)
    from_width = _get_floating_point_width(operand_type)
    if to_width > from_width:
        return arith.ExtFOp(to_type, operand)
    elif to_width < from_width:
        return arith.TruncFOp(to_type, operand)
    raise ValueError(
        f"Unable to cast body expression from {operand_type} to " f"{to_type}"
    )


def abs(x) -> OpView:
    x = get_op_result_or_value(x)
    if _is_floating_point_type(x.type):
        return math.AbsFOp(x)
    raise NotImplementedError("Unsupported 'abs' operand: {x}")


def ceil(x) -> OpView:
    x = get_op_result_or_value(x)
    if _is_floating_point_type(x.type):
        return math.CeilOp(x)
    raise NotImplementedError("Unsupported 'ceil' operand: {x}")


def floor(x) -> OpView:
    x = get_op_result_or_value(x)
    if _is_floating_point_type(x.type):
        return math.FloorOp(x)
    raise NotImplementedError("Unsupported 'floor' operand: {x}")


def neg(x) -> OpView:
    x = get_op_result_or_value(x)
    if _is_floating_point_type(x.type):
        return arith.NegFOp(x)
    if _is_complex_type(x.type):
        return complex.NegOp(x)
    raise NotImplementedError("Unsupported 'negf' operand: {x}")


def add(lhs, rhs) -> OpView:
    lhs = get_op_result_or_value(lhs)
    rhs = get_op_result_or_value(rhs)

    if _is_floating_point_type(lhs.type):
        return arith.AddFOp(lhs, rhs)
    # TODO(max): type promotion isn't right
    if _is_integer_type(lhs.type) or _is_index_type(lhs.type):
        if _is_index_type(lhs.type):
            lhs = cast_to_integer(
                IntegerType.get_signed(64), lhs, is_unsigned_cast=True
            )
        if _is_index_type(rhs.type):
            rhs = cast_to_integer(
                IntegerType.get_signed(64), rhs, is_unsigned_cast=True
            )
        return arith.AddIOp(lhs, rhs)
    if _is_complex_type(lhs.type):
        return complex.AddOp(lhs, rhs)
    raise NotImplementedError("Unsupported 'add' operands: {lhs}, {rhs}")


def sub(lhs, rhs) -> OpView:
    lhs = get_op_result_or_value(lhs)
    rhs = get_op_result_or_value(rhs)

    if _is_floating_point_type(lhs.type):
        return arith.SubFOp(lhs, rhs)
    if _is_integer_type(lhs.type) or _is_index_type(lhs.type):
        return arith.SubIOp(lhs, rhs)
    if _is_complex_type(lhs.type):
        return complex.SubOp(lhs, rhs)
    raise NotImplementedError("Unsupported 'sub' operands: {lhs}, {rhs}")


def mul(lhs, rhs) -> OpView:
    lhs = get_op_result_or_value(lhs)
    rhs = get_op_result_or_value(rhs)

    if _is_floating_point_type(lhs.type):
        return arith.MulFOp(lhs, rhs)
    if _is_integer_type(lhs.type) or _is_index_type(lhs.type):
        return arith.MulIOp(lhs, rhs)
    if _is_complex_type(lhs.type):
        return complex.MulOp(lhs, rhs)
    raise NotImplementedError("Unsupported 'mul' operands: {lhs}, {rhs}")


def gt(lhs, rhs) -> OpView:
    lhs = get_op_result_or_value(lhs)
    rhs = get_op_result_or_value(rhs)

    if _is_floating_point_type(lhs.type):
        if _is_integer_type(rhs.type) or _is_index_type(rhs.type):
            rhs = cast_to_floating_point(F64Type.get(), rhs, is_unsigned_cast=True)
        return arith.CmpFOp("ogt", lhs, rhs)
    if _is_integer_type(lhs.type):
        return arith.CmpIOp("sgt", lhs, rhs)
    if _is_index_type(lhs.type):
        return arith.CmpIOp("ugt", lhs, rhs)
    raise NotImplementedError("Unsupported 'mul' operands: {lhs}, {rhs}")


def lt(lhs, rhs) -> OpView:
    lhs = get_op_result_or_value(lhs)
    rhs = get_op_result_or_value(rhs)

    if _is_floating_point_type(lhs.type):
        return arith.CmpFOp("olt", lhs, rhs)
    if _is_integer_type(lhs.type):
        return arith.CmpIOp("slt", lhs, rhs)
    if _is_index_type(lhs.type):
        return arith.CmpIOp("ult", lhs, rhs)
    raise NotImplementedError("Unsupported 'mul' operands: {lhs}, {rhs}")


def ge(lhs, rhs) -> OpView:
    lhs = get_op_result_or_value(lhs)
    rhs = get_op_result_or_value(rhs)

    if _is_floating_point_type(lhs.type):
        return arith.CmpFOp("oge", lhs, rhs)
    if _is_integer_type(lhs.type):
        return arith.CmpIOp("sge", lhs, rhs)
    if _is_index_type(lhs.type):
        return arith.CmpIOp("uge", lhs, rhs)
    raise NotImplementedError("Unsupported 'mul' operands: {lhs}, {rhs}")


def le(lhs, rhs) -> OpView:
    lhs = get_op_result_or_value(lhs)
    rhs = get_op_result_or_value(rhs)

    if _is_floating_point_type(lhs.type):
        return arith.CmpFOp("ole", lhs, rhs)
    if _is_integer_type(lhs.type):
        return arith.CmpIOp("sle", lhs, rhs)
    if _is_index_type(lhs.type):
        return arith.CmpIOp("ule", lhs, rhs)
    raise NotImplementedError("Unsupported 'mul' operands: {lhs}, {rhs}")


class ArithValue:
    def __init__(self, v: MLIRValue):
        self.mlir_value = v

    def __abs__(self):
        return abs(self.mlir_value)

    def __ceil__(self):
        return ceil(self.mlir_value)

    def __floor__(self):
        return floor(self.mlir_value)

    def __neg__(self):
        return neg(self.mlir_value)

    def __add__(self, other):
        return add(self.mlir_value, other.mlir_value)

    def __sub__(self, other):
        return sub(self.mlir_value, other.mlir_value)

    def __mul__(self, other):
        return mul(self.mlir_value, other.mlir_value)

    def __gt__(self, other):
        return gt(self.mlir_value, other.mlir_value)

    def __lt__(self, other):
        return lt(self.mlir_value, other.mlir_value)

    def __ge__(self, other):
        return ge(self.mlir_value, other.mlir_value)

    def __le__(self, other):
        return le(self.mlir_value, other.mlir_value)
