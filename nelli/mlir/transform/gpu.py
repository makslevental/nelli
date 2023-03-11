from .._mlir.dialects._ods_common import (
    _cext as _ods_cext,
    get_default_loc_context,
)
from .._mlir.dialects._ods_common import (
    extend_opview_class,
    get_op_result_or_value,
    get_op_results_or_values,
)
from .._mlir.dialects._transform_ops_gen import _Dialect

_ods_ir = _ods_cext.ir

_ods_ext_module = None

import builtins


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class MapForeachToBlocks(_ods_ir.OpView):
    OPERATION_NAME = "transform.gpu.map_foreach_to_blocks"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        result,
        target,
        *,
        gridDim=None,
        generate_gpu_launch=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(target))
        _ods_context = get_default_loc_context(loc)
        if gridDim is not None:
            attributes["gridDim"] = (
                gridDim
                if (
                    issubclass(type(gridDim), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64ArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("I64ArrayAttr")(
                    gridDim, context=_ods_context
                )
            )
        if bool(generate_gpu_launch):
            attributes["generate_gpu_launch"] = _ods_ir.UnitAttr.get(
                get_default_loc_context(loc)
            )
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
    def target(self):
        return self.operation.operands[0]

    @builtins.property
    def generate_gpu_launch(self):
        return "generate_gpu_launch" in self.operation.attributes

    @generate_gpu_launch.setter
    def generate_gpu_launch(self, value):
        if bool(value):
            self.operation.attributes["generate_gpu_launch"] = _ods_ir.UnitAttr.get()
        elif "generate_gpu_launch" in self.operation.attributes:
            del self.operation.attributes["generate_gpu_launch"]

    @generate_gpu_launch.deleter
    def generate_gpu_launch(self):
        del self.operation.attributes["generate_gpu_launch"]

    @builtins.property
    def result(self):
        return self.operation.results[0]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class MapNestedForeachToThreads(_ods_ir.OpView):
    OPERATION_NAME = "transform.gpu.map_nested_foreach_to_threads"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        result,
        target,
        *,
        blockDim=None,
        syncAfterDistribute=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(target))
        _ods_context = get_default_loc_context(loc)
        if blockDim is not None:
            attributes["blockDim"] = (
                blockDim
                if (
                    issubclass(type(blockDim), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("I64ArrayAttr")
                )
                else _ods_ir.AttrBuilder.get("I64ArrayAttr")(
                    blockDim, context=_ods_context
                )
            )
        if syncAfterDistribute is not None:
            attributes["syncAfterDistribute"] = (
                syncAfterDistribute
                if (
                    issubclass(type(syncAfterDistribute), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    syncAfterDistribute, context=_ods_context
                )
            )
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
    def target(self):
        return self.operation.operands[0]

    @builtins.property
    def syncAfterDistribute(self):
        return _ods_ir.BoolAttr(self.operation.attributes["syncAfterDistribute"])

    @syncAfterDistribute.setter
    def syncAfterDistribute(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["syncAfterDistribute"] = value

    @builtins.property
    def result(self):
        return self.operation.results[0]
