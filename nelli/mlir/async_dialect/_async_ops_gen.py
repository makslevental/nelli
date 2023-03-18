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
    DIALECT_NAMESPACE = "async"
    pass


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AddToGroupOp(_ods_ir.OpView):
    OPERATION_NAME = "async.add_to_group"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, group, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
        operands.append(get_op_result_or_value(group))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(AddToGroupOp).inferReturnTypes(
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
    def operand(self):
        return self.operation.operands[0]

    @builtins.property
    def group(self):
        return self.operation.operands[1]

    @builtins.property
    def rank(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AwaitAllOp(_ods_ir.OpView):
    OPERATION_NAME = "async.await_all"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
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
    def operand(self):
        return self.operation.operands[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AwaitOp(_ods_ir.OpView):
    OPERATION_NAME = "async.await"

    _ODS_REGIONS = (0, True)

    @builtins.property
    def operand(self):
        return self.operation.operands[0]

    @builtins.property
    def result(self):
        return None if len(self.operation.results) < 1 else self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CallOp(_ods_ir.OpView):
    OPERATION_NAME = "async.call"

    _ODS_REGIONS = (0, True)

    def __init__(self, result, callee, operands_, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(operands_))
        _ods_context = get_default_loc_context(loc)
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
        results.extend(result)
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


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CoroBeginOp(_ods_ir.OpView):
    OPERATION_NAME = "async.coro.begin"

    _ODS_REGIONS = (0, True)

    def __init__(self, id, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(id))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(CoroBeginOp).inferReturnTypes(
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
    def id(self):
        return self.operation.operands[0]

    @builtins.property
    def handle(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CoroEndOp(_ods_ir.OpView):
    OPERATION_NAME = "async.coro.end"

    _ODS_REGIONS = (0, True)

    def __init__(self, handle, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(handle))
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
    def handle(self):
        return self.operation.operands[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CoroFreeOp(_ods_ir.OpView):
    OPERATION_NAME = "async.coro.free"

    _ODS_REGIONS = (0, True)

    def __init__(self, id, handle, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(id))
        operands.append(get_op_result_or_value(handle))
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
    def id(self):
        return self.operation.operands[0]

    @builtins.property
    def handle(self):
        return self.operation.operands[1]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CoroIdOp(_ods_ir.OpView):
    OPERATION_NAME = "async.coro.id"

    _ODS_REGIONS = (0, True)

    def __init__(self, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(CoroIdOp).inferReturnTypes(
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
    def id(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CoroSaveOp(_ods_ir.OpView):
    OPERATION_NAME = "async.coro.save"

    _ODS_REGIONS = (0, True)

    def __init__(self, handle, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(handle))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(CoroSaveOp).inferReturnTypes(
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
    def handle(self):
        return self.operation.operands[0]

    @builtins.property
    def state(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CoroSuspendOp(_ods_ir.OpView):
    OPERATION_NAME = "async.coro.suspend"

    _ODS_REGIONS = (0, True)

    def __init__(
        self, state, suspendDest, resumeDest, cleanupDest, *, loc=None, ip=None
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(state))
        _ods_context = get_default_loc_context(loc)
        _ods_successors = []
        _ods_successors.append(suspendDest)
        _ods_successors.append(resumeDest)
        _ods_successors.append(cleanupDest)
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
    def state(self):
        return self.operation.operands[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CreateGroupOp(_ods_ir.OpView):
    OPERATION_NAME = "async.create_group"

    _ODS_REGIONS = (0, True)

    def __init__(self, size, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(size))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(CreateGroupOp).inferReturnTypes(
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
    def size(self):
        return self.operation.operands[0]

    @builtins.property
    def result(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ExecuteOp(_ods_ir.OpView):
    OPERATION_NAME = "async.execute"

    _ODS_OPERAND_SEGMENTS = [
        -1,
        -1,
    ]

    _ODS_REGIONS = (1, True)

    @builtins.property
    def dependencies(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            0,
        )
        return operand_range

    @builtins.property
    def bodyOperands(self):
        operand_range = segmented_accessor(
            self.operation.operands,
            self.operation.attributes["operand_segment_sizes"],
            1,
        )
        return operand_range

    @builtins.property
    def token(self):
        return self.operation.results[0]

    @builtins.property
    def bodyResults(self):
        _ods_variadic_group_length = len(self.operation.results) - 2 + 1
        return self.operation.results[1 : 1 + _ods_variadic_group_length]

    @builtins.property
    def bodyRegion(self):
        return self.regions[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class FuncOp(_ods_ir.OpView):
    OPERATION_NAME = "async.func"

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        sym_name,
        function_type,
        *,
        sym_visibility=None,
        arg_attrs=None,
        res_attrs=None,
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
        attributes["function_type"] = (
            function_type
            if (
                issubclass(type(function_type), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("anonymous_399")
            )
            else _ods_ir.AttrBuilder.get("anonymous_399")(
                function_type, context=_ods_context
            )
        )
        if sym_visibility is not None:
            attributes["sym_visibility"] = (
                sym_visibility
                if (
                    issubclass(type(sym_visibility), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("StrAttr")
                )
                else _ods_ir.AttrBuilder.get("StrAttr")(
                    sym_visibility, context=_ods_context
                )
            )
        if arg_attrs is not None:
            attributes["arg_attrs"] = (
                arg_attrs
                if (
                    issubclass(type(arg_attrs), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("DictArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("DictArrayAttr")(
                    arg_attrs, context=_ods_context
                )
            )
        if res_attrs is not None:
            attributes["res_attrs"] = (
                res_attrs
                if (
                    issubclass(type(res_attrs), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("DictArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("DictArrayAttr")(
                    res_attrs, context=_ods_context
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
    def sym_visibility(self):
        if "sym_visibility" not in self.operation.attributes:
            return None
        return _ods_ir.StringAttr(self.operation.attributes["sym_visibility"])

    @sym_visibility.setter
    def sym_visibility(self, value):
        if value is not None:
            self.operation.attributes["sym_visibility"] = value
        elif "sym_visibility" in self.operation.attributes:
            del self.operation.attributes["sym_visibility"]

    @sym_visibility.deleter
    def sym_visibility(self):
        del self.operation.attributes["sym_visibility"]

    @builtins.property
    def body(self):
        return self.regions[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class ReturnOp(_ods_ir.OpView):
    OPERATION_NAME = "async.return"

    _ODS_REGIONS = (0, True)

    def __init__(self, operands_, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(operands_))
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
    def operands_(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeAddRefOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.add_ref"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, count, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
        _ods_context = get_default_loc_context(loc)
        attributes["count"] = (
            count
            if (
                issubclass(type(count), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("I64Attr")
            )
            else _ods_ir.AttrBuilder.get("I64Attr")(count, context=_ods_context)
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
    def operand(self):
        return self.operation.operands[0]

    @builtins.property
    def count(self):
        return _ods_ir.IntegerAttr(self.operation.attributes["count"])

    @count.setter
    def count(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["count"] = value


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeAddToGroupOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.add_to_group"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, group, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
        operands.append(get_op_result_or_value(group))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(RuntimeAddToGroupOp).inferReturnTypes(
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
    def operand(self):
        return self.operation.operands[0]

    @builtins.property
    def group(self):
        return self.operation.operands[1]

    @builtins.property
    def rank(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeAwaitAndResumeOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.await_and_resume"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, handle, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
        operands.append(get_op_result_or_value(handle))
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
    def operand(self):
        return self.operation.operands[0]

    @builtins.property
    def handle(self):
        return self.operation.operands[1]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeAwaitOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.await"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
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
    def operand(self):
        return self.operation.operands[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeCreateGroupOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.create_group"

    _ODS_REGIONS = (0, True)

    def __init__(self, size, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(size))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(RuntimeCreateGroupOp).inferReturnTypes(
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
    def size(self):
        return self.operation.operands[0]

    @builtins.property
    def result(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeCreateOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.create"

    _ODS_REGIONS = (0, True)

    def __init__(self, result, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
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
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeDropRefOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.drop_ref"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, count, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
        _ods_context = get_default_loc_context(loc)
        attributes["count"] = (
            count
            if (
                issubclass(type(count), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("I64Attr")
            )
            else _ods_ir.AttrBuilder.get("I64Attr")(count, context=_ods_context)
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
    def operand(self):
        return self.operation.operands[0]

    @builtins.property
    def count(self):
        return _ods_ir.IntegerAttr(self.operation.attributes["count"])

    @count.setter
    def count(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["count"] = value


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeIsErrorOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.is_error"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(RuntimeIsErrorOp).inferReturnTypes(
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
    def operand(self):
        return self.operation.operands[0]

    @builtins.property
    def is_error(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeLoadOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.load"

    _ODS_REGIONS = (0, True)

    def __init__(self, storage, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(storage))
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(RuntimeLoadOp).inferReturnTypes(
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
    def storage(self):
        return self.operation.operands[0]

    @builtins.property
    def result(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeNumWorkerThreadsOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.num_worker_threads"

    _ODS_REGIONS = (0, True)

    def __init__(self, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        results = _ods_ir.InferTypeOpInterface(
            RuntimeNumWorkerThreadsOp
        ).inferReturnTypes(
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
    def result(self):
        return self.operation.results[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeResumeOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.resume"

    _ODS_REGIONS = (0, True)

    def __init__(self, handle, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(handle))
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
    def handle(self):
        return self.operation.operands[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeSetAvailableOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.set_available"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
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
    def operand(self):
        return self.operation.operands[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeSetErrorOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.set_error"

    _ODS_REGIONS = (0, True)

    def __init__(self, operand, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(operand))
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
    def operand(self):
        return self.operation.operands[0]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class RuntimeStoreOp(_ods_ir.OpView):
    OPERATION_NAME = "async.runtime.store"

    _ODS_REGIONS = (0, True)

    def __init__(self, value, storage, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(value))
        operands.append(get_op_result_or_value(storage))
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

    @builtins.property
    def storage(self):
        return self.operation.operands[1]


@cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class YieldOp(_ods_ir.OpView):
    OPERATION_NAME = "async.yield"

    _ODS_REGIONS = (0, True)

    def __init__(self, operands_, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(operands_))
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
    def operands_(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]
