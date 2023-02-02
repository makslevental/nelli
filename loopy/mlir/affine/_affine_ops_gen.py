from ...loopy_mlir.dialects._ods_common import _cext as _ods_cext
from ...loopy_mlir.dialects._ods_common import (
    extend_opview_class,
    get_op_result_or_value,
    get_op_results_or_values,
)

_ods_ir = _ods_cext.ir

_ods_ext_module = None

import builtins


@_ods_cext.register_dialect
class _Dialect(_ods_ir.Dialect):
    DIALECT_NAMESPACE = "affine"
    pass


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineApplyOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.apply"

    _ODS_REGIONS = (0, True)

    def __init__(self, result, map, mapOperands, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(mapOperands))
        attributes["map"] = map
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
    def mapOperands(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]


# @_ods_cext.register_operation(_Dialect)
# @extend_opview_class(_ods_ext_module)
class AffineForOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.for"

    _ODS_REGIONS = (1, True)

    @builtins.property
    def results_(self):
        _ods_variadic_group_length = len(self.operation.results) - 1 + 1
        return self.operation.results[0 : 0 + _ods_variadic_group_length]

    @builtins.property
    def region(self):
        return self.regions[0]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineIfOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.if"

    _ODS_REGIONS = (2, True)

    @builtins.property
    def results_(self):
        _ods_variadic_group_length = len(self.operation.results) - 1 + 1
        return self.operation.results[0 : 0 + _ods_variadic_group_length]

    @builtins.property
    def thenRegion(self):
        return self.regions[0]

    @builtins.property
    def elseRegion(self):
        return self.regions[1]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineLoadOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.load"

    _ODS_REGIONS = (0, True)

    def __init__(self, result, memref, indices, map, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {"map": map}
        regions = None
        operands.append(get_op_result_or_value(memref))
        operands.extend(get_op_results_or_values(indices))
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
    def memref(self):
        return self.operation.operands[0]

    @builtins.property
    def indices(self):
        _ods_variadic_group_length = len(self.operation.operands) - 2 + 1
        return self.operation.operands[1 : 1 + _ods_variadic_group_length]

    @builtins.property
    def result(self):
        return self.operation.results[0]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineMaxOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.max"

    _ODS_REGIONS = (0, True)

    def __init__(self, result, map, operands_, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(operands_))
        attributes["map"] = map
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
    def operands_(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineMinOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.min"

    _ODS_REGIONS = (0, True)

    def __init__(self, result, map, operands_, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(operands_))
        attributes["map"] = map
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
    def operands_(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineParallelOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.parallel"

    _ODS_REGIONS = (1, True)

    def __init__(
        self,
        results_,
        reductions,
        lowerBoundsMap,
        lowerBoundsGroups,
        upperBoundsMap,
        upperBoundsGroups,
        steps,
        mapOperands,
        *,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(mapOperands))
        attributes["reductions"] = reductions
        attributes["lowerBoundsMap"] = lowerBoundsMap
        attributes["lowerBoundsGroups"] = lowerBoundsGroups
        attributes["upperBoundsMap"] = upperBoundsMap
        attributes["upperBoundsGroups"] = upperBoundsGroups
        attributes["steps"] = steps
        results.extend(results_)
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
    def mapOperands(self):
        _ods_variadic_group_length = len(self.operation.operands) - 1 + 1
        return self.operation.operands[0 : 0 + _ods_variadic_group_length]

    @builtins.property
    def lowerBoundsGroups(self):
        return _ods_ir.DenseIntElementsAttr(
            self.operation.attributes["lowerBoundsGroups"]
        )

    @lowerBoundsGroups.setter
    def lowerBoundsGroups(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["lowerBoundsGroups"] = value

    @builtins.property
    def upperBoundsGroups(self):
        return _ods_ir.DenseIntElementsAttr(
            self.operation.attributes["upperBoundsGroups"]
        )

    @upperBoundsGroups.setter
    def upperBoundsGroups(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["upperBoundsGroups"] = value

    @builtins.property
    def results_(self):
        _ods_variadic_group_length = len(self.operation.results) - 1 + 1
        return self.operation.results[0 : 0 + _ods_variadic_group_length]

    @builtins.property
    def region(self):
        return self.regions[0]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffinePrefetchOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.prefetch"

    _ODS_REGIONS = (0, True)

    def __init__(
        self, memref, indices, isWrite, localityHint, isDataCache, *, loc=None, ip=None
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(memref))
        operands.extend(get_op_results_or_values(indices))
        attributes["isWrite"] = isWrite
        attributes["localityHint"] = localityHint
        attributes["isDataCache"] = isDataCache
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
    def memref(self):
        return self.operation.operands[0]

    @builtins.property
    def indices(self):
        _ods_variadic_group_length = len(self.operation.operands) - 2 + 1
        return self.operation.operands[1 : 1 + _ods_variadic_group_length]

    @builtins.property
    def isWrite(self):
        return _ods_ir.BoolAttr(self.operation.attributes["isWrite"])

    @isWrite.setter
    def isWrite(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["isWrite"] = value

    @builtins.property
    def localityHint(self):
        return _ods_ir.IntegerAttr(self.operation.attributes["localityHint"])

    @localityHint.setter
    def localityHint(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["localityHint"] = value

    @builtins.property
    def isDataCache(self):
        return _ods_ir.BoolAttr(self.operation.attributes["isDataCache"])

    @isDataCache.setter
    def isDataCache(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["isDataCache"] = value


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineStoreOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.store"

    _ODS_REGIONS = (0, True)

    @builtins.property
    def value(self):
        return self.operation.operands[0]

    @builtins.property
    def memref(self):
        return self.operation.operands[1]

    @builtins.property
    def indices(self):
        _ods_variadic_group_length = len(self.operation.operands) - 3 + 1
        return self.operation.operands[2 : 2 + _ods_variadic_group_length]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineVectorLoadOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.vector_load"

    _ODS_REGIONS = (0, True)

    def __init__(self, result, memref, indices, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(memref))
        operands.extend(get_op_results_or_values(indices))
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
    def memref(self):
        return self.operation.operands[0]

    @builtins.property
    def indices(self):
        _ods_variadic_group_length = len(self.operation.operands) - 2 + 1
        return self.operation.operands[1 : 1 + _ods_variadic_group_length]

    @builtins.property
    def result(self):
        return self.operation.results[0]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineVectorStoreOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.vector_store"

    _ODS_REGIONS = (0, True)

    @builtins.property
    def value(self):
        return self.operation.operands[0]

    @builtins.property
    def memref(self):
        return self.operation.operands[1]

    @builtins.property
    def indices(self):
        _ods_variadic_group_length = len(self.operation.operands) - 3 + 1
        return self.operation.operands[2 : 2 + _ods_variadic_group_length]


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class AffineYieldOp(_ods_ir.OpView):
    OPERATION_NAME = "affine.yield"

    _ODS_REGIONS = (0, True)

    def __init__(self, operands_, *, loc=None, ip=None):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.extend(get_op_results_or_values(operands_))
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
