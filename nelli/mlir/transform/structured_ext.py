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


from .._mlir.dialects._transform_ops_gen import _Dialect


cext.register_operation(_Dialect)
extend_opview_class(_ods_ext_module)


class EmitRemarkOp(_ods_ir.OpView):
    OPERATION_NAME = "transform.emit_remark"

    _ODS_REGIONS = (0, True)

    def __init__(self, handle, message, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(handle))
        _ods_context = get_default_loc_context(loc)
        attributes["message"] = (
            message
            if (
                issubclass(type(message), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("StrAttr")
            )
            else _ods_ir.AttrBuilder.get("StrAttr")(message, context=_ods_context)
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
    def message(self):
        return _ods_ir.StringAttr(self.operation.attributes["message"])

    @message.setter
    def message(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["message"] = value


cext.register_operation(_Dialect)
extend_opview_class(_ods_ext_module)


class LowerToLLVMOp(_ods_ir.OpView):
    OPERATION_NAME = "transform.lower_to_llvm"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        *,
        reassociate_fp_reductions=None,
        enable_index_optimizations=None,
        enable_arm_neon=None,
        enable_arm_sve=None,
        enable_amx=None,
        enable_x86vector=None,
        enable_async=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        if reassociate_fp_reductions is not None:
            attributes["reassociate_fp_reductions"] = (
                reassociate_fp_reductions
                if (
                    issubclass(type(reassociate_fp_reductions), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    reassociate_fp_reductions, context=_ods_context
                )
            )
        if enable_index_optimizations is not None:
            attributes["enable_index_optimizations"] = (
                enable_index_optimizations
                if (
                    issubclass(type(enable_index_optimizations), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    enable_index_optimizations, context=_ods_context
                )
            )
        if enable_arm_neon is not None:
            attributes["enable_arm_neon"] = (
                enable_arm_neon
                if (
                    issubclass(type(enable_arm_neon), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    enable_arm_neon, context=_ods_context
                )
            )
        if enable_arm_sve is not None:
            attributes["enable_arm_sve"] = (
                enable_arm_sve
                if (
                    issubclass(type(enable_arm_sve), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    enable_arm_sve, context=_ods_context
                )
            )
        if enable_amx is not None:
            attributes["enable_amx"] = (
                enable_amx
                if (
                    issubclass(type(enable_amx), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    enable_amx, context=_ods_context
                )
            )
        if enable_x86vector is not None:
            attributes["enable_x86vector"] = (
                enable_x86vector
                if (
                    issubclass(type(enable_x86vector), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    enable_x86vector, context=_ods_context
                )
            )
        if enable_async is not None:
            attributes["enable_async"] = (
                enable_async
                if (
                    issubclass(type(enable_async), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    enable_async, context=_ods_context
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
    def reassociate_fp_reductions(self):
        return _ods_ir.BoolAttr(self.operation.attributes["reassociate_fp_reductions"])

    @reassociate_fp_reductions.setter
    def reassociate_fp_reductions(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["reassociate_fp_reductions"] = value

    @builtins.property
    def enable_index_optimizations(self):
        return _ods_ir.BoolAttr(self.operation.attributes["enable_index_optimizations"])

    @enable_index_optimizations.setter
    def enable_index_optimizations(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["enable_index_optimizations"] = value

    @builtins.property
    def enable_arm_neon(self):
        return _ods_ir.BoolAttr(self.operation.attributes["enable_arm_neon"])

    @enable_arm_neon.setter
    def enable_arm_neon(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["enable_arm_neon"] = value

    @builtins.property
    def enable_arm_sve(self):
        return _ods_ir.BoolAttr(self.operation.attributes["enable_arm_sve"])

    @enable_arm_sve.setter
    def enable_arm_sve(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["enable_arm_sve"] = value

    @builtins.property
    def enable_amx(self):
        return _ods_ir.BoolAttr(self.operation.attributes["enable_amx"])

    @enable_amx.setter
    def enable_amx(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["enable_amx"] = value

    @builtins.property
    def enable_x86vector(self):
        return _ods_ir.BoolAttr(self.operation.attributes["enable_x86vector"])

    @enable_x86vector.setter
    def enable_x86vector(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["enable_x86vector"] = value

    @builtins.property
    def enable_async(self):
        return _ods_ir.BoolAttr(self.operation.attributes["enable_async"])

    @enable_async.setter
    def enable_async(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["enable_async"] = value


cext.register_operation(_Dialect)
extend_opview_class(_ods_ext_module)


class MatchCallbackOp(_ods_ir.OpView):
    OPERATION_NAME = "transform.match_callback"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        outputs,
        callback_name,
        failure_propagation_mode,
        inputs,
        *,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(inputs))
        _ods_context = get_default_loc_context(loc)
        attributes["callback_name"] = (
            callback_name
            if (
                issubclass(type(callback_name), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("StrAttr")
            )
            else _ods_ir.AttrBuilder.get("StrAttr")(callback_name, context=_ods_context)
        )
        attributes["failure_propagation_mode"] = (
            failure_propagation_mode
            if (
                issubclass(type(failure_propagation_mode), _ods_ir.Attribute)
                or not _ods_ir.AttrBuilder.contains("FailurePropagationMode")
            )
            else _ods_ir.AttrBuilder.get("FailurePropagationMode")(
                failure_propagation_mode, context=_ods_context
            )
        )
        results.extend(outputs)
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
    def inputs(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]

    @builtins.property
    def callback_name(self):
        return _ods_ir.StringAttr(self.operation.attributes["callback_name"])

    @callback_name.setter
    def callback_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["callback_name"] = value

    @builtins.property
    def outputs(self):
        _ods_variadic_group_length = len(self.operation.results) - 1 + 1
        return self.operation.results[0 : 0 + _ods_variadic_group_length]


cext.register_operation(_Dialect)
extend_opview_class(_ods_ext_module)


class RegisterMatchCallbacksOp(_ods_ir.OpView):
    OPERATION_NAME = "transform.register_match_callbacks"

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


cext.register_operation(_Dialect)
extend_opview_class(_ods_ext_module)


class TakeFirstOp(_ods_ir.OpView):
    OPERATION_NAME = "transform.take_first"

    _ODS_REGIONS = (0, True)

    def __init__(self, first, rest, inputs, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(inputs))
        _ods_context = get_default_loc_context(loc)
        results.append(first)
        results.append(rest)
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
    def inputs(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]

    @builtins.property
    def first(self):
        return self.operation.results[0]

    @builtins.property
    def rest(self):
        return self.operation.results[1]
