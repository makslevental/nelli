from .._mlir.dialects._ods_common import (
  _cext,
  get_default_loc_context,
)
from .._mlir.dialects._ods_common import (
  extend_opview_class,
  get_op_result_or_value,
  get_op_results_or_values,
)
from .._mlir.dialects._transform_ops_gen import _Dialect

_ods_ir = _cext.ir

_ods_ext_module = None

import builtins

@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class CreateAsyncGroupsOp(_ods_ir.OpView):
  OPERATION_NAME = "transform.create_async_groups"

  _ODS_REGIONS = (0, True)

  def __init__(self, target, use_mma_sync, *, loc=None, ip=None):
    operands = []
    results = []
    attributes = {}
    regions = None
    operands.append(get_op_result_or_value(target))
    _ods_context = get_default_loc_context(loc)
    attributes["use_mma_sync"] = (use_mma_sync if (
    issubclass(type(use_mma_sync), _ods_ir.Attribute) or
    not _ods_ir.AttrBuilder.contains('BoolAttr')) else
      _ods_ir.AttrBuilder.get('BoolAttr')(use_mma_sync, context=_ods_context))
    _ods_successors = None
    super().__init__(self.build_generic(
      attributes=attributes, results=results, operands=operands,
      successors=_ods_successors, regions=regions, loc=loc, ip=ip))

  @builtins.property
  def target(self):
    return self.operation.operands[0]

  @builtins.property
  def use_mma_sync(self):
    return _ods_ir.BoolAttr(self.operation.attributes["use_mma_sync"])

  @use_mma_sync.setter
  def use_mma_sync(self, value):
    if value is None:
      raise ValueError("'None' not allowed as value for mandatory attributes")
    self.operation.attributes["use_mma_sync"] = value

@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class LayoutAnalysisAndDistributionOp(_ods_ir.OpView):
  OPERATION_NAME = "transform.layout_analysis_and_distribution"

  _ODS_REGIONS = (0, True)

  def __init__(self, result, target, *, loc=None, ip=None):
    operands = []
    results = []
    attributes = {}
    regions = None
    operands.append(get_op_result_or_value(target))
    _ods_context = get_default_loc_context(loc)
    results.extend(result)
    _ods_successors = None
    super().__init__(self.build_generic(
      attributes=attributes, results=results, operands=operands,
      successors=_ods_successors, regions=regions, loc=loc, ip=ip))

  @builtins.property
  def target(self):
    return self.operation.operands[0]

  @builtins.property
  def result(self):
    _ods_variadic_group_length = len(self.operation.results) - 1 + 1
    return self.operation.results[0:0 + _ods_variadic_group_length]

@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class PromoteOperandsOp(_ods_ir.OpView):
  OPERATION_NAME = "transform.promote_operands"

  _ODS_REGIONS = (0, True)

  def __init__(self, result, target, *, indices=None, loc=None, ip=None):
    operands = []
    results = []
    attributes = {}
    regions = None
    operands.append(get_op_result_or_value(target))
    _ods_context = get_default_loc_context(loc)
    if indices is not None: attributes["indices"] = (indices if (
        issubclass(type(indices), _ods_ir.Attribute) or
        not _ods_ir.AttrBuilder.contains('DenseI64ArrayAttr')) else
          _ods_ir.AttrBuilder.get('DenseI64ArrayAttr')(indices, context=_ods_context))
    results.extend(result)
    _ods_successors = None
    super().__init__(self.build_generic(
      attributes=attributes, results=results, operands=operands,
      successors=_ods_successors, regions=regions, loc=loc, ip=ip))

  @builtins.property
  def target(self):
    return self.operation.operands[0]

  @builtins.property
  def result(self):
    _ods_variadic_group_length = len(self.operation.results) - 1 + 1
    return self.operation.results[0:0 + _ods_variadic_group_length]

@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class VectorToMMAConversionOp(_ods_ir.OpView):
  OPERATION_NAME = "transform.vector.vector_to_mma_conversion"

  _ODS_REGIONS = (0, True)

  def __init__(self, target, *, use_mma_sync=None, use_wmma=None, loc=None, ip=None):
    operands = []
    results = []
    attributes = {}
    regions = None
    operands.append(get_op_result_or_value(target))
    _ods_context = get_default_loc_context(loc)
    if bool(use_mma_sync): attributes["use_mma_sync"] = _ods_ir.UnitAttr.get(
      get_default_loc_context(loc))
    if bool(use_wmma): attributes["use_wmma"] = _ods_ir.UnitAttr.get(
      get_default_loc_context(loc))
    _ods_successors = None
    super().__init__(self.build_generic(
      attributes=attributes, results=results, operands=operands,
      successors=_ods_successors, regions=regions, loc=loc, ip=ip))

  @builtins.property
  def target(self):
    return self.operation.operands[0]

  @builtins.property
  def use_mma_sync(self):
    return "use_mma_sync" in self.operation.attributes

  @use_mma_sync.setter
  def use_mma_sync(self, value):
    if bool(value):
      self.operation.attributes["use_mma_sync"] = _ods_ir.UnitAttr.get()
    elif "use_mma_sync" in self.operation.attributes:
      del self.operation.attributes["use_mma_sync"]

  @use_mma_sync.deleter
  def use_mma_sync(self):
    del self.operation.attributes["use_mma_sync"]

  @builtins.property
  def use_wmma(self):
    return "use_wmma" in self.operation.attributes

  @use_wmma.setter
  def use_wmma(self, value):
    if bool(value):
      self.operation.attributes["use_wmma"] = _ods_ir.UnitAttr.get()
    elif "use_wmma" in self.operation.attributes:
      del self.operation.attributes["use_wmma"]

  @use_wmma.deleter
  def use_wmma(self):
    del self.operation.attributes["use_wmma"]

@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class VectorToWarpExecuteOnLane0Op(_ods_ir.OpView):
  OPERATION_NAME = "transform.vector.to_warp_execute_on_lane_0"

  _ODS_REGIONS = (0, True)

  def __init__(self, result, target, *, warp_size=None, loc=None, ip=None):
    operands = []
    results = []
    attributes = {}
    regions = None
    operands.append(get_op_result_or_value(target))
    _ods_context = get_default_loc_context(loc)
    if warp_size is not None: attributes["warp_size"] = (warp_size if (
        issubclass(type(warp_size), _ods_ir.Attribute) or
        not _ods_ir.AttrBuilder.contains('I64Attr')) else
          _ods_ir.AttrBuilder.get('I64Attr')(warp_size, context=_ods_context))
    results.append(result)
    _ods_successors = None
    super().__init__(self.build_generic(
      attributes=attributes, results=results, operands=operands,
      successors=_ods_successors, regions=regions, loc=loc, ip=ip))

  @builtins.property
  def target(self):
    return self.operation.operands[0]

  @builtins.property
  def warp_size(self):
    return _ods_ir.IntegerAttr(self.operation.attributes["warp_size"])

  @warp_size.setter
  def warp_size(self, value):
    if value is None:
      raise ValueError("'None' not allowed as value for mandatory attributes")
    self.operation.attributes["warp_size"] = value

  @builtins.property
  def result(self):
    return self.operation.results[0]

@_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class VectorWarpDistributionOp(_ods_ir.OpView):
  OPERATION_NAME = "transform.vector.warp_distribute"

  _ODS_REGIONS = (0, True)

  @builtins.property
  def target(self):
    return self.operation.operands[0]
