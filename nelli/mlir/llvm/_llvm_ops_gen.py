from .._mlir.dialects._ods_common import _cext as cext
from .._mlir.dialects._ods_common import (
    extend_opview_class,
    get_op_result_or_value,
    get_op_results_or_values,
    segmented_accessor,
    get_default_loc_context,
)

_ods_ir = cext.ir

_ods_ext_module = None

import builtins


@cext.register_dialect
class _Dialect(_ods_ir.Dialect):
    DIALECT_NAMESPACE = "llvm"
    pass


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AShrOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.ashr"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AccessGroupMetadataOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.access_group"

    _ODS_REGIONS = (0, True)

    def __init__(self, sym_name, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
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


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AddOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.add"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AddrSpaceCastOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.addrspacecast"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AddressOfOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.mlir.addressof"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, global_name, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        attributes["global_name"] = (
            global_name
            if (
                issubclass(type(global_name), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("FlatSymbolRefAttr")
            )
            else _ods_ir.AttrBuilder.get("FlatSymbolRefAttr")(
                global_name, context=_ods_context
            )
        )
        results.append(res)
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
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AliasScopeDomainMetadataOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.alias_scope_domain"

    _ODS_REGIONS = (0, True)

    def __init__(self, sym_name, *, description=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
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
        if description is not None:
            attributes["description"] = (
                description
                if (
                    issubclass(type(description), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("StrAttr")
                )
                else _ods_ir.AttrBuilder.get("StrAttr")(
                    description, context=_ods_context
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
    def sym_name(self):
        return _ods_ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["sym_name"] = value

    @builtins.property
    def description(self):
        if "description" not in self.operation.attributes:
            return None
        return _ods_ir.StringAttr(self.operation.attributes["description"])

    @description.setter
    def description(self, value):
        if value is not None:
            self.operation.attributes["description"] = value
        elif "description" in self.operation.attributes:
            del self.operation.attributes["description"]

    @description.deleter
    def description(self):
        del self.operation.attributes["description"]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AliasScopeMetadataOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.alias_scope"

    _ODS_REGIONS = (0, True)

    def __init__(self, sym_name, domain, *, description=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
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
        attributes["domain"] = (
            domain
            if (
                issubclass(type(domain), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("FlatSymbolRefAttr")
            )
            else _ods_ir.AttrBuilder.get("FlatSymbolRefAttr")(
                domain, context=_ods_context
            )
        )
        if description is not None:
            attributes["description"] = (
                description
                if (
                    issubclass(type(description), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("StrAttr")
                )
                else _ods_ir.AttrBuilder.get("StrAttr")(
                    description, context=_ods_context
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
    def sym_name(self):
        return _ods_ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["sym_name"] = value

    @builtins.property
    def description(self):
        if "description" not in self.operation.attributes:
            return None
        return _ods_ir.StringAttr(self.operation.attributes["description"])

    @description.setter
    def description(self, value):
        if value is not None:
            self.operation.attributes["description"] = value
        elif "description" in self.operation.attributes:
            del self.operation.attributes["description"]

    @description.deleter
    def description(self):
        del self.operation.attributes["description"]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AllocaOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.alloca"

    _ODS_REGIONS = (0, True)

    def __init__(
        self, res, arraySize, *, alignment=None, elem_type=None, loc=None, ip=None
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arraySize))
        _ods_context = get_default_loc_context(loc)
        if alignment is not None:
            attributes["alignment"] = (
                alignment
                if (
                    issubclass(type(alignment), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(alignment, context=_ods_context)
            )
        if elem_type is not None:
            attributes["elem_type"] = (
                elem_type
                if (
                    issubclass(type(elem_type), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("TypeAttr")
                )
                else _ods_ir.AttrBuilder.get("TypeAttr")(
                    elem_type, context=_ods_context
                )
            )
        results.append(res)
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
    def arraySize(self):
        return self.operation.operands[0]

    @builtins.property
    def alignment(self):
        if "alignment" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["alignment"])

    @alignment.setter
    def alignment(self, value):
        if value is not None:
            self.operation.attributes["alignment"] = value
        elif "alignment" in self.operation.attributes:
            del self.operation.attributes["alignment"]

    @alignment.deleter
    def alignment(self):
        del self.operation.attributes["alignment"]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AndOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.and"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AtomicCmpXchgOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.cmpxchg"

    _ODS_REGIONS = (0, True)

    def __init__(
        self, ptr, cmp, val, success_ordering, failure_ordering, *, loc=None, ip=None
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(ptr))
        operands.append(get_op_result_or_value(cmp))
        operands.append(get_op_result_or_value(val))
        _ods_context = get_default_loc_context(loc)
        attributes["success_ordering"] = (
            success_ordering
            if (
                issubclass(type(success_ordering), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("AtomicOrdering")
            )
            else _ods_ir.AttrBuilder.get("AtomicOrdering")(
                success_ordering, context=_ods_context
            )
        )
        attributes["failure_ordering"] = (
            failure_ordering
            if (
                issubclass(type(failure_ordering), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("AtomicOrdering")
            )
            else _ods_ir.AttrBuilder.get("AtomicOrdering")(
                failure_ordering, context=_ods_context
            )
        )
        results = _ods_ir.InferTypeOpInterface(AtomicCmpXchgOp).inferReturnTypes(
            operands=operands,
            attributes=_ods_ir.DictAttr.get(attributes, context=_ods_context),
            context=_ods_context,
            loc=loc,
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
    def ptr(self):
        return self.operation.operands[0]

    @builtins.property
    def cmp(self):
        return self.operation.operands[1]

    @builtins.property
    def val(self):
        return self.operation.operands[2]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AtomicRMWOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.atomicrmw"

    _ODS_REGIONS = (0, True)

    def __init__(self, bin_op, ptr, val, ordering, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(ptr))
        operands.append(get_op_result_or_value(val))
        _ods_context = get_default_loc_context(loc)
        attributes["bin_op"] = (
            bin_op
            if (
                issubclass(type(bin_op), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("AtomicBinOp")
            )
            else _ods_ir.AttrBuilder.get("AtomicBinOp")(bin_op, context=_ods_context)
        )
        attributes["ordering"] = (
            ordering
            if (
                issubclass(type(ordering), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("AtomicOrdering")
            )
            else _ods_ir.AttrBuilder.get("AtomicOrdering")(
                ordering, context=_ods_context
            )
        )
        results = _ods_ir.InferTypeOpInterface(AtomicRMWOp).inferReturnTypes(
            operands=operands,
            attributes=_ods_ir.DictAttr.get(attributes, context=_ods_context),
            context=_ods_context,
            loc=loc,
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
    def ptr(self):
        return self.operation.operands[0]

    @builtins.property
    def val(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class BitcastOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.bitcast"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class BrOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.br"

    _ODS_REGIONS = (0, True)

    def __init__(self, destOperands, dest, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(destOperands))
        _ods_context = get_default_loc_context(loc)
        _ods_successors = []
        _ods_successors.append(dest)
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
    def destOperands(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CallOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.call"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        result,
        _gen_arg_1,
        *,
        callee=None,
        fastmathFlags=None,
        branch_weights=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(_gen_arg_1))
        _ods_context = get_default_loc_context(loc)
        if callee is not None:
            attributes["callee"] = (
                callee
                if (
                    issubclass(type(callee), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("FlatSymbolRefAttr")
                )
                else _ods_ir.AttrBuilder.get("FlatSymbolRefAttr")(
                    callee, context=_ods_context
                )
            )
        if fastmathFlags is not None:
            attributes["fastmathFlags"] = (
                fastmathFlags
                if (
                    issubclass(type(fastmathFlags), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("LLVM_FastmathFlagsAttr")
                )
                else _ods_ir.AttrBuilder.get("LLVM_FastmathFlagsAttr")(
                    fastmathFlags, context=_ods_context
                )
            )
        if branch_weights is not None:
            attributes["branch_weights"] = (
                branch_weights
                if (
                    issubclass(type(branch_weights), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ElementsAttr")
                )
                else _ods_ir.AttrBuilder.get("ElementsAttr")(
                    branch_weights, context=_ods_context
                )
            )
        if result is not None:
            results.append(result)
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
    def result(self):
        return None if len(self.operation.results) < 1 else self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CondBrOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.cond_br"

    _ODS_OPERAND_SEGMENTS = [
        1,
        -1,
        -1,
    ]

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        condition,
        trueDestOperands,
        falseDestOperands,
        trueDest,
        falseDest,
        *,
        branch_weights=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(condition))
        operands.append(get_op_results_or_values(trueDestOperands))
        operands.append(get_op_results_or_values(falseDestOperands))
        _ods_context = get_default_loc_context(loc)
        if branch_weights is not None:
            attributes["branch_weights"] = (
                branch_weights
                if (
                    issubclass(type(branch_weights), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ElementsAttr")
                )
                else _ods_ir.AttrBuilder.get("ElementsAttr")(
                    branch_weights, context=_ods_context
                )
            )
        _ods_successors = []
        _ods_successors.append(trueDest)
        _ods_successors.append(falseDest)
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
    def condition(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range[0]

    @builtins.property
    def trueDestOperands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def falseDestOperands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ConstantOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.mlir.constant"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, value, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        attributes["value"] = (
            value
            if (
                issubclass(type(value), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("AnyAttr")
            )
            else _ods_ir.AttrBuilder.get("AnyAttr")(value, context=_ods_context)
        )
        results.append(res)
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
    def value(self):
        return _ods_ir.Attribute(self.operation.attributes["value"])

    @value.setter
    def value(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["value"] = value

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ExtractElementOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.extractelement"

    _ODS_REGIONS = (0, True)

    def __init__(self, vector, position, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(vector))
        operands.append(get_op_result_or_value(position))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(ExtractElementOp).inferReturnTypes(
            operands=operands,
            attributes=_ods_ir.DictAttr.get(attributes, context=_ods_context),
            context=_ods_context,
            loc=loc,
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
    def vector(self):
        return self.operation.operands[0]

    @builtins.property
    def position(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ExtractValueOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.extractvalue"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, container, position, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(container))
        _ods_context = get_default_loc_context(loc)
        attributes["position"] = (
            position
            if (
                issubclass(type(position), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("DenseI64ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("DenseI64ArrayAttr")(
                position, context=_ods_context
            )
        )
        results.append(res)
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
    def container(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FAddOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fadd"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, fastmathFlags=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        if fastmathFlags is not None:
            attributes["fastmathFlags"] = (
                fastmathFlags
                if (
                    issubclass(type(fastmathFlags), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("LLVM_FastmathFlagsAttr")
                )
                else _ods_ir.AttrBuilder.get("LLVM_FastmathFlagsAttr")(
                    fastmathFlags, context=_ods_context
                )
            )
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FCmpOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fcmp"

    _ODS_REGIONS = (0, True)

    def __init__(self, predicate, lhs, rhs, *, fastmathFlags=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        attributes["predicate"] = (
            predicate
            if (
                issubclass(type(predicate), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("FCmpPredicate")
            )
            else _ods_ir.AttrBuilder.get("FCmpPredicate")(
                predicate, context=_ods_context
            )
        )
        if fastmathFlags is not None:
            attributes["fastmathFlags"] = (
                fastmathFlags
                if (
                    issubclass(type(fastmathFlags), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("LLVM_FastmathFlagsAttr")
                )
                else _ods_ir.AttrBuilder.get("LLVM_FastmathFlagsAttr")(
                    fastmathFlags, context=_ods_context
                )
            )
        results = _ods_ir.InferTypeOpInterface(FCmpOp).inferReturnTypes(
            operands=operands,
            attributes=_ods_ir.DictAttr.get(attributes, context=_ods_context),
            context=_ods_context,
            loc=loc,
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FDivOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fdiv"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, fastmathFlags=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        if fastmathFlags is not None:
            attributes["fastmathFlags"] = (
                fastmathFlags
                if (
                    issubclass(type(fastmathFlags), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("LLVM_FastmathFlagsAttr")
                )
                else _ods_ir.AttrBuilder.get("LLVM_FastmathFlagsAttr")(
                    fastmathFlags, context=_ods_context
                )
            )
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FMulOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fmul"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, fastmathFlags=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        if fastmathFlags is not None:
            attributes["fastmathFlags"] = (
                fastmathFlags
                if (
                    issubclass(type(fastmathFlags), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("LLVM_FastmathFlagsAttr")
                )
                else _ods_ir.AttrBuilder.get("LLVM_FastmathFlagsAttr")(
                    fastmathFlags, context=_ods_context
                )
            )
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FNegOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fneg"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, *, fastmathFlags=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
        _ods_context = get_default_loc_context(loc)
        if fastmathFlags is not None:
            attributes["fastmathFlags"] = (
                fastmathFlags
                if (
                    issubclass(type(fastmathFlags), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("LLVM_FastmathFlagsAttr")
                )
                else _ods_ir.AttrBuilder.get("LLVM_FastmathFlagsAttr")(
                    fastmathFlags, context=_ods_context
                )
            )
        results.extend([operands[0].type] * 1)
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
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FPExtOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fpext"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FPToSIOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fptosi"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FPToUIOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fptoui"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FPTruncOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fptrunc"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FRemOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.frem"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, fastmathFlags=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        if fastmathFlags is not None:
            attributes["fastmathFlags"] = (
                fastmathFlags
                if (
                    issubclass(type(fastmathFlags), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("LLVM_FastmathFlagsAttr")
                )
                else _ods_ir.AttrBuilder.get("LLVM_FastmathFlagsAttr")(
                    fastmathFlags, context=_ods_context
                )
            )
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FSubOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fsub"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, fastmathFlags=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        if fastmathFlags is not None:
            attributes["fastmathFlags"] = (
                fastmathFlags
                if (
                    issubclass(type(fastmathFlags), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("LLVM_FastmathFlagsAttr")
                )
                else _ods_ir.AttrBuilder.get("LLVM_FastmathFlagsAttr")(
                    fastmathFlags, context=_ods_context
                )
            )
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FenceOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.fence"

    _ODS_REGIONS = (0, True)

    def __init__(self, ordering, syncscope, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        attributes["ordering"] = (
            ordering
            if (
                issubclass(type(ordering), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("AtomicOrdering")
            )
            else _ods_ir.AttrBuilder.get("AtomicOrdering")(
                ordering, context=_ods_context
            )
        )
        attributes["syncscope"] = (
            syncscope
            if (
                issubclass(type(syncscope), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("StrAttr")
            )
            else _ods_ir.AttrBuilder.get("StrAttr")(syncscope, context=_ods_context)
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
    def syncscope(self):
        return _ods_ir.StringAttr(self.operation.attributes["syncscope"])

    @syncscope.setter
    def syncscope(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["syncscope"] = value


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FreezeOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.freeze"

    _ODS_REGIONS = (0, True)

    def __init__(self, val, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(val))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def val(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class GEPOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.getelementptr"

    _ODS_REGIONS = (0, True)

    @builtins.property
    def base(self):
        return self.operation.operands[0]

    @builtins.property
    def dynamicIndices(self):
        _ods_variadic_group_length = len(self.operation.operands) - 2 + 1
        return self.operation.operands[1 : 1 + _ods_variadic_group_length]

    @builtins.property
    def inbounds(self):
        return "inbounds" in self.operation.attributes

    @inbounds.setter
    def inbounds(self, value):
        if bool(value):
            self.operation.attributes["inbounds"] = _ods_ir.UnitAttr.get()
        elif "inbounds" in self.operation.attributes:
            del self.operation.attributes["inbounds"]

    @inbounds.deleter
    def inbounds(self):
        del self.operation.attributes["inbounds"]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class GlobalCtorsOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.mlir.global_ctors"

    _ODS_REGIONS = (0, True)

    def __init__(self, ctors, priorities, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        attributes["ctors"] = (
            ctors
            if (
                issubclass(type(ctors), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("FlatSymbolRefArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("FlatSymbolRefArrayAttr")(
                ctors, context=_ods_context
            )
        )
        attributes["priorities"] = (
            priorities
            if (
                issubclass(type(priorities), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("I32ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("I32ArrayAttr")(
                priorities, context=_ods_context
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


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class GlobalDtorsOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.mlir.global_dtors"

    _ODS_REGIONS = (0, True)

    def __init__(self, dtors, priorities, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        attributes["dtors"] = (
            dtors
            if (
                issubclass(type(dtors), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("FlatSymbolRefArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("FlatSymbolRefArrayAttr")(
                dtors, context=_ods_context
            )
        )
        attributes["priorities"] = (
            priorities
            if (
                issubclass(type(priorities), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("I32ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("I32ArrayAttr")(
                priorities, context=_ods_context
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


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class GlobalOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.mlir.global"

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        global_type,
        sym_name,
        linkage,
        *,
        constant=None,
        dso_local=None,
        thread_local_=None,
        value=None,
        alignment=None,
        addr_space=None,
        unnamed_addr=None,
        section=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        attributes["global_type"] = (
            global_type
            if (
                issubclass(type(global_type), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("TypeAttr")
            )
            else _ods_ir.AttrBuilder.get("TypeAttr")(global_type, context=_ods_context)
        )
        if bool(constant):
            attributes["constant"] = _ods_ir.UnitAttr.get(get_default_loc_context(loc))
        attributes["sym_name"] = (
            sym_name
            if (
                issubclass(type(sym_name), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("StrAttr")
            )
            else _ods_ir.AttrBuilder.get("StrAttr")(sym_name, context=_ods_context)
        )
        attributes["linkage"] = (
            linkage
            if (
                issubclass(type(linkage), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("Linkage")
            )
            else _ods_ir.AttrBuilder.get("Linkage")(linkage, context=_ods_context)
        )
        if bool(dso_local):
            attributes["dso_local"] = _ods_ir.UnitAttr.get(get_default_loc_context(loc))
        if bool(thread_local_):
            attributes["thread_local_"] = _ods_ir.UnitAttr.get(
                get_default_loc_context(loc)
            )
        if value is not None:
            attributes["value"] = (
                value
                if (
                    issubclass(type(value), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("AnyAttr")
                )
                else _ods_ir.AttrBuilder.get("AnyAttr")(value, context=_ods_context)
            )
        if alignment is not None:
            attributes["alignment"] = (
                alignment
                if (
                    issubclass(type(alignment), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(alignment, context=_ods_context)
            )
        if addr_space is not None:
            attributes["addr_space"] = (
                addr_space
                if (
                    issubclass(type(addr_space), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I32Attr")
                )
                else _ods_ir.AttrBuilder.get("I32Attr")(
                    addr_space, context=_ods_context
                )
            )
        if unnamed_addr is not None:
            attributes["unnamed_addr"] = (
                unnamed_addr
                if (
                    issubclass(type(unnamed_addr), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("UnnamedAddr")
                )
                else _ods_ir.AttrBuilder.get("UnnamedAddr")(
                    unnamed_addr, context=_ods_context
                )
            )
        if section is not None:
            attributes["section"] = (
                section
                if (
                    issubclass(type(section), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("StrAttr")
                )
                else _ods_ir.AttrBuilder.get("StrAttr")(section, context=_ods_context)
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
    def constant(self):
        return "constant" in self.operation.attributes

    @constant.setter
    def constant(self, value):
        if bool(value):
            self.operation.attributes["constant"] = _ods_ir.UnitAttr.get()
        elif "constant" in self.operation.attributes:
            del self.operation.attributes["constant"]

    @constant.deleter
    def constant(self):
        del self.operation.attributes["constant"]

    @builtins.property
    def sym_name(self):
        return _ods_ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["sym_name"] = value

    @builtins.property
    def dso_local(self):
        return "dso_local" in self.operation.attributes

    @dso_local.setter
    def dso_local(self, value):
        if bool(value):
            self.operation.attributes["dso_local"] = _ods_ir.UnitAttr.get()
        elif "dso_local" in self.operation.attributes:
            del self.operation.attributes["dso_local"]

    @dso_local.deleter
    def dso_local(self):
        del self.operation.attributes["dso_local"]

    @builtins.property
    def thread_local_(self):
        return "thread_local_" in self.operation.attributes

    @thread_local_.setter
    def thread_local_(self, value):
        if bool(value):
            self.operation.attributes["thread_local_"] = _ods_ir.UnitAttr.get()
        elif "thread_local_" in self.operation.attributes:
            del self.operation.attributes["thread_local_"]

    @thread_local_.deleter
    def thread_local_(self):
        del self.operation.attributes["thread_local_"]

    @builtins.property
    def value(self):
        if "value" not in self.operation.attributes:
            return None
        return _ods_ir.Attribute(self.operation.attributes["value"])

    @value.setter
    def value(self, value):
        if value is not None:
            self.operation.attributes["value"] = value
        elif "value" in self.operation.attributes:
            del self.operation.attributes["value"]

    @value.deleter
    def value(self):
        del self.operation.attributes["value"]

    @builtins.property
    def alignment(self):
        if "alignment" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["alignment"])

    @alignment.setter
    def alignment(self, value):
        if value is not None:
            self.operation.attributes["alignment"] = value
        elif "alignment" in self.operation.attributes:
            del self.operation.attributes["alignment"]

    @alignment.deleter
    def alignment(self):
        del self.operation.attributes["alignment"]

    @builtins.property
    def addr_space(self):
        return _ods_ir.IntegerAttr(self.operation.attributes["addr_space"])

    @addr_space.setter
    def addr_space(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["addr_space"] = value

    @builtins.property
    def section(self):
        if "section" not in self.operation.attributes:
            return None
        return _ods_ir.StringAttr(self.operation.attributes["section"])

    @section.setter
    def section(self, value):
        if value is not None:
            self.operation.attributes["section"] = value
        elif "section" in self.operation.attributes:
            del self.operation.attributes["section"]

    @section.deleter
    def section(self):
        del self.operation.attributes["section"]

    @builtins.property
    def initializer(self):
        return self.regions[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ICmpOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.icmp"

    _ODS_REGIONS = (0, True)

    def __init__(self, predicate, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        attributes["predicate"] = (
            predicate
            if (
                issubclass(type(predicate), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("ICmpPredicate")
            )
            else _ods_ir.AttrBuilder.get("ICmpPredicate")(
                predicate, context=_ods_context
            )
        )
        results = _ods_ir.InferTypeOpInterface(ICmpOp).inferReturnTypes(
            operands=operands,
            attributes=_ods_ir.DictAttr.get(attributes, context=_ods_context),
            context=_ods_context,
            loc=loc,
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class InlineAsmOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.inline_asm"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        res,
        operands_,
        asm_string,
        constraints,
        *,
        has_side_effects=None,
        is_align_stack=None,
        asm_dialect=None,
        operand_attrs=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(operands_))
        _ods_context = get_default_loc_context(loc)
        attributes["asm_string"] = (
            asm_string
            if (
                issubclass(type(asm_string), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("StrAttr")
            )
            else _ods_ir.AttrBuilder.get("StrAttr")(asm_string, context=_ods_context)
        )
        attributes["constraints"] = (
            constraints
            if (
                issubclass(type(constraints), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("StrAttr")
            )
            else _ods_ir.AttrBuilder.get("StrAttr")(constraints, context=_ods_context)
        )
        if bool(has_side_effects):
            attributes["has_side_effects"] = _ods_ir.UnitAttr.get(
                get_default_loc_context(loc)
            )
        if bool(is_align_stack):
            attributes["is_align_stack"] = _ods_ir.UnitAttr.get(
                get_default_loc_context(loc)
            )
        if asm_dialect is not None:
            attributes["asm_dialect"] = (
                asm_dialect
                if (
                    issubclass(type(asm_dialect), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("AsmATTOrIntel")
                )
                else _ods_ir.AttrBuilder.get("AsmATTOrIntel")(
                    asm_dialect, context=_ods_context
                )
            )
        if operand_attrs is not None:
            attributes["operand_attrs"] = (
                operand_attrs
                if (
                    issubclass(type(operand_attrs), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("ArrayAttr")(
                    operand_attrs, context=_ods_context
                )
            )
        if res is not None:
            results.append(res)
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
    def operands_(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]

    @builtins.property
    def asm_string(self):
        return _ods_ir.StringAttr(self.operation.attributes["asm_string"])

    @asm_string.setter
    def asm_string(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["asm_string"] = value

    @builtins.property
    def constraints(self):
        return _ods_ir.StringAttr(self.operation.attributes["constraints"])

    @constraints.setter
    def constraints(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["constraints"] = value

    @builtins.property
    def has_side_effects(self):
        return "has_side_effects" in self.operation.attributes

    @has_side_effects.setter
    def has_side_effects(self, value):
        if bool(value):
            self.operation.attributes["has_side_effects"] = _ods_ir.UnitAttr.get()
        elif "has_side_effects" in self.operation.attributes:
            del self.operation.attributes["has_side_effects"]

    @has_side_effects.deleter
    def has_side_effects(self):
        del self.operation.attributes["has_side_effects"]

    @builtins.property
    def is_align_stack(self):
        return "is_align_stack" in self.operation.attributes

    @is_align_stack.setter
    def is_align_stack(self, value):
        if bool(value):
            self.operation.attributes["is_align_stack"] = _ods_ir.UnitAttr.get()
        elif "is_align_stack" in self.operation.attributes:
            del self.operation.attributes["is_align_stack"]

    @is_align_stack.deleter
    def is_align_stack(self):
        del self.operation.attributes["is_align_stack"]

    @builtins.property
    def res(self):
        return None if len(self.operation.results) < 1 else self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class InsertElementOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.insertelement"

    _ODS_REGIONS = (0, True)

    def __init__(self, vector, value, position, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(vector))
        operands.append(get_op_result_or_value(value))
        operands.append(get_op_result_or_value(position))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(InsertElementOp).inferReturnTypes(
            operands=operands,
            attributes=_ods_ir.DictAttr.get(attributes, context=_ods_context),
            context=_ods_context,
            loc=loc,
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
    def vector(self):
        return self.operation.operands[0]

    @builtins.property
    def value(self):
        return self.operation.operands[1]

    @builtins.property
    def position(self):
        return self.operation.operands[2]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class InsertValueOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.insertvalue"

    _ODS_REGIONS = (0, True)

    def __init__(self, container, value, position, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(container))
        operands.append(get_op_result_or_value(value))
        _ods_context = get_default_loc_context(loc)
        attributes["position"] = (
            position
            if (
                issubclass(type(position), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("DenseI64ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("DenseI64ArrayAttr")(
                position, context=_ods_context
            )
        )
        results = _ods_ir.InferTypeOpInterface(InsertValueOp).inferReturnTypes(
            operands=operands,
            attributes=_ods_ir.DictAttr.get(attributes, context=_ods_context),
            context=_ods_context,
            loc=loc,
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
    def container(self):
        return self.operation.operands[0]

    @builtins.property
    def value(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class IntToPtrOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.inttoptr"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class InvokeOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.invoke"

    _ODS_OPERAND_SEGMENTS = [
        -1,
        -1,
        -1,
    ]

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        result,
        callee_operands,
        normalDestOperands,
        unwindDestOperands,
        normalDest,
        unwindDest,
        *,
        callee=None,
        branch_weights=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_results_or_values(callee_operands))
        operands.append(get_op_results_or_values(normalDestOperands))
        operands.append(get_op_results_or_values(unwindDestOperands))
        _ods_context = get_default_loc_context(loc)
        if callee is not None:
            attributes["callee"] = (
                callee
                if (
                    issubclass(type(callee), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("FlatSymbolRefAttr")
                )
                else _ods_ir.AttrBuilder.get("FlatSymbolRefAttr")(
                    callee, context=_ods_context
                )
            )
        if branch_weights is not None:
            attributes["branch_weights"] = (
                branch_weights
                if (
                    issubclass(type(branch_weights), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ElementsAttr")
                )
                else _ods_ir.AttrBuilder.get("ElementsAttr")(
                    branch_weights, context=_ods_context
                )
            )
        results.extend(result)
        _ods_successors = []
        _ods_successors.append(normalDest)
        _ods_successors.append(unwindDest)
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
    def callee_operands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range

    @builtins.property
    def normalDestOperands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def unwindDestOperands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class LLVMFuncOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.func"

    _ODS_REGIONS = (1, True)

    @builtins.property
    def sym_name(self):
        return _ods_ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["sym_name"] = value

    @builtins.property
    def dso_local(self):
        return "dso_local" in self.operation.attributes

    @dso_local.setter
    def dso_local(self, value):
        if bool(value):
            self.operation.attributes["dso_local"] = _ods_ir.UnitAttr.get()
        elif "dso_local" in self.operation.attributes:
            del self.operation.attributes["dso_local"]

    @dso_local.deleter
    def dso_local(self):
        del self.operation.attributes["dso_local"]

    @builtins.property
    def garbageCollector(self):
        if "garbageCollector" not in self.operation.attributes:
            return None
        return _ods_ir.StringAttr(self.operation.attributes["garbageCollector"])

    @garbageCollector.setter
    def garbageCollector(self, value):
        if value is not None:
            self.operation.attributes["garbageCollector"] = value
        elif "garbageCollector" in self.operation.attributes:
            del self.operation.attributes["garbageCollector"]

    @garbageCollector.deleter
    def garbageCollector(self):
        del self.operation.attributes["garbageCollector"]

    @builtins.property
    def function_entry_count(self):
        if "function_entry_count" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["function_entry_count"])

    @function_entry_count.setter
    def function_entry_count(self, value):
        if value is not None:
            self.operation.attributes["function_entry_count"] = value
        elif "function_entry_count" in self.operation.attributes:
            del self.operation.attributes["function_entry_count"]

    @function_entry_count.deleter
    def function_entry_count(self):
        del self.operation.attributes["function_entry_count"]

    @builtins.property
    def body(self):
        return self.regions[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class LShrOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.lshr"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class LandingpadOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.landingpad"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, _gen_arg_1, *, cleanup=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(_gen_arg_1))
        _ods_context = get_default_loc_context(loc)
        if bool(cleanup):
            attributes["cleanup"] = _ods_ir.UnitAttr.get(get_default_loc_context(loc))
        results.append(res)
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
    def cleanup(self):
        return "cleanup" in self.operation.attributes

    @cleanup.setter
    def cleanup(self, value):
        if bool(value):
            self.operation.attributes["cleanup"] = _ods_ir.UnitAttr.get()
        elif "cleanup" in self.operation.attributes:
            del self.operation.attributes["cleanup"]

    @cleanup.deleter
    def cleanup(self):
        del self.operation.attributes["cleanup"]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class LoadOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.load"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        res,
        addr,
        *,
        access_groups=None,
        alias_scopes=None,
        noalias_scopes=None,
        alignment=None,
        volatile_=None,
        nontemporal=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(addr))
        _ods_context = get_default_loc_context(loc)
        if access_groups is not None:
            attributes["access_groups"] = (
                access_groups
                if (
                    issubclass(type(access_groups), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    access_groups, context=_ods_context
                )
            )
        if alias_scopes is not None:
            attributes["alias_scopes"] = (
                alias_scopes
                if (
                    issubclass(type(alias_scopes), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    alias_scopes, context=_ods_context
                )
            )
        if noalias_scopes is not None:
            attributes["noalias_scopes"] = (
                noalias_scopes
                if (
                    issubclass(type(noalias_scopes), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    noalias_scopes, context=_ods_context
                )
            )
        if alignment is not None:
            attributes["alignment"] = (
                alignment
                if (
                    issubclass(type(alignment), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(alignment, context=_ods_context)
            )
        if bool(volatile_):
            attributes["volatile_"] = _ods_ir.UnitAttr.get(get_default_loc_context(loc))
        if bool(nontemporal):
            attributes["nontemporal"] = _ods_ir.UnitAttr.get(
                get_default_loc_context(loc)
            )
        results.append(res)
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
    def addr(self):
        return self.operation.operands[0]

    @builtins.property
    def alignment(self):
        if "alignment" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["alignment"])

    @alignment.setter
    def alignment(self, value):
        if value is not None:
            self.operation.attributes["alignment"] = value
        elif "alignment" in self.operation.attributes:
            del self.operation.attributes["alignment"]

    @alignment.deleter
    def alignment(self):
        del self.operation.attributes["alignment"]

    @builtins.property
    def volatile_(self):
        return "volatile_" in self.operation.attributes

    @volatile_.setter
    def volatile_(self, value):
        if bool(value):
            self.operation.attributes["volatile_"] = _ods_ir.UnitAttr.get()
        elif "volatile_" in self.operation.attributes:
            del self.operation.attributes["volatile_"]

    @volatile_.deleter
    def volatile_(self):
        del self.operation.attributes["volatile_"]

    @builtins.property
    def nontemporal(self):
        return "nontemporal" in self.operation.attributes

    @nontemporal.setter
    def nontemporal(self, value):
        if bool(value):
            self.operation.attributes["nontemporal"] = _ods_ir.UnitAttr.get()
        elif "nontemporal" in self.operation.attributes:
            del self.operation.attributes["nontemporal"]

    @nontemporal.deleter
    def nontemporal(self):
        del self.operation.attributes["nontemporal"]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class MetadataOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.metadata"

    _ODS_REGIONS = (1, True)

    @builtins.property
    def sym_name(self):
        return _ods_ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["sym_name"] = value

    @builtins.property
    def body(self):
        return self.regions[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class MulOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.mul"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class NullOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.mlir.null"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class OrOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.or"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class PtrToIntOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.ptrtoint"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ResumeOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.resume"

    _ODS_REGIONS = (0, True)

    def __init__(self, value, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(value))
        _ods_context = get_default_loc_context(loc)
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
    def value(self):
        return self.operation.operands[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ReturnOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.return"

    _ODS_REGIONS = (0, True)

    def __init__(self, *, arg=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        if arg is not None:
            operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
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
    def arg(self):
        return None if len(self.operation.operands) < 1 else self.operation.operands[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SDivOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.sdiv"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SExtOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.sext"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SIToFPOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.sitofp"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SRemOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.srem"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SelectOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.select"

    _ODS_REGIONS = (0, True)

    def __init__(self, condition, trueValue, falseValue, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(condition))
        operands.append(get_op_result_or_value(trueValue))
        operands.append(get_op_result_or_value(falseValue))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(SelectOp).inferReturnTypes(
            operands=operands,
            attributes=_ods_ir.DictAttr.get(attributes, context=_ods_context),
            context=_ods_context,
            loc=loc,
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
    def condition(self):
        return self.operation.operands[0]

    @builtins.property
    def trueValue(self):
        return self.operation.operands[1]

    @builtins.property
    def falseValue(self):
        return self.operation.operands[2]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ShlOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.shl"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ShuffleVectorOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.shufflevector"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, v1, v2, mask, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(v1))
        operands.append(get_op_result_or_value(v2))
        _ods_context = get_default_loc_context(loc)
        attributes["mask"] = (
            mask
            if (
                issubclass(type(mask), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("DenseI32ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("DenseI32ArrayAttr")(
                mask, context=_ods_context
            )
        )
        results.append(res)
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
    def v1(self):
        return self.operation.operands[0]

    @builtins.property
    def v2(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class StoreOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.store"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        value,
        addr,
        *,
        access_groups=None,
        alias_scopes=None,
        noalias_scopes=None,
        alignment=None,
        volatile_=None,
        nontemporal=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(value))
        operands.append(get_op_result_or_value(addr))
        _ods_context = get_default_loc_context(loc)
        if access_groups is not None:
            attributes["access_groups"] = (
                access_groups
                if (
                    issubclass(type(access_groups), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    access_groups, context=_ods_context
                )
            )
        if alias_scopes is not None:
            attributes["alias_scopes"] = (
                alias_scopes
                if (
                    issubclass(type(alias_scopes), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    alias_scopes, context=_ods_context
                )
            )
        if noalias_scopes is not None:
            attributes["noalias_scopes"] = (
                noalias_scopes
                if (
                    issubclass(type(noalias_scopes), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("SymbolRefArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("SymbolRefArrayAttr")(
                    noalias_scopes, context=_ods_context
                )
            )
        if alignment is not None:
            attributes["alignment"] = (
                alignment
                if (
                    issubclass(type(alignment), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64Attr")
                )
                else _ods_ir.AttrBuilder.get("I64Attr")(alignment, context=_ods_context)
            )
        if bool(volatile_):
            attributes["volatile_"] = _ods_ir.UnitAttr.get(get_default_loc_context(loc))
        if bool(nontemporal):
            attributes["nontemporal"] = _ods_ir.UnitAttr.get(
                get_default_loc_context(loc)
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
    def value(self):
        return self.operation.operands[0]

    @builtins.property
    def addr(self):
        return self.operation.operands[1]

    @builtins.property
    def alignment(self):
        if "alignment" not in self.operation.attributes:
            return None
        return _ods_ir.IntegerAttr(self.operation.attributes["alignment"])

    @alignment.setter
    def alignment(self, value):
        if value is not None:
            self.operation.attributes["alignment"] = value
        elif "alignment" in self.operation.attributes:
            del self.operation.attributes["alignment"]

    @alignment.deleter
    def alignment(self):
        del self.operation.attributes["alignment"]

    @builtins.property
    def volatile_(self):
        return "volatile_" in self.operation.attributes

    @volatile_.setter
    def volatile_(self, value):
        if bool(value):
            self.operation.attributes["volatile_"] = _ods_ir.UnitAttr.get()
        elif "volatile_" in self.operation.attributes:
            del self.operation.attributes["volatile_"]

    @volatile_.deleter
    def volatile_(self):
        del self.operation.attributes["volatile_"]

    @builtins.property
    def nontemporal(self):
        return "nontemporal" in self.operation.attributes

    @nontemporal.setter
    def nontemporal(self, value):
        if bool(value):
            self.operation.attributes["nontemporal"] = _ods_ir.UnitAttr.get()
        elif "nontemporal" in self.operation.attributes:
            del self.operation.attributes["nontemporal"]

    @nontemporal.deleter
    def nontemporal(self):
        del self.operation.attributes["nontemporal"]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SubOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.sub"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class SwitchOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.switch"

    _ODS_OPERAND_SEGMENTS = [
        1,
        -1,
        -1,
    ]

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        value,
        defaultOperands,
        caseOperands,
        case_operand_segments,
        defaultDestination,
        caseDestinations,
        *,
        case_values=None,
        branch_weights=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(value))
        operands.append(get_op_results_or_values(defaultOperands))
        operands.append(get_op_results_or_values(caseOperands))
        _ods_context = get_default_loc_context(loc)
        if case_values is not None:
            attributes["case_values"] = (
                case_values
                if (
                    issubclass(type(case_values), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ElementsAttr")
                )
                else _ods_ir.AttrBuilder.get("ElementsAttr")(
                    case_values, context=_ods_context
                )
            )
        attributes["case_operand_segments"] = (
            case_operand_segments
            if (
                issubclass(type(case_operand_segments), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("DenseI32ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("DenseI32ArrayAttr")(
                case_operand_segments, context=_ods_context
            )
        )
        if branch_weights is not None:
            attributes["branch_weights"] = (
                branch_weights
                if (
                    issubclass(type(branch_weights), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("ElementsAttr")
                )
                else _ods_ir.AttrBuilder.get("ElementsAttr")(
                    branch_weights, context=_ods_context
                )
            )
        _ods_successors = []
        _ods_successors.append(defaultDestination)
        _ods_successors.extend(caseDestinations)
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
    def value(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range[0]

    @builtins.property
    def defaultOperands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def caseOperands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            2,
        )
        return operand_range


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TBAARootMetadataOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.tbaa_root"

    _ODS_REGIONS = (0, True)

    def __init__(self, sym_name, identity, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
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
        attributes["identity"] = (
            identity
            if (
                issubclass(type(identity), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("StrAttr")
            )
            else _ods_ir.AttrBuilder.get("StrAttr")(identity, context=_ods_context)
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
    def identity(self):
        return _ods_ir.StringAttr(self.operation.attributes["identity"])

    @identity.setter
    def identity(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["identity"] = value


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TBAATagOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.tbaa_tag"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        sym_name,
        base_type,
        access_type,
        offset,
        *,
        constant=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
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
        attributes["base_type"] = (
            base_type
            if (
                issubclass(type(base_type), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("FlatSymbolRefAttr")
            )
            else _ods_ir.AttrBuilder.get("FlatSymbolRefAttr")(
                base_type, context=_ods_context
            )
        )
        attributes["access_type"] = (
            access_type
            if (
                issubclass(type(access_type), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("FlatSymbolRefAttr")
            )
            else _ods_ir.AttrBuilder.get("FlatSymbolRefAttr")(
                access_type, context=_ods_context
            )
        )
        attributes["offset"] = (
            offset
            if (
                issubclass(type(offset), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("I64Attr")
            )
            else _ods_ir.AttrBuilder.get("I64Attr")(offset, context=_ods_context)
        )
        if bool(constant):
            attributes["constant"] = _ods_ir.UnitAttr.get(get_default_loc_context(loc))
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
    def offset(self):
        return _ods_ir.IntegerAttr(self.operation.attributes["offset"])

    @offset.setter
    def offset(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["offset"] = value

    @builtins.property
    def constant(self):
        return "constant" in self.operation.attributes

    @constant.setter
    def constant(self, value):
        if bool(value):
            self.operation.attributes["constant"] = _ods_ir.UnitAttr.get()
        elif "constant" in self.operation.attributes:
            del self.operation.attributes["constant"]

    @constant.deleter
    def constant(self):
        del self.operation.attributes["constant"]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TBAATypeDescriptorOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.tbaa_type_desc"

    _ODS_REGIONS = (0, True)

    def __init__(self, sym_name, members, offsets, *, identity=None, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
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
        if identity is not None:
            attributes["identity"] = (
                identity
                if (
                    issubclass(type(identity), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("StrAttr")
                )
                else _ods_ir.AttrBuilder.get("StrAttr")(identity, context=_ods_context)
            )
        attributes["members"] = (
            members
            if (
                issubclass(type(members), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("FlatSymbolRefArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("FlatSymbolRefArrayAttr")(
                members, context=_ods_context
            )
        )
        attributes["offsets"] = (
            offsets
            if (
                issubclass(type(offsets), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("DenseI64ArrayAttr")
            )
            else _ods_ir.AttrBuilder.get("DenseI64ArrayAttr")(
                offsets, context=_ods_context
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
    def sym_name(self):
        return _ods_ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["sym_name"] = value

    @builtins.property
    def identity(self):
        if "identity" not in self.operation.attributes:
            return None
        return _ods_ir.StringAttr(self.operation.attributes["identity"])

    @identity.setter
    def identity(self, value):
        if value is not None:
            self.operation.attributes["identity"] = value
        elif "identity" in self.operation.attributes:
            del self.operation.attributes["identity"]

    @identity.deleter
    def identity(self):
        del self.operation.attributes["identity"]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class TruncOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.trunc"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class UDivOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.udiv"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class UIToFPOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.uitofp"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class URemOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.urem"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class UndefOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.mlir.undef"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class UnreachableOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.unreachable"

    _ODS_REGIONS = (0, True)

    def __init__(self, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
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


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class XOrOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.xor"

    _ODS_REGIONS = (0, True)

    def __init__(self, lhs, rhs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(lhs))
        operands.append(get_op_result_or_value(rhs))
        _ods_context = get_default_loc_context(loc)
        results.extend([operands[0].type] * 1)
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
    def lhs(self):
        return self.operation.operands[0]

    @builtins.property
    def rhs(self):
        return self.operation.operands[1]

    @builtins.property
    def res(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ZExtOp(_ods_ir.OpView):
    OPERATION_NAME = "llvm.zext"

    _ODS_REGIONS = (0, True)

    def __init__(self, res, arg, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(arg))
        _ods_context = get_default_loc_context(loc)
        results.append(res)
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
    def arg(self):
        return self.operation.operands[0]

    @builtins.property
    def res(self):
        return self.operation.results[0]
