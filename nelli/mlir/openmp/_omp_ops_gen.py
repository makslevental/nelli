from .._mlir.dialects._ods_common import _cext
from .._mlir.dialects._ods_common import (
    extend_opview_class,
    get_op_result_or_value,
    get_op_results_or_values,
    segmented_accessor,
)

_ods_ir = _cext.ir

_ods_ext_module = None

import builtins


@_cext.register_dialect
class _Dialect(_ods_ir.Dialect):
    DIALECT_NAMESPACE = "omp"
    pass


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AtomicCaptureOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.atomic.capture"

    _ODS_REGIONS = (1, True)

    def __init__(self, *, hint_val=None, memory_order_val=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        if hint_val is not None:
            attributes["hint_val"] = (
                hint_val
                if (
                    issubclass(type(hint_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(hint_val, context=_ods_context)
            )
        if memory_order_val is not None:
            attributes["memory_order_val"] = (
                memory_order_val
                if (
                    issubclass(type(memory_order_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("MemoryOrderKindAttr")
                )
                else _ods_ir.AttrBuilder.get("MemoryOrderKindAttr")(
                    memory_order_val, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def hint_val(self):
        if "hint_val" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["hint_val"])

    @hint_val.setter
    def hint_val(self, value):
        if value is not None:
            self.operation.attributes["hint_val"] = value
        elif "hint_val" in self.operation.attributes:
            del self.operation.attributes["hint_val"]

    @hint_val.deleter
    def hint_val(self):
        del self.operation.attributes["hint_val"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AtomicReadOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.atomic.read"

    _ODS_REGIONS = (0, True)

    def __init__(
        self, x, v, *, hint_val=None, memory_order_val=None, loc=None, ip=None
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(x))
        operands.append(get_op_result_or_value(v))
        _ods_context = extend_opview_class(loc)
        if hint_val is not None:
            attributes["hint_val"] = (
                hint_val
                if (
                    issubclass(type(hint_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(hint_val, context=_ods_context)
            )
        if memory_order_val is not None:
            attributes["memory_order_val"] = (
                memory_order_val
                if (
                    issubclass(type(memory_order_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("MemoryOrderKindAttr")
                )
                else _ods_ir.AttrBuilder.get("MemoryOrderKindAttr")(
                    memory_order_val, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def x(self):
        return self.operation.operands[0]

    @builtins.property
    def v(self):
        return self.operation.operands[1]

    @builtins.property
    def hint_val(self):
        if "hint_val" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["hint_val"])

    @hint_val.setter
    def hint_val(self, value):
        if value is not None:
            self.operation.attributes["hint_val"] = value
        elif "hint_val" in self.operation.attributes:
            del self.operation.attributes["hint_val"]

    @hint_val.deleter
    def hint_val(self):
        del self.operation.attributes["hint_val"]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AtomicUpdateOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.atomic.update"

    _ODS_REGIONS = (1, True)

    def __init__(self, x, *, hint_val=None, memory_order_val=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(x))
        _ods_context = extend_opview_class(loc)
        if hint_val is not None:
            attributes["hint_val"] = (
                hint_val
                if (
                    issubclass(type(hint_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(hint_val, context=_ods_context)
            )
        if memory_order_val is not None:
            attributes["memory_order_val"] = (
                memory_order_val
                if (
                    issubclass(type(memory_order_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("MemoryOrderKindAttr")
                )
                else _ods_ir.AttrBuilder.get("MemoryOrderKindAttr")(
                    memory_order_val, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def x(self):
        return self.operation.operands[0]

    @builtins.property
    def hint_val(self):
        if "hint_val" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["hint_val"])

    @hint_val.setter
    def hint_val(self, value):
        if value is not None:
            self.operation.attributes["hint_val"] = value
        elif "hint_val" in self.operation.attributes:
            del self.operation.attributes["hint_val"]

    @hint_val.deleter
    def hint_val(self):
        del self.operation.attributes["hint_val"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AtomicWriteOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.atomic.write"

    _ODS_REGIONS = (0, True)

    def __init__(
        self, address, value, *, hint_val=None, memory_order_val=None, loc=None, ip=None
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(address))
        operands.append(get_op_result_or_value(value))
        _ods_context = extend_opview_class(loc)
        if hint_val is not None:
            attributes["hint_val"] = (
                hint_val
                if (
                    issubclass(type(hint_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(hint_val, context=_ods_context)
            )
        if memory_order_val is not None:
            attributes["memory_order_val"] = (
                memory_order_val
                if (
                    issubclass(type(memory_order_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("MemoryOrderKindAttr")
                )
                else _ods_ir.AttrBuilder.get("MemoryOrderKindAttr")(
                    memory_order_val, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def address(self):
        return self.operation.operands[0]

    @builtins.property
    def value(self):
        return self.operation.operands[1]

    @builtins.property
    def hint_val(self):
        if "hint_val" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["hint_val"])

    @hint_val.setter
    def hint_val(self, value):
        if value is not None:
            self.operation.attributes["hint_val"] = value
        elif "hint_val" in self.operation.attributes:
            del self.operation.attributes["hint_val"]

    @hint_val.deleter
    def hint_val(self):
        del self.operation.attributes["hint_val"]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class BarrierOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.barrier"

    _ODS_REGIONS = (0, True)

    def __init__(self, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CancelOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.cancel"

    _ODS_REGIONS = (0, True)

    def __init__(
        self, cancellation_construct_type_val, *, if_expr=None, loc=None, ip=None
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        if if_expr is not None:
            operands.append(get_op_result_or_value(if_expr))
        _ods_context = extend_opview_class(loc)
        attributes["cancellation_construct_type_val"] = (
            cancellation_construct_type_val
            if (
                issubclass(type(cancellation_construct_type_val), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("CancellationConstructTypeAttr")
            )
            else _ods_ir.AttrBuilder.get("CancellationConstructTypeAttr")(
                cancellation_construct_type_val, context=_ods_context
            )
        )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def if_expr(self):
        return None if len(self.operation.operands) < 1 else self.operation.operands[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CancellationPointOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.cancellationpoint"

    _ODS_REGIONS = (0, True)

    def __init__(self, cancellation_construct_type_val, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        attributes["cancellation_construct_type_val"] = (
            cancellation_construct_type_val
            if (
                issubclass(type(cancellation_construct_type_val), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("CancellationConstructTypeAttr")
            )
            else _ods_ir.AttrBuilder.get("CancellationConstructTypeAttr")(
                cancellation_construct_type_val, context=_ods_context
            )
        )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CriticalDeclareOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.critical.declare"

    _ODS_REGIONS = (0, True)

    def __init__(self, sym_name, *, hint_val=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        attributes["sym_name"] = (
            sym_name
            if (
                issubclass(type(sym_name), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("SymbolNameAttr")
            )
            else _ods_ir.AttrBuilder.get("SymbolNameAttr")(
                sym_name, context=_ods_context
            )
        )
        if hint_val is not None:
            attributes["hint_val"] = (
                hint_val
                if (
                    issubclass(type(hint_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(hint_val, context=_ods_context)
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def sym_name(self):
        return _ods_ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["sym_name"] = value

    @builtins.property
    def hint_val(self):
        return _ods_ir.IntegerAttr(self.operation.attributes["hint_val"])

    @hint_val.setter
    def hint_val(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["hint_val"] = value


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CriticalOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.critical"

    _ODS_REGIONS = (1, True)

    def __init__(self, *, name=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        if name is not None:
            attributes["name"] = (
                name
                if (
                    issubclass(type(name), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("FlatSymbolRefAttr")
                )
                else _ods_ir.AttrBuilder.get("FlatSymbolRefAttr")(
                    name, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FlushOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.flush"

    _ODS_REGIONS = (0, True)

    def __init__(self, varList, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(varList))
        _ods_context = extend_opview_class(loc)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def varList(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class MasterOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.master"

    _ODS_REGIONS = (1, True)

    def __init__(self, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class OrderedOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.ordered"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        depend_vec_vars,
        *,
        depend_type_val=None,
        num_loops_val=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(depend_vec_vars))
        _ods_context = extend_opview_class(loc)
        if depend_type_val is not None:
            attributes["depend_type_val"] = (
                depend_type_val
                if (
                    issubclass(type(depend_type_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ClauseDependAttr")
                )
                else _ods_ir.AttrBuilder.get("ClauseDependAttr")(
                    depend_type_val, context=_ods_context
                )
            )
        if num_loops_val is not None:
            attributes["num_loops_val"] = (
                num_loops_val
                if (
                    issubclass(type(num_loops_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(
                    num_loops_val, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def depend_vec_vars(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]

    @builtins.property
    def num_loops_val(self):
        if "num_loops_val" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["num_loops_val"])

    @num_loops_val.setter
    def num_loops_val(self, value):
        if value is not None:
            self.operation.attributes["num_loops_val"] = value
        elif "num_loops_val" in self.operation.attributes:
            del self.operation.attributes["num_loops_val"]

    @num_loops_val.deleter
    def num_loops_val(self):
        del self.operation.attributes["num_loops_val"]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class OrderedRegionOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.ordered_region"

    _ODS_REGIONS = (1, True)

    def __init__(self, *, simd=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        if bool(simd):
            attributes["simd"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def simd(self):
        return "simd" in self.operation.attributes

    @simd.setter
    def simd(self, value):
        if bool(value):
            self.operation.attributes["simd"] = _ods_ir.UnitAttr.get()
        elif "simd" in self.operation.attributes:
            del self.operation.attributes["simd"]

    @simd.deleter
    def simd(self):
        del self.operation.attributes["simd"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ParallelOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.parallel"

    _ODS_OPERAND_SEGMENTS = [
        0,
        0,
        -1,
        -1,
        -1,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        allocate_vars,
        allocators_vars,
        reduction_vars,
        *,
        if_expr_var=None,
        num_threads_var=None,
        reductions=None,
        proc_bind_val=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(
            get_op_result_or_value(if_expr_var) if if_expr_var is not None else None
        )
        operands.append(
            get_op_result_or_value(num_threads_var)
            if num_threads_var is not None
            else None
        )
        operands.append(get_op_results_or_values(allocate_vars))
        operands.append(get_op_results_or_values(allocators_vars))
        operands.append(get_op_results_or_values(reduction_vars))
        _ods_context = extend_opview_class(loc)
        if reductions is not None:
            attributes["reductions"] = (
                reductions
                if (
                    issubclass(type(reductions), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    reductions, context=_ods_context
                )
            )
        if proc_bind_val is not None:
            attributes["proc_bind_val"] = (
                proc_bind_val
                if (
                    issubclass(type(proc_bind_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ProcBindKindAttr")
                )
                else _ods_ir.AttrBuilder.get("ProcBindKindAttr")(
                    proc_bind_val, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def if_expr_var(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def num_threads_var(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def allocate_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def allocators_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            3,
        )
        return operand_range

    @builtins.property
    def reduction_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            4,
        )
        return operand_range

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ReductionDeclareOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.reduction.declare"

    _ODS_REGIONS = (3, True)

    def __init__(self, sym_name, type_, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        attributes["sym_name"] = (
            sym_name
            if (
                issubclass(type(sym_name), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("SymbolNameAttr")
            )
            else _ods_ir.AttrBuilder.get("SymbolNameAttr")(
                sym_name, context=_ods_context
            )
        )
        attributes["type"] = (
            type_
            if (
                issubclass(type(type_), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("TypeAttr")
            )
            else _ods_ir.AttrBuilder.get("TypeAttr")(type_, context=_ods_context)
        )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def sym_name(self):
        return _ods_ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["sym_name"] = value

    @builtins.property
    def initializerRegion(self):
        return self.regions[0]

    @builtins.property
    def reductionRegion(self):
        return self.regions[1]

    @builtins.property
    def atomicReductionRegion(self):
        return self.regions[2]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ReductionOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.reduction"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, accumulator, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
        operands.append(get_op_result_or_value(accumulator))
        _ods_context = extend_opview_class(loc)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def operand(self):
        return self.operation.operands[0]

    @builtins.property
    def accumulator(self):
        return self.operation.operands[1]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SectionOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.section"

    _ODS_REGIONS = (1, True)

    def __init__(self, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SectionsOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.sections"

    _ODS_OPERAND_SEGMENTS = [
        -1,
        -1,
        -1,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        reduction_vars,
        allocate_vars,
        allocators_vars,
        *,
        reductions=None,
        nowait=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_results_or_values(reduction_vars))
        operands.append(get_op_results_or_values(allocate_vars))
        operands.append(get_op_results_or_values(allocators_vars))
        _ods_context = extend_opview_class(loc)
        if reductions is not None:
            attributes["reductions"] = (
                reductions
                if (
                    issubclass(type(reductions), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    reductions, context=_ods_context
                )
            )
        if bool(nowait):
            attributes["nowait"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def reduction_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range

    @builtins.property
    def allocate_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def allocators_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def nowait(self):
        return "nowait" in self.operation.attributes

    @nowait.setter
    def nowait(self, value):
        if bool(value):
            self.operation.attributes["nowait"] = _ods_ir.UnitAttr.get()
        elif "nowait" in self.operation.attributes:
            del self.operation.attributes["nowait"]

    @nowait.deleter
    def nowait(self):
        del self.operation.attributes["nowait"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SimdLoopOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.simdloop"

    _ODS_OPERAND_SEGMENTS = [
        -1,
        -1,
        -1,
        -1,
        0,
        -1,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        lowerBound,
        upperBound,
        step,
        aligned_vars,
        nontemporal_vars,
        *,
        alignment_values=None,
        if_expr=None,
        order_val=None,
        simdlen=None,
        safelen=None,
        inclusive=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_results_or_values(lowerBound))
        operands.append(get_op_results_or_values(upperBound))
        operands.append(get_op_results_or_values(step))
        operands.append(get_op_results_or_values(aligned_vars))
        operands.append(
            get_op_result_or_value(if_expr) if if_expr is not None else None
        )
        operands.append(get_op_results_or_values(nontemporal_vars))
        _ods_context = extend_opview_class(loc)
        if alignment_values is not None:
            attributes["alignment_values"] = (
                alignment_values
                if (
                    issubclass(type(alignment_values), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64ArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("I64ArrayAttr")(
                    alignment_values, context=_ods_context
                )
            )
        if order_val is not None:
            attributes["order_val"] = (
                order_val
                if (
                    issubclass(type(order_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("OrderKindAttr")
                )
                else _ods_ir.AttrBuilder.get("OrderKindAttr")(
                    order_val, context=_ods_context
                )
            )
        if simdlen is not None:
            attributes["simdlen"] = (
                simdlen
                if (
                    issubclass(type(simdlen), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(simdlen, context=_ods_context)
            )
        if safelen is not None:
            attributes["safelen"] = (
                safelen
                if (
                    issubclass(type(safelen), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(safelen, context=_ods_context)
            )
        if bool(inclusive):
            attributes["inclusive"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def lowerBound(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range

    @builtins.property
    def upperBound(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def step(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def aligned_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            3,
        )
        return operand_range

    @builtins.property
    def if_expr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            4,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def nontemporal_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            5,
        )
        return operand_range

    @builtins.property
    def simdlen(self):
        if "simdlen" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["simdlen"])

    @simdlen.setter
    def simdlen(self, value):
        if value is not None:
            self.operation.attributes["simdlen"] = value
        elif "simdlen" in self.operation.attributes:
            del self.operation.attributes["simdlen"]

    @simdlen.deleter
    def simdlen(self):
        del self.operation.attributes["simdlen"]

    @builtins.property
    def safelen(self):
        if "safelen" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["safelen"])

    @safelen.setter
    def safelen(self, value):
        if value is not None:
            self.operation.attributes["safelen"] = value
        elif "safelen" in self.operation.attributes:
            del self.operation.attributes["safelen"]

    @safelen.deleter
    def safelen(self):
        del self.operation.attributes["safelen"]

    @builtins.property
    def inclusive(self):
        return "inclusive" in self.operation.attributes

    @inclusive.setter
    def inclusive(self, value):
        if bool(value):
            self.operation.attributes["inclusive"] = _ods_ir.UnitAttr.get()
        elif "inclusive" in self.operation.attributes:
            del self.operation.attributes["inclusive"]

    @inclusive.deleter
    def inclusive(self):
        del self.operation.attributes["inclusive"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SingleOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.single"

    _ODS_OPERAND_SEGMENTS = [
        -1,
        -1,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self, allocate_vars, allocators_vars, *, nowait=None, loc=None, ip=None
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_results_or_values(allocate_vars))
        operands.append(get_op_results_or_values(allocators_vars))
        _ods_context = extend_opview_class(loc)
        if bool(nowait):
            attributes["nowait"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def allocate_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range

    @builtins.property
    def allocators_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def nowait(self):
        return "nowait" in self.operation.attributes

    @nowait.setter
    def nowait(self, value):
        if bool(value):
            self.operation.attributes["nowait"] = _ods_ir.UnitAttr.get()
        elif "nowait" in self.operation.attributes:
            del self.operation.attributes["nowait"]

    @nowait.deleter
    def nowait(self):
        del self.operation.attributes["nowait"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TargetOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.target"

    _ODS_OPERAND_SEGMENTS = [
        0,
        0,
        0,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        *,
        if_expr=None,
        device=None,
        thread_limit=None,
        nowait=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(
            get_op_result_or_value(if_expr) if if_expr is not None else None
        )
        operands.append(get_op_result_or_value(device) if device is not None else None)
        operands.append(
            get_op_result_or_value(thread_limit) if thread_limit is not None else None
        )
        _ods_context = extend_opview_class(loc)
        if bool(nowait):
            attributes["nowait"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def if_expr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def device(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def thread_limit(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def nowait(self):
        return "nowait" in self.operation.attributes

    @nowait.setter
    def nowait(self, value):
        if bool(value):
            self.operation.attributes["nowait"] = _ods_ir.UnitAttr.get()
        elif "nowait" in self.operation.attributes:
            del self.operation.attributes["nowait"]

    @nowait.deleter
    def nowait(self):
        del self.operation.attributes["nowait"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class DataOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.target_data"

    _ODS_OPERAND_SEGMENTS = [
        0,
        0,
        -1,
        -1,
        -1,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        use_device_ptr,
        use_device_addr,
        map_operands,
        map_types,
        *,
        if_expr=None,
        device=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(
            get_op_result_or_value(if_expr) if if_expr is not None else None
        )
        operands.append(get_op_result_or_value(device) if device is not None else None)
        operands.append(get_op_results_or_values(use_device_ptr))
        operands.append(get_op_results_or_values(use_device_addr))
        operands.append(get_op_results_or_values(map_operands))
        _ods_context = extend_opview_class(loc)
        attributes["map_types"] = (
            map_types
            if (
                issubclass(type(map_types), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("I64ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("I64ArrayAttr")(
                map_types, context=_ods_context
            )
        )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def if_expr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def device(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def use_device_ptr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def use_device_addr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            3,
        )
        return operand_range

    @builtins.property
    def map_operands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            4,
        )
        return operand_range

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class EnterDataOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.target_enter_data"

    _ODS_OPERAND_SEGMENTS = [
        0,
        0,
        -1,
    ]

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        map_operands,
        map_types,
        *,
        if_expr=None,
        device=None,
        nowait=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(
            get_op_result_or_value(if_expr) if if_expr is not None else None
        )
        operands.append(get_op_result_or_value(device) if device is not None else None)
        operands.append(get_op_results_or_values(map_operands))
        _ods_context = extend_opview_class(loc)
        if bool(nowait):
            attributes["nowait"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        attributes["map_types"] = (
            map_types
            if (
                issubclass(type(map_types), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("I64ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("I64ArrayAttr")(
                map_types, context=_ods_context
            )
        )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def if_expr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def device(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def map_operands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def nowait(self):
        return "nowait" in self.operation.attributes

    @nowait.setter
    def nowait(self, value):
        if bool(value):
            self.operation.attributes["nowait"] = _ods_ir.UnitAttr.get()
        elif "nowait" in self.operation.attributes:
            del self.operation.attributes["nowait"]

    @nowait.deleter
    def nowait(self):
        del self.operation.attributes["nowait"]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ExitDataOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.target_exit_data"

    _ODS_OPERAND_SEGMENTS = [
        0,
        0,
        -1,
    ]

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        map_operands,
        map_types,
        *,
        if_expr=None,
        device=None,
        nowait=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(
            get_op_result_or_value(if_expr) if if_expr is not None else None
        )
        operands.append(get_op_result_or_value(device) if device is not None else None)
        operands.append(get_op_results_or_values(map_operands))
        _ods_context = extend_opview_class(loc)
        if bool(nowait):
            attributes["nowait"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        attributes["map_types"] = (
            map_types
            if (
                issubclass(type(map_types), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("I64ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("I64ArrayAttr")(
                map_types, context=_ods_context
            )
        )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def if_expr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def device(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def map_operands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def nowait(self):
        return "nowait" in self.operation.attributes

    @nowait.setter
    def nowait(self, value):
        if bool(value):
            self.operation.attributes["nowait"] = _ods_ir.UnitAttr.get()
        elif "nowait" in self.operation.attributes:
            del self.operation.attributes["nowait"]

    @nowait.deleter
    def nowait(self):
        del self.operation.attributes["nowait"]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TaskGroupOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.taskgroup"

    _ODS_OPERAND_SEGMENTS = [
        -1,
        -1,
        -1,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        task_reduction_vars,
        allocate_vars,
        allocators_vars,
        *,
        task_reductions=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_results_or_values(task_reduction_vars))
        operands.append(get_op_results_or_values(allocate_vars))
        operands.append(get_op_results_or_values(allocators_vars))
        _ods_context = extend_opview_class(loc)
        if task_reductions is not None:
            attributes["task_reductions"] = (
                task_reductions
                if (
                    issubclass(type(task_reductions), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    task_reductions, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def task_reduction_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range

    @builtins.property
    def allocate_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def allocators_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TaskLoopOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.taskloop"

    _ODS_OPERAND_SEGMENTS = [
        -1,
        -1,
        -1,
        0,
        0,
        -1,
        -1,
        0,
        -1,
        -1,
        0,
        0,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        lowerBound,
        upperBound,
        step,
        in_reduction_vars,
        reduction_vars,
        allocate_vars,
        allocators_vars,
        *,
        inclusive=None,
        if_expr=None,
        final_expr=None,
        untied=None,
        mergeable=None,
        in_reductions=None,
        reductions=None,
        priority=None,
        grain_size=None,
        num_tasks=None,
        nogroup=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_results_or_values(lowerBound))
        operands.append(get_op_results_or_values(upperBound))
        operands.append(get_op_results_or_values(step))
        operands.append(
            get_op_result_or_value(if_expr) if if_expr is not None else None
        )
        operands.append(
            get_op_result_or_value(final_expr) if final_expr is not None else None
        )
        operands.append(get_op_results_or_values(in_reduction_vars))
        operands.append(get_op_results_or_values(reduction_vars))
        operands.append(
            get_op_result_or_value(priority) if priority is not None else None
        )
        operands.append(get_op_results_or_values(allocate_vars))
        operands.append(get_op_results_or_values(allocators_vars))
        operands.append(
            get_op_result_or_value(grain_size) if grain_size is not None else None
        )
        operands.append(
            get_op_result_or_value(num_tasks) if num_tasks is not None else None
        )
        _ods_context = extend_opview_class(loc)
        if bool(inclusive):
            attributes["inclusive"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        if bool(untied):
            attributes["untied"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        if bool(mergeable):
            attributes["mergeable"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        if in_reductions is not None:
            attributes["in_reductions"] = (
                in_reductions
                if (
                    issubclass(type(in_reductions), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    in_reductions, context=_ods_context
                )
            )
        if reductions is not None:
            attributes["reductions"] = (
                reductions
                if (
                    issubclass(type(reductions), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    reductions, context=_ods_context
                )
            )
        if bool(nogroup):
            attributes["nogroup"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def lowerBound(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range

    @builtins.property
    def upperBound(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def step(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def if_expr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            3,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def final_expr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            4,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def in_reduction_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            5,
        )
        return operand_range

    @builtins.property
    def reduction_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            6,
        )
        return operand_range

    @builtins.property
    def priority(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            7,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def allocate_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            8,
        )
        return operand_range

    @builtins.property
    def allocators_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            9,
        )
        return operand_range

    @builtins.property
    def grain_size(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            10,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def num_tasks(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            11,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def inclusive(self):
        return "inclusive" in self.operation.attributes

    @inclusive.setter
    def inclusive(self, value):
        if bool(value):
            self.operation.attributes["inclusive"] = _ods_ir.UnitAttr.get()
        elif "inclusive" in self.operation.attributes:
            del self.operation.attributes["inclusive"]

    @inclusive.deleter
    def inclusive(self):
        del self.operation.attributes["inclusive"]

    @builtins.property
    def untied(self):
        return "untied" in self.operation.attributes

    @untied.setter
    def untied(self, value):
        if bool(value):
            self.operation.attributes["untied"] = _ods_ir.UnitAttr.get()
        elif "untied" in self.operation.attributes:
            del self.operation.attributes["untied"]

    @untied.deleter
    def untied(self):
        del self.operation.attributes["untied"]

    @builtins.property
    def mergeable(self):
        return "mergeable" in self.operation.attributes

    @mergeable.setter
    def mergeable(self, value):
        if bool(value):
            self.operation.attributes["mergeable"] = _ods_ir.UnitAttr.get()
        elif "mergeable" in self.operation.attributes:
            del self.operation.attributes["mergeable"]

    @mergeable.deleter
    def mergeable(self):
        del self.operation.attributes["mergeable"]

    @builtins.property
    def nogroup(self):
        return "nogroup" in self.operation.attributes

    @nogroup.setter
    def nogroup(self, value):
        if bool(value):
            self.operation.attributes["nogroup"] = _ods_ir.UnitAttr.get()
        elif "nogroup" in self.operation.attributes:
            del self.operation.attributes["nogroup"]

    @nogroup.deleter
    def nogroup(self):
        del self.operation.attributes["nogroup"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TaskOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.task"

    _ODS_OPERAND_SEGMENTS = [
        0,
        0,
        -1,
        0,
        -1,
        -1,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        in_reduction_vars,
        allocate_vars,
        allocators_vars,
        *,
        if_expr=None,
        final_expr=None,
        untied=None,
        mergeable=None,
        in_reductions=None,
        priority=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(
            get_op_result_or_value(if_expr) if if_expr is not None else None
        )
        operands.append(
            get_op_result_or_value(final_expr) if final_expr is not None else None
        )
        operands.append(get_op_results_or_values(in_reduction_vars))
        operands.append(
            get_op_result_or_value(priority) if priority is not None else None
        )
        operands.append(get_op_results_or_values(allocate_vars))
        operands.append(get_op_results_or_values(allocators_vars))
        _ods_context = extend_opview_class(loc)
        if bool(untied):
            attributes["untied"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        if bool(mergeable):
            attributes["mergeable"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        if in_reductions is not None:
            attributes["in_reductions"] = (
                in_reductions
                if (
                    issubclass(type(in_reductions), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    in_reductions, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def if_expr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def final_expr(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def in_reduction_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def priority(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            3,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def allocate_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            4,
        )
        return operand_range

    @builtins.property
    def allocators_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            5,
        )
        return operand_range

    @builtins.property
    def untied(self):
        return "untied" in self.operation.attributes

    @untied.setter
    def untied(self, value):
        if bool(value):
            self.operation.attributes["untied"] = _ods_ir.UnitAttr.get()
        elif "untied" in self.operation.attributes:
            del self.operation.attributes["untied"]

    @untied.deleter
    def untied(self):
        del self.operation.attributes["untied"]

    @builtins.property
    def mergeable(self):
        return "mergeable" in self.operation.attributes

    @mergeable.setter
    def mergeable(self, value):
        if bool(value):
            self.operation.attributes["mergeable"] = _ods_ir.UnitAttr.get()
        elif "mergeable" in self.operation.attributes:
            del self.operation.attributes["mergeable"]

    @mergeable.deleter
    def mergeable(self):
        del self.operation.attributes["mergeable"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TaskwaitOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.taskwait"

    _ODS_REGIONS = (0, True)

    def __init__(self, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TaskyieldOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.taskyield"

    _ODS_REGIONS = (0, True)

    def __init__(self, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TerminatorOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.terminator"

    _ODS_REGIONS = (0, True)

    def __init__(self, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = extend_opview_class(loc)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ThreadprivateOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.threadprivate"

    _ODS_REGIONS = (0, True)

    def __init__(self, tls_addr, sym_addr, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(sym_addr))
        _ods_context = extend_opview_class(loc)
        results.append(tls_addr)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def sym_addr(self):
        return self.operation.operands[0]

    @builtins.property
    def tls_addr(self):
        return self.operation.results[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class WsLoopOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.wsloop"

    _ODS_OPERAND_SEGMENTS = [
        -1,
        -1,
        -1,
        -1,
        -1,
        -1,
        0,
    ]

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        lowerBound,
        upperBound,
        step,
        linear_vars,
        linear_step_vars,
        reduction_vars,
        *,
        reductions=None,
        schedule_val=None,
        schedule_chunk_var=None,
        schedule_modifier=None,
        simd_modifier=None,
        nowait=None,
        ordered_val=None,
        order_val=None,
        inclusive=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_results_or_values(lowerBound))
        operands.append(get_op_results_or_values(upperBound))
        operands.append(get_op_results_or_values(step))
        operands.append(get_op_results_or_values(linear_vars))
        operands.append(get_op_results_or_values(linear_step_vars))
        operands.append(get_op_results_or_values(reduction_vars))
        operands.append(
            get_op_result_or_value(schedule_chunk_var)
            if schedule_chunk_var is not None
            else None
        )
        _ods_context = extend_opview_class(loc)
        if reductions is not None:
            attributes["reductions"] = (
                reductions
                if (
                    issubclass(type(reductions), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    reductions, context=_ods_context
                )
            )
        if schedule_val is not None:
            attributes["schedule_val"] = (
                schedule_val
                if (
                    issubclass(type(schedule_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ScheduleKindAttr")
                )
                else _ods_ir.AttrBuilder.get("ScheduleKindAttr")(
                    schedule_val, context=_ods_context
                )
            )
        if schedule_modifier is not None:
            attributes["schedule_modifier"] = (
                schedule_modifier
                if (
                    issubclass(type(schedule_modifier), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ScheduleModifierAttr")
                )
                else _ods_ir.AttrBuilder.get("ScheduleModifierAttr")(
                    schedule_modifier, context=_ods_context
                )
            )
        if bool(simd_modifier):
            attributes["simd_modifier"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        if bool(nowait):
            attributes["nowait"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        if ordered_val is not None:
            attributes["ordered_val"] = (
                ordered_val
                if (
                    issubclass(type(ordered_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(
                    ordered_val, context=_ods_context
                )
            )
        if order_val is not None:
            attributes["order_val"] = (
                order_val
                if (
                    issubclass(type(order_val), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("OrderKindAttr")
                )
                else _ods_ir.AttrBuilder.get("OrderKindAttr")(
                    order_val, context=_ods_context
                )
            )
        if bool(inclusive):
            attributes["inclusive"] = _ods_ir.UnitAttr.get(extend_opview_class(loc))
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def lowerBound(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range

    @builtins.property
    def upperBound(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def step(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range

    @builtins.property
    def linear_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            3,
        )
        return operand_range

    @builtins.property
    def linear_step_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            4,
        )
        return operand_range

    @builtins.property
    def reduction_vars(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            5,
        )
        return operand_range

    @builtins.property
    def schedule_chunk_var(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            6,
        )
        return operand_range[0] if len(operand_range) > 0 else None

    @builtins.property
    def simd_modifier(self):
        return "simd_modifier" in self.operation.attributes

    @simd_modifier.setter
    def simd_modifier(self, value):
        if bool(value):
            self.operation.attributes["simd_modifier"] = _ods_ir.UnitAttr.get()
        elif "simd_modifier" in self.operation.attributes:
            del self.operation.attributes["simd_modifier"]

    @simd_modifier.deleter
    def simd_modifier(self):
        del self.operation.attributes["simd_modifier"]

    @builtins.property
    def nowait(self):
        return "nowait" in self.operation.attributes

    @nowait.setter
    def nowait(self, value):
        if bool(value):
            self.operation.attributes["nowait"] = _ods_ir.UnitAttr.get()
        elif "nowait" in self.operation.attributes:
            del self.operation.attributes["nowait"]

    @nowait.deleter
    def nowait(self):
        del self.operation.attributes["nowait"]

    @builtins.property
    def ordered_val(self):
        if "ordered_val" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["ordered_val"])

    @ordered_val.setter
    def ordered_val(self, value):
        if value is not None:
            self.operation.attributes["ordered_val"] = value
        elif "ordered_val" in self.operation.attributes:
            del self.operation.attributes["ordered_val"]

    @ordered_val.deleter
    def ordered_val(self):
        del self.operation.attributes["ordered_val"]

    @builtins.property
    def inclusive(self):
        return "inclusive" in self.operation.attributes

    @inclusive.setter
    def inclusive(self, value):
        if bool(value):
            self.operation.attributes["inclusive"] = _ods_ir.UnitAttr.get()
        elif "inclusive" in self.operation.attributes:
            del self.operation.attributes["inclusive"]

    @inclusive.deleter
    def inclusive(self):
        del self.operation.attributes["inclusive"]

    @builtins.property
    def region(self):
        return self.regions[0]


@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class YieldOp(_ods_ir.OpView):
    OPERATION_NAME = "omp.yield"

    _ODS_REGIONS = (0, True)

    def __init__(self, results_, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(results_))
        _ods_context = extend_opview_class(loc)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def results_(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]
