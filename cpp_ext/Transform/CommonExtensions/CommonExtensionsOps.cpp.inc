/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Op Definitions                                                             *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#ifdef GET_OP_LIST
#undef GET_OP_LIST

mlir::transform::ApplyBufferOptimizationsOp,
mlir::transform::ApplyPatternsOp,
mlir::transform::HoistStaticAllocOp,
mlir::transform::ShareForallOperandsOp,
mlir::transform::TransformBufferizeOp,
mlir::transform::TransformEliminateEmptyTensorsOp
#endif  // GET_OP_LIST

#ifdef GET_OP_CLASSES
#undef GET_OP_CLASSES


//===----------------------------------------------------------------------===//
// Local Utility Method Definitions
//===----------------------------------------------------------------------===//

namespace mlir {
namespace transform {

static ::mlir::LogicalResult __mlir_ods_local_type_constraint_CommonExtensionsOps0(
    ::mlir::Operation *op, ::mlir::Type type, ::llvm::StringRef valueKind,
    unsigned valueIndex) {
  if (!((type.isa<::mlir::transform::TransformHandleTypeInterface>()))) {
    return op->emitOpError(valueKind) << " #" << valueIndex
        << " must be TransformHandleTypeInterface instance, but got " << type;
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_attr_constraint_CommonExtensionsOps0(
    ::mlir::Operation *op, ::mlir::Attribute attr, ::llvm::StringRef attrName) {
  if (attr && !((attr.isa<::mlir::UnitAttr>()))) {
    return op->emitOpError("attribute '") << attrName
        << "' failed to satisfy constraint: unit attribute";
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_attr_constraint_CommonExtensionsOps1(
    ::mlir::Operation *op, ::mlir::Attribute attr, ::llvm::StringRef attrName) {
  if (attr && !((attr.isa<::mlir::DenseI64ArrayAttr>()))) {
    return op->emitOpError("attribute '") << attrName
        << "' failed to satisfy constraint: i64 dense array attribute";
  }
  return ::mlir::success();
}
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::ApplyBufferOptimizationsOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
ApplyBufferOptimizationsOpGenericAdaptorBase::ApplyBufferOptimizationsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.apply_buffer_optimizations", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> ApplyBufferOptimizationsOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr ApplyBufferOptimizationsOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

} // namespace detail
ApplyBufferOptimizationsOpAdaptor::ApplyBufferOptimizationsOpAdaptor(ApplyBufferOptimizationsOp op) : ApplyBufferOptimizationsOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult ApplyBufferOptimizationsOpAdaptor::verify(::mlir::Location loc) {
  return ::mlir::success();
}

std::pair<unsigned, unsigned> ApplyBufferOptimizationsOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range ApplyBufferOptimizationsOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> ApplyBufferOptimizationsOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange ApplyBufferOptimizationsOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> ApplyBufferOptimizationsOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range ApplyBufferOptimizationsOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::LogicalResult ApplyBufferOptimizationsOp::verifyInvariantsImpl() {
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_CommonExtensionsOps0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult ApplyBufferOptimizationsOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult ApplyBufferOptimizationsOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::OpAsmParser::UnresolvedOperand targetRawOperands[1];
  ::llvm::ArrayRef<::mlir::OpAsmParser::UnresolvedOperand> targetOperands(targetRawOperands);  ::llvm::SMLoc targetOperandsLoc;
  (void)targetOperandsLoc;
  ::llvm::ArrayRef<::mlir::Type> targetTypes;
  ::llvm::ArrayRef<::mlir::Type> allResultTypes;

  targetOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperand(targetRawOperands[0]))
    return ::mlir::failure();
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  if (parser.parseColon())
    return ::mlir::failure();

  ::mlir::FunctionType target__allResult_functionType;
  if (parser.parseType(target__allResult_functionType))
    return ::mlir::failure();
  targetTypes = target__allResult_functionType.getInputs();
  allResultTypes = target__allResult_functionType.getResults();
  result.addTypes(allResultTypes);
  if (parser.resolveOperands(targetOperands, targetTypes, targetOperandsLoc, result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void ApplyBufferOptimizationsOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ';
  _odsPrinter << getTarget();
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(::llvm::ArrayRef<::mlir::Type>(getTarget().getType()), getOperation()->getResultTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::ApplyBufferOptimizationsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::ApplyPatternsOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
ApplyPatternsOpGenericAdaptorBase::ApplyPatternsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.apply_patterns", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> ApplyPatternsOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr ApplyPatternsOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getAdditionalPatternsAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getAdditionalPatternsAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getAdditionalPatterns() {
  auto attr = getAdditionalPatternsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getBubbleCollapseAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getBubbleCollapseAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getBubbleCollapse() {
  auto attr = getBubbleCollapseAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getBubbleExpandAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getBubbleExpandAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getBubbleExpand() {
  auto attr = getBubbleExpandAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getBubblePackUnPackAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getBubblePackUnPackAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getBubblePackUnPack() {
  auto attr = getBubblePackUnPackAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getCanonicalizationAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getCanonicalizationAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getCanonicalization() {
  auto attr = getCanonicalizationAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getCseAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getCseAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getCse() {
  auto attr = getCseAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getEraseUnnecessaryTensorOperandsAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getEraseUnnecessaryTensorOperandsAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getEraseUnnecessaryTensorOperands() {
  auto attr = getEraseUnnecessaryTensorOperandsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getExpandMemrefStridedMetadataAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getExpandMemrefStridedMetadataAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getExpandMemrefStridedMetadata() {
  auto attr = getExpandMemrefStridedMetadataAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getFoldMemrefAliasesAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getFoldMemrefAliasesAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getFoldMemrefAliases() {
  auto attr = getFoldMemrefAliasesAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getFoldReassociativeReshapesAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getFoldReassociativeReshapesAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getFoldReassociativeReshapes() {
  auto attr = getFoldReassociativeReshapesAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getFoldTensorEmptyExtractAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getFoldTensorEmptyExtractAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getFoldTensorEmptyExtract() {
  auto attr = getFoldTensorEmptyExtractAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getLicmAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getLicmAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getLicm() {
  auto attr = getLicmAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getLinalgElementwiseGreedyFusionAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getLinalgElementwiseGreedyFusionAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getLinalgElementwiseGreedyFusion() {
  auto attr = getLinalgElementwiseGreedyFusionAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getLowerTransferOpPermutationsAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getLowerTransferOpPermutationsAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getLowerTransferOpPermutations() {
  auto attr = getLowerTransferOpPermutationsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getLowerVectorMasksAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getLowerVectorMasksAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getLowerVectorMasks() {
  auto attr = getLowerVectorMasksAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getRankReducingVectorAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getRankReducingVectorAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getRankReducingVector() {
  auto attr = getRankReducingVectorAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getSwapPaddingElideConditionalAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getSwapPaddingElideConditionalAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getSwapPaddingElideConditional() {
  auto attr = getSwapPaddingElideConditionalAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getSwappingPatternsAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getSwappingPatternsAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getSwappingPatterns() {
  auto attr = getSwappingPatternsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOpGenericAdaptorBase::getTilingCanonicalizationAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ApplyPatternsOp::getTilingCanonicalizationAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool ApplyPatternsOpGenericAdaptorBase::getTilingCanonicalization() {
  auto attr = getTilingCanonicalizationAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

} // namespace detail
ApplyPatternsOpAdaptor::ApplyPatternsOpAdaptor(ApplyPatternsOp op) : ApplyPatternsOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult ApplyPatternsOpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_additional_patterns;
  ::mlir::Attribute tblgen_bubble_collapse;
  ::mlir::Attribute tblgen_bubble_expand;
  ::mlir::Attribute tblgen_bubble_pack_un_pack;
  ::mlir::Attribute tblgen_canonicalization;
  ::mlir::Attribute tblgen_cse;
  ::mlir::Attribute tblgen_erase_unnecessary_tensor_operands;
  ::mlir::Attribute tblgen_expand_memref_strided_metadata;
  ::mlir::Attribute tblgen_fold_memref_aliases;
  ::mlir::Attribute tblgen_fold_reassociative_reshapes;
  ::mlir::Attribute tblgen_fold_tensor_empty_extract;
  ::mlir::Attribute tblgen_licm;
  ::mlir::Attribute tblgen_linalg_elementwise_greedy_fusion;
  ::mlir::Attribute tblgen_lower_transfer_op_permutations;
  ::mlir::Attribute tblgen_lower_vector_masks;
  ::mlir::Attribute tblgen_rank_reducing_vector;
  ::mlir::Attribute tblgen_swap_padding_elide_conditional;
  ::mlir::Attribute tblgen_swapping_patterns;
  ::mlir::Attribute tblgen_tiling_canonicalization;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getAdditionalPatternsAttrName(*odsOpName)) {
      tblgen_additional_patterns = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getBubbleCollapseAttrName(*odsOpName)) {
      tblgen_bubble_collapse = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getBubbleExpandAttrName(*odsOpName)) {
      tblgen_bubble_expand = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getBubblePackUnPackAttrName(*odsOpName)) {
      tblgen_bubble_pack_un_pack = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getCanonicalizationAttrName(*odsOpName)) {
      tblgen_canonicalization = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getCseAttrName(*odsOpName)) {
      tblgen_cse = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getEraseUnnecessaryTensorOperandsAttrName(*odsOpName)) {
      tblgen_erase_unnecessary_tensor_operands = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getExpandMemrefStridedMetadataAttrName(*odsOpName)) {
      tblgen_expand_memref_strided_metadata = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getFoldMemrefAliasesAttrName(*odsOpName)) {
      tblgen_fold_memref_aliases = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getFoldReassociativeReshapesAttrName(*odsOpName)) {
      tblgen_fold_reassociative_reshapes = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getFoldTensorEmptyExtractAttrName(*odsOpName)) {
      tblgen_fold_tensor_empty_extract = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getLicmAttrName(*odsOpName)) {
      tblgen_licm = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getLinalgElementwiseGreedyFusionAttrName(*odsOpName)) {
      tblgen_linalg_elementwise_greedy_fusion = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getLowerTransferOpPermutationsAttrName(*odsOpName)) {
      tblgen_lower_transfer_op_permutations = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getLowerVectorMasksAttrName(*odsOpName)) {
      tblgen_lower_vector_masks = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getRankReducingVectorAttrName(*odsOpName)) {
      tblgen_rank_reducing_vector = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getSwapPaddingElideConditionalAttrName(*odsOpName)) {
      tblgen_swap_padding_elide_conditional = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getSwappingPatternsAttrName(*odsOpName)) {
      tblgen_swapping_patterns = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == ApplyPatternsOp::getTilingCanonicalizationAttrName(*odsOpName)) {
      tblgen_tiling_canonicalization = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (tblgen_additional_patterns && !((tblgen_additional_patterns.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'additional_patterns' failed to satisfy constraint: unit attribute");

  if (tblgen_bubble_collapse && !((tblgen_bubble_collapse.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'bubble_collapse' failed to satisfy constraint: unit attribute");

  if (tblgen_bubble_expand && !((tblgen_bubble_expand.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'bubble_expand' failed to satisfy constraint: unit attribute");

  if (tblgen_bubble_pack_un_pack && !((tblgen_bubble_pack_un_pack.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'bubble_pack_un_pack' failed to satisfy constraint: unit attribute");

  if (tblgen_canonicalization && !((tblgen_canonicalization.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'canonicalization' failed to satisfy constraint: unit attribute");

  if (tblgen_cse && !((tblgen_cse.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'cse' failed to satisfy constraint: unit attribute");

  if (tblgen_erase_unnecessary_tensor_operands && !((tblgen_erase_unnecessary_tensor_operands.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'erase_unnecessary_tensor_operands' failed to satisfy constraint: unit attribute");

  if (tblgen_expand_memref_strided_metadata && !((tblgen_expand_memref_strided_metadata.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'expand_memref_strided_metadata' failed to satisfy constraint: unit attribute");

  if (tblgen_fold_memref_aliases && !((tblgen_fold_memref_aliases.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'fold_memref_aliases' failed to satisfy constraint: unit attribute");

  if (tblgen_fold_reassociative_reshapes && !((tblgen_fold_reassociative_reshapes.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'fold_reassociative_reshapes' failed to satisfy constraint: unit attribute");

  if (tblgen_fold_tensor_empty_extract && !((tblgen_fold_tensor_empty_extract.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'fold_tensor_empty_extract' failed to satisfy constraint: unit attribute");

  if (tblgen_licm && !((tblgen_licm.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'licm' failed to satisfy constraint: unit attribute");

  if (tblgen_linalg_elementwise_greedy_fusion && !((tblgen_linalg_elementwise_greedy_fusion.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'linalg_elementwise_greedy_fusion' failed to satisfy constraint: unit attribute");

  if (tblgen_lower_transfer_op_permutations && !((tblgen_lower_transfer_op_permutations.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'lower_transfer_op_permutations' failed to satisfy constraint: unit attribute");

  if (tblgen_lower_vector_masks && !((tblgen_lower_vector_masks.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'lower_vector_masks' failed to satisfy constraint: unit attribute");

  if (tblgen_rank_reducing_vector && !((tblgen_rank_reducing_vector.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'rank_reducing_vector' failed to satisfy constraint: unit attribute");

  if (tblgen_swap_padding_elide_conditional && !((tblgen_swap_padding_elide_conditional.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'swap_padding_elide_conditional' failed to satisfy constraint: unit attribute");

  if (tblgen_swapping_patterns && !((tblgen_swapping_patterns.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'swapping_patterns' failed to satisfy constraint: unit attribute");

  if (tblgen_tiling_canonicalization && !((tblgen_tiling_canonicalization.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.apply_patterns' op ""attribute 'tiling_canonicalization' failed to satisfy constraint: unit attribute");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> ApplyPatternsOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range ApplyPatternsOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> ApplyPatternsOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange ApplyPatternsOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> ApplyPatternsOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range ApplyPatternsOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::UnitAttr ApplyPatternsOp::getAdditionalPatternsAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getAdditionalPatternsAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getAdditionalPatterns() {
  auto attr = getAdditionalPatternsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getBubbleCollapseAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getBubbleCollapseAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getBubbleCollapse() {
  auto attr = getBubbleCollapseAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getBubbleExpandAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getBubbleExpandAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getBubbleExpand() {
  auto attr = getBubbleExpandAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getBubblePackUnPackAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getBubblePackUnPackAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getBubblePackUnPack() {
  auto attr = getBubblePackUnPackAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getCanonicalizationAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getCanonicalizationAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getCanonicalization() {
  auto attr = getCanonicalizationAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getCseAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getCseAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getCse() {
  auto attr = getCseAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getEraseUnnecessaryTensorOperandsAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getEraseUnnecessaryTensorOperandsAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getEraseUnnecessaryTensorOperands() {
  auto attr = getEraseUnnecessaryTensorOperandsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getExpandMemrefStridedMetadataAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getExpandMemrefStridedMetadataAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getExpandMemrefStridedMetadata() {
  auto attr = getExpandMemrefStridedMetadataAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getFoldMemrefAliasesAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getFoldMemrefAliasesAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getFoldMemrefAliases() {
  auto attr = getFoldMemrefAliasesAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getFoldReassociativeReshapesAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getFoldReassociativeReshapesAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getFoldReassociativeReshapes() {
  auto attr = getFoldReassociativeReshapesAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getFoldTensorEmptyExtractAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getFoldTensorEmptyExtractAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getFoldTensorEmptyExtract() {
  auto attr = getFoldTensorEmptyExtractAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getLicmAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getLicmAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getLicm() {
  auto attr = getLicmAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getLinalgElementwiseGreedyFusionAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getLinalgElementwiseGreedyFusionAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getLinalgElementwiseGreedyFusion() {
  auto attr = getLinalgElementwiseGreedyFusionAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getLowerTransferOpPermutationsAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getLowerTransferOpPermutationsAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getLowerTransferOpPermutations() {
  auto attr = getLowerTransferOpPermutationsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getLowerVectorMasksAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getLowerVectorMasksAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getLowerVectorMasks() {
  auto attr = getLowerVectorMasksAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getRankReducingVectorAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getRankReducingVectorAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getRankReducingVector() {
  auto attr = getRankReducingVectorAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getSwapPaddingElideConditionalAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getSwapPaddingElideConditionalAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getSwapPaddingElideConditional() {
  auto attr = getSwapPaddingElideConditionalAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getSwappingPatternsAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getSwappingPatternsAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getSwappingPatterns() {
  auto attr = getSwappingPatternsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr ApplyPatternsOp::getTilingCanonicalizationAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getTilingCanonicalizationAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool ApplyPatternsOp::getTilingCanonicalization() {
  auto attr = getTilingCanonicalizationAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

void ApplyPatternsOp::setAdditionalPatternsAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getAdditionalPatternsAttrName(), attr);
}

void ApplyPatternsOp::setAdditionalPatterns(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getAdditionalPatternsAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getAdditionalPatternsAttrName());
}

void ApplyPatternsOp::setBubbleCollapseAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getBubbleCollapseAttrName(), attr);
}

void ApplyPatternsOp::setBubbleCollapse(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getBubbleCollapseAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getBubbleCollapseAttrName());
}

void ApplyPatternsOp::setBubbleExpandAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getBubbleExpandAttrName(), attr);
}

void ApplyPatternsOp::setBubbleExpand(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getBubbleExpandAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getBubbleExpandAttrName());
}

void ApplyPatternsOp::setBubblePackUnPackAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getBubblePackUnPackAttrName(), attr);
}

void ApplyPatternsOp::setBubblePackUnPack(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getBubblePackUnPackAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getBubblePackUnPackAttrName());
}

void ApplyPatternsOp::setCanonicalizationAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getCanonicalizationAttrName(), attr);
}

void ApplyPatternsOp::setCanonicalization(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getCanonicalizationAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getCanonicalizationAttrName());
}

void ApplyPatternsOp::setCseAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getCseAttrName(), attr);
}

void ApplyPatternsOp::setCse(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getCseAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getCseAttrName());
}

void ApplyPatternsOp::setEraseUnnecessaryTensorOperandsAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getEraseUnnecessaryTensorOperandsAttrName(), attr);
}

void ApplyPatternsOp::setEraseUnnecessaryTensorOperands(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getEraseUnnecessaryTensorOperandsAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getEraseUnnecessaryTensorOperandsAttrName());
}

void ApplyPatternsOp::setExpandMemrefStridedMetadataAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getExpandMemrefStridedMetadataAttrName(), attr);
}

void ApplyPatternsOp::setExpandMemrefStridedMetadata(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getExpandMemrefStridedMetadataAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getExpandMemrefStridedMetadataAttrName());
}

void ApplyPatternsOp::setFoldMemrefAliasesAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getFoldMemrefAliasesAttrName(), attr);
}

void ApplyPatternsOp::setFoldMemrefAliases(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getFoldMemrefAliasesAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getFoldMemrefAliasesAttrName());
}

void ApplyPatternsOp::setFoldReassociativeReshapesAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getFoldReassociativeReshapesAttrName(), attr);
}

void ApplyPatternsOp::setFoldReassociativeReshapes(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getFoldReassociativeReshapesAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getFoldReassociativeReshapesAttrName());
}

void ApplyPatternsOp::setFoldTensorEmptyExtractAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getFoldTensorEmptyExtractAttrName(), attr);
}

void ApplyPatternsOp::setFoldTensorEmptyExtract(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getFoldTensorEmptyExtractAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getFoldTensorEmptyExtractAttrName());
}

void ApplyPatternsOp::setLicmAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getLicmAttrName(), attr);
}

void ApplyPatternsOp::setLicm(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getLicmAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getLicmAttrName());
}

void ApplyPatternsOp::setLinalgElementwiseGreedyFusionAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getLinalgElementwiseGreedyFusionAttrName(), attr);
}

void ApplyPatternsOp::setLinalgElementwiseGreedyFusion(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getLinalgElementwiseGreedyFusionAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getLinalgElementwiseGreedyFusionAttrName());
}

void ApplyPatternsOp::setLowerTransferOpPermutationsAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getLowerTransferOpPermutationsAttrName(), attr);
}

void ApplyPatternsOp::setLowerTransferOpPermutations(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getLowerTransferOpPermutationsAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getLowerTransferOpPermutationsAttrName());
}

void ApplyPatternsOp::setLowerVectorMasksAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getLowerVectorMasksAttrName(), attr);
}

void ApplyPatternsOp::setLowerVectorMasks(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getLowerVectorMasksAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getLowerVectorMasksAttrName());
}

void ApplyPatternsOp::setRankReducingVectorAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getRankReducingVectorAttrName(), attr);
}

void ApplyPatternsOp::setRankReducingVector(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getRankReducingVectorAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getRankReducingVectorAttrName());
}

void ApplyPatternsOp::setSwapPaddingElideConditionalAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getSwapPaddingElideConditionalAttrName(), attr);
}

void ApplyPatternsOp::setSwapPaddingElideConditional(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getSwapPaddingElideConditionalAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getSwapPaddingElideConditionalAttrName());
}

void ApplyPatternsOp::setSwappingPatternsAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getSwappingPatternsAttrName(), attr);
}

void ApplyPatternsOp::setSwappingPatterns(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getSwappingPatternsAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getSwappingPatternsAttrName());
}

void ApplyPatternsOp::setTilingCanonicalizationAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getTilingCanonicalizationAttrName(), attr);
}

void ApplyPatternsOp::setTilingCanonicalization(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getTilingCanonicalizationAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getTilingCanonicalizationAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeAdditionalPatternsAttr() {
  return (*this)->removeAttr(getAdditionalPatternsAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeBubbleCollapseAttr() {
  return (*this)->removeAttr(getBubbleCollapseAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeBubbleExpandAttr() {
  return (*this)->removeAttr(getBubbleExpandAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeBubblePackUnPackAttr() {
  return (*this)->removeAttr(getBubblePackUnPackAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeCanonicalizationAttr() {
  return (*this)->removeAttr(getCanonicalizationAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeCseAttr() {
  return (*this)->removeAttr(getCseAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeEraseUnnecessaryTensorOperandsAttr() {
  return (*this)->removeAttr(getEraseUnnecessaryTensorOperandsAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeExpandMemrefStridedMetadataAttr() {
  return (*this)->removeAttr(getExpandMemrefStridedMetadataAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeFoldMemrefAliasesAttr() {
  return (*this)->removeAttr(getFoldMemrefAliasesAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeFoldReassociativeReshapesAttr() {
  return (*this)->removeAttr(getFoldReassociativeReshapesAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeFoldTensorEmptyExtractAttr() {
  return (*this)->removeAttr(getFoldTensorEmptyExtractAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeLicmAttr() {
  return (*this)->removeAttr(getLicmAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeLinalgElementwiseGreedyFusionAttr() {
  return (*this)->removeAttr(getLinalgElementwiseGreedyFusionAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeLowerTransferOpPermutationsAttr() {
  return (*this)->removeAttr(getLowerTransferOpPermutationsAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeLowerVectorMasksAttr() {
  return (*this)->removeAttr(getLowerVectorMasksAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeRankReducingVectorAttr() {
  return (*this)->removeAttr(getRankReducingVectorAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeSwapPaddingElideConditionalAttr() {
  return (*this)->removeAttr(getSwapPaddingElideConditionalAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeSwappingPatternsAttr() {
  return (*this)->removeAttr(getSwappingPatternsAttrName());
}

::mlir::Attribute ApplyPatternsOp::removeTilingCanonicalizationAttr() {
  return (*this)->removeAttr(getTilingCanonicalizationAttrName());
}

void ApplyPatternsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, /*optional*/::mlir::UnitAttr additional_patterns, /*optional*/::mlir::UnitAttr bubble_collapse, /*optional*/::mlir::UnitAttr bubble_expand, /*optional*/::mlir::UnitAttr bubble_pack_un_pack, /*optional*/::mlir::UnitAttr canonicalization, /*optional*/::mlir::UnitAttr cse, /*optional*/::mlir::UnitAttr erase_unnecessary_tensor_operands, /*optional*/::mlir::UnitAttr expand_memref_strided_metadata, /*optional*/::mlir::UnitAttr fold_memref_aliases, /*optional*/::mlir::UnitAttr fold_reassociative_reshapes, /*optional*/::mlir::UnitAttr fold_tensor_empty_extract, /*optional*/::mlir::UnitAttr licm, /*optional*/::mlir::UnitAttr linalg_elementwise_greedy_fusion, /*optional*/::mlir::UnitAttr lower_transfer_op_permutations, /*optional*/::mlir::UnitAttr lower_vector_masks, /*optional*/::mlir::UnitAttr rank_reducing_vector, /*optional*/::mlir::UnitAttr swap_padding_elide_conditional, /*optional*/::mlir::UnitAttr swapping_patterns, /*optional*/::mlir::UnitAttr tiling_canonicalization) {
  odsState.addOperands(target);
  if (additional_patterns) {
    odsState.addAttribute(getAdditionalPatternsAttrName(odsState.name), additional_patterns);
  }
  if (bubble_collapse) {
    odsState.addAttribute(getBubbleCollapseAttrName(odsState.name), bubble_collapse);
  }
  if (bubble_expand) {
    odsState.addAttribute(getBubbleExpandAttrName(odsState.name), bubble_expand);
  }
  if (bubble_pack_un_pack) {
    odsState.addAttribute(getBubblePackUnPackAttrName(odsState.name), bubble_pack_un_pack);
  }
  if (canonicalization) {
    odsState.addAttribute(getCanonicalizationAttrName(odsState.name), canonicalization);
  }
  if (cse) {
    odsState.addAttribute(getCseAttrName(odsState.name), cse);
  }
  if (erase_unnecessary_tensor_operands) {
    odsState.addAttribute(getEraseUnnecessaryTensorOperandsAttrName(odsState.name), erase_unnecessary_tensor_operands);
  }
  if (expand_memref_strided_metadata) {
    odsState.addAttribute(getExpandMemrefStridedMetadataAttrName(odsState.name), expand_memref_strided_metadata);
  }
  if (fold_memref_aliases) {
    odsState.addAttribute(getFoldMemrefAliasesAttrName(odsState.name), fold_memref_aliases);
  }
  if (fold_reassociative_reshapes) {
    odsState.addAttribute(getFoldReassociativeReshapesAttrName(odsState.name), fold_reassociative_reshapes);
  }
  if (fold_tensor_empty_extract) {
    odsState.addAttribute(getFoldTensorEmptyExtractAttrName(odsState.name), fold_tensor_empty_extract);
  }
  if (licm) {
    odsState.addAttribute(getLicmAttrName(odsState.name), licm);
  }
  if (linalg_elementwise_greedy_fusion) {
    odsState.addAttribute(getLinalgElementwiseGreedyFusionAttrName(odsState.name), linalg_elementwise_greedy_fusion);
  }
  if (lower_transfer_op_permutations) {
    odsState.addAttribute(getLowerTransferOpPermutationsAttrName(odsState.name), lower_transfer_op_permutations);
  }
  if (lower_vector_masks) {
    odsState.addAttribute(getLowerVectorMasksAttrName(odsState.name), lower_vector_masks);
  }
  if (rank_reducing_vector) {
    odsState.addAttribute(getRankReducingVectorAttrName(odsState.name), rank_reducing_vector);
  }
  if (swap_padding_elide_conditional) {
    odsState.addAttribute(getSwapPaddingElideConditionalAttrName(odsState.name), swap_padding_elide_conditional);
  }
  if (swapping_patterns) {
    odsState.addAttribute(getSwappingPatternsAttrName(odsState.name), swapping_patterns);
  }
  if (tiling_canonicalization) {
    odsState.addAttribute(getTilingCanonicalizationAttrName(odsState.name), tiling_canonicalization);
  }
}

void ApplyPatternsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/::mlir::UnitAttr additional_patterns, /*optional*/::mlir::UnitAttr bubble_collapse, /*optional*/::mlir::UnitAttr bubble_expand, /*optional*/::mlir::UnitAttr bubble_pack_un_pack, /*optional*/::mlir::UnitAttr canonicalization, /*optional*/::mlir::UnitAttr cse, /*optional*/::mlir::UnitAttr erase_unnecessary_tensor_operands, /*optional*/::mlir::UnitAttr expand_memref_strided_metadata, /*optional*/::mlir::UnitAttr fold_memref_aliases, /*optional*/::mlir::UnitAttr fold_reassociative_reshapes, /*optional*/::mlir::UnitAttr fold_tensor_empty_extract, /*optional*/::mlir::UnitAttr licm, /*optional*/::mlir::UnitAttr linalg_elementwise_greedy_fusion, /*optional*/::mlir::UnitAttr lower_transfer_op_permutations, /*optional*/::mlir::UnitAttr lower_vector_masks, /*optional*/::mlir::UnitAttr rank_reducing_vector, /*optional*/::mlir::UnitAttr swap_padding_elide_conditional, /*optional*/::mlir::UnitAttr swapping_patterns, /*optional*/::mlir::UnitAttr tiling_canonicalization) {
  odsState.addOperands(target);
  if (additional_patterns) {
    odsState.addAttribute(getAdditionalPatternsAttrName(odsState.name), additional_patterns);
  }
  if (bubble_collapse) {
    odsState.addAttribute(getBubbleCollapseAttrName(odsState.name), bubble_collapse);
  }
  if (bubble_expand) {
    odsState.addAttribute(getBubbleExpandAttrName(odsState.name), bubble_expand);
  }
  if (bubble_pack_un_pack) {
    odsState.addAttribute(getBubblePackUnPackAttrName(odsState.name), bubble_pack_un_pack);
  }
  if (canonicalization) {
    odsState.addAttribute(getCanonicalizationAttrName(odsState.name), canonicalization);
  }
  if (cse) {
    odsState.addAttribute(getCseAttrName(odsState.name), cse);
  }
  if (erase_unnecessary_tensor_operands) {
    odsState.addAttribute(getEraseUnnecessaryTensorOperandsAttrName(odsState.name), erase_unnecessary_tensor_operands);
  }
  if (expand_memref_strided_metadata) {
    odsState.addAttribute(getExpandMemrefStridedMetadataAttrName(odsState.name), expand_memref_strided_metadata);
  }
  if (fold_memref_aliases) {
    odsState.addAttribute(getFoldMemrefAliasesAttrName(odsState.name), fold_memref_aliases);
  }
  if (fold_reassociative_reshapes) {
    odsState.addAttribute(getFoldReassociativeReshapesAttrName(odsState.name), fold_reassociative_reshapes);
  }
  if (fold_tensor_empty_extract) {
    odsState.addAttribute(getFoldTensorEmptyExtractAttrName(odsState.name), fold_tensor_empty_extract);
  }
  if (licm) {
    odsState.addAttribute(getLicmAttrName(odsState.name), licm);
  }
  if (linalg_elementwise_greedy_fusion) {
    odsState.addAttribute(getLinalgElementwiseGreedyFusionAttrName(odsState.name), linalg_elementwise_greedy_fusion);
  }
  if (lower_transfer_op_permutations) {
    odsState.addAttribute(getLowerTransferOpPermutationsAttrName(odsState.name), lower_transfer_op_permutations);
  }
  if (lower_vector_masks) {
    odsState.addAttribute(getLowerVectorMasksAttrName(odsState.name), lower_vector_masks);
  }
  if (rank_reducing_vector) {
    odsState.addAttribute(getRankReducingVectorAttrName(odsState.name), rank_reducing_vector);
  }
  if (swap_padding_elide_conditional) {
    odsState.addAttribute(getSwapPaddingElideConditionalAttrName(odsState.name), swap_padding_elide_conditional);
  }
  if (swapping_patterns) {
    odsState.addAttribute(getSwappingPatternsAttrName(odsState.name), swapping_patterns);
  }
  if (tiling_canonicalization) {
    odsState.addAttribute(getTilingCanonicalizationAttrName(odsState.name), tiling_canonicalization);
  }
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void ApplyPatternsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, /*optional*/bool additional_patterns, /*optional*/bool bubble_collapse, /*optional*/bool bubble_expand, /*optional*/bool bubble_pack_un_pack, /*optional*/bool canonicalization, /*optional*/bool cse, /*optional*/bool erase_unnecessary_tensor_operands, /*optional*/bool expand_memref_strided_metadata, /*optional*/bool fold_memref_aliases, /*optional*/bool fold_reassociative_reshapes, /*optional*/bool fold_tensor_empty_extract, /*optional*/bool licm, /*optional*/bool linalg_elementwise_greedy_fusion, /*optional*/bool lower_transfer_op_permutations, /*optional*/bool lower_vector_masks, /*optional*/bool rank_reducing_vector, /*optional*/bool swap_padding_elide_conditional, /*optional*/bool swapping_patterns, /*optional*/bool tiling_canonicalization) {
  odsState.addOperands(target);
  if (additional_patterns) {
    odsState.addAttribute(getAdditionalPatternsAttrName(odsState.name), ((additional_patterns) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (bubble_collapse) {
    odsState.addAttribute(getBubbleCollapseAttrName(odsState.name), ((bubble_collapse) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (bubble_expand) {
    odsState.addAttribute(getBubbleExpandAttrName(odsState.name), ((bubble_expand) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (bubble_pack_un_pack) {
    odsState.addAttribute(getBubblePackUnPackAttrName(odsState.name), ((bubble_pack_un_pack) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (canonicalization) {
    odsState.addAttribute(getCanonicalizationAttrName(odsState.name), ((canonicalization) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (cse) {
    odsState.addAttribute(getCseAttrName(odsState.name), ((cse) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (erase_unnecessary_tensor_operands) {
    odsState.addAttribute(getEraseUnnecessaryTensorOperandsAttrName(odsState.name), ((erase_unnecessary_tensor_operands) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (expand_memref_strided_metadata) {
    odsState.addAttribute(getExpandMemrefStridedMetadataAttrName(odsState.name), ((expand_memref_strided_metadata) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (fold_memref_aliases) {
    odsState.addAttribute(getFoldMemrefAliasesAttrName(odsState.name), ((fold_memref_aliases) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (fold_reassociative_reshapes) {
    odsState.addAttribute(getFoldReassociativeReshapesAttrName(odsState.name), ((fold_reassociative_reshapes) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (fold_tensor_empty_extract) {
    odsState.addAttribute(getFoldTensorEmptyExtractAttrName(odsState.name), ((fold_tensor_empty_extract) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (licm) {
    odsState.addAttribute(getLicmAttrName(odsState.name), ((licm) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (linalg_elementwise_greedy_fusion) {
    odsState.addAttribute(getLinalgElementwiseGreedyFusionAttrName(odsState.name), ((linalg_elementwise_greedy_fusion) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (lower_transfer_op_permutations) {
    odsState.addAttribute(getLowerTransferOpPermutationsAttrName(odsState.name), ((lower_transfer_op_permutations) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (lower_vector_masks) {
    odsState.addAttribute(getLowerVectorMasksAttrName(odsState.name), ((lower_vector_masks) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (rank_reducing_vector) {
    odsState.addAttribute(getRankReducingVectorAttrName(odsState.name), ((rank_reducing_vector) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (swap_padding_elide_conditional) {
    odsState.addAttribute(getSwapPaddingElideConditionalAttrName(odsState.name), ((swap_padding_elide_conditional) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (swapping_patterns) {
    odsState.addAttribute(getSwappingPatternsAttrName(odsState.name), ((swapping_patterns) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (tiling_canonicalization) {
    odsState.addAttribute(getTilingCanonicalizationAttrName(odsState.name), ((tiling_canonicalization) ? odsBuilder.getUnitAttr() : nullptr));
  }
}

void ApplyPatternsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/bool additional_patterns, /*optional*/bool bubble_collapse, /*optional*/bool bubble_expand, /*optional*/bool bubble_pack_un_pack, /*optional*/bool canonicalization, /*optional*/bool cse, /*optional*/bool erase_unnecessary_tensor_operands, /*optional*/bool expand_memref_strided_metadata, /*optional*/bool fold_memref_aliases, /*optional*/bool fold_reassociative_reshapes, /*optional*/bool fold_tensor_empty_extract, /*optional*/bool licm, /*optional*/bool linalg_elementwise_greedy_fusion, /*optional*/bool lower_transfer_op_permutations, /*optional*/bool lower_vector_masks, /*optional*/bool rank_reducing_vector, /*optional*/bool swap_padding_elide_conditional, /*optional*/bool swapping_patterns, /*optional*/bool tiling_canonicalization) {
  odsState.addOperands(target);
  if (additional_patterns) {
    odsState.addAttribute(getAdditionalPatternsAttrName(odsState.name), ((additional_patterns) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (bubble_collapse) {
    odsState.addAttribute(getBubbleCollapseAttrName(odsState.name), ((bubble_collapse) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (bubble_expand) {
    odsState.addAttribute(getBubbleExpandAttrName(odsState.name), ((bubble_expand) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (bubble_pack_un_pack) {
    odsState.addAttribute(getBubblePackUnPackAttrName(odsState.name), ((bubble_pack_un_pack) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (canonicalization) {
    odsState.addAttribute(getCanonicalizationAttrName(odsState.name), ((canonicalization) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (cse) {
    odsState.addAttribute(getCseAttrName(odsState.name), ((cse) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (erase_unnecessary_tensor_operands) {
    odsState.addAttribute(getEraseUnnecessaryTensorOperandsAttrName(odsState.name), ((erase_unnecessary_tensor_operands) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (expand_memref_strided_metadata) {
    odsState.addAttribute(getExpandMemrefStridedMetadataAttrName(odsState.name), ((expand_memref_strided_metadata) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (fold_memref_aliases) {
    odsState.addAttribute(getFoldMemrefAliasesAttrName(odsState.name), ((fold_memref_aliases) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (fold_reassociative_reshapes) {
    odsState.addAttribute(getFoldReassociativeReshapesAttrName(odsState.name), ((fold_reassociative_reshapes) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (fold_tensor_empty_extract) {
    odsState.addAttribute(getFoldTensorEmptyExtractAttrName(odsState.name), ((fold_tensor_empty_extract) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (licm) {
    odsState.addAttribute(getLicmAttrName(odsState.name), ((licm) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (linalg_elementwise_greedy_fusion) {
    odsState.addAttribute(getLinalgElementwiseGreedyFusionAttrName(odsState.name), ((linalg_elementwise_greedy_fusion) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (lower_transfer_op_permutations) {
    odsState.addAttribute(getLowerTransferOpPermutationsAttrName(odsState.name), ((lower_transfer_op_permutations) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (lower_vector_masks) {
    odsState.addAttribute(getLowerVectorMasksAttrName(odsState.name), ((lower_vector_masks) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (rank_reducing_vector) {
    odsState.addAttribute(getRankReducingVectorAttrName(odsState.name), ((rank_reducing_vector) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (swap_padding_elide_conditional) {
    odsState.addAttribute(getSwapPaddingElideConditionalAttrName(odsState.name), ((swap_padding_elide_conditional) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (swapping_patterns) {
    odsState.addAttribute(getSwappingPatternsAttrName(odsState.name), ((swapping_patterns) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (tiling_canonicalization) {
    odsState.addAttribute(getTilingCanonicalizationAttrName(odsState.name), ((tiling_canonicalization) ? odsBuilder.getUnitAttr() : nullptr));
  }
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void ApplyPatternsOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 0u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult ApplyPatternsOp::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_additional_patterns;
  ::mlir::Attribute tblgen_bubble_collapse;
  ::mlir::Attribute tblgen_bubble_expand;
  ::mlir::Attribute tblgen_bubble_pack_un_pack;
  ::mlir::Attribute tblgen_canonicalization;
  ::mlir::Attribute tblgen_cse;
  ::mlir::Attribute tblgen_erase_unnecessary_tensor_operands;
  ::mlir::Attribute tblgen_expand_memref_strided_metadata;
  ::mlir::Attribute tblgen_fold_memref_aliases;
  ::mlir::Attribute tblgen_fold_reassociative_reshapes;
  ::mlir::Attribute tblgen_fold_tensor_empty_extract;
  ::mlir::Attribute tblgen_licm;
  ::mlir::Attribute tblgen_linalg_elementwise_greedy_fusion;
  ::mlir::Attribute tblgen_lower_transfer_op_permutations;
  ::mlir::Attribute tblgen_lower_vector_masks;
  ::mlir::Attribute tblgen_rank_reducing_vector;
  ::mlir::Attribute tblgen_swap_padding_elide_conditional;
  ::mlir::Attribute tblgen_swapping_patterns;
  ::mlir::Attribute tblgen_tiling_canonicalization;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == getAdditionalPatternsAttrName()) {
      tblgen_additional_patterns = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getBubbleCollapseAttrName()) {
      tblgen_bubble_collapse = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getBubbleExpandAttrName()) {
      tblgen_bubble_expand = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getBubblePackUnPackAttrName()) {
      tblgen_bubble_pack_un_pack = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getCanonicalizationAttrName()) {
      tblgen_canonicalization = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getCseAttrName()) {
      tblgen_cse = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getEraseUnnecessaryTensorOperandsAttrName()) {
      tblgen_erase_unnecessary_tensor_operands = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getExpandMemrefStridedMetadataAttrName()) {
      tblgen_expand_memref_strided_metadata = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getFoldMemrefAliasesAttrName()) {
      tblgen_fold_memref_aliases = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getFoldReassociativeReshapesAttrName()) {
      tblgen_fold_reassociative_reshapes = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getFoldTensorEmptyExtractAttrName()) {
      tblgen_fold_tensor_empty_extract = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getLicmAttrName()) {
      tblgen_licm = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getLinalgElementwiseGreedyFusionAttrName()) {
      tblgen_linalg_elementwise_greedy_fusion = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getLowerTransferOpPermutationsAttrName()) {
      tblgen_lower_transfer_op_permutations = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getLowerVectorMasksAttrName()) {
      tblgen_lower_vector_masks = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getRankReducingVectorAttrName()) {
      tblgen_rank_reducing_vector = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getSwapPaddingElideConditionalAttrName()) {
      tblgen_swap_padding_elide_conditional = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getSwappingPatternsAttrName()) {
      tblgen_swapping_patterns = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getTilingCanonicalizationAttrName()) {
      tblgen_tiling_canonicalization = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_additional_patterns, "additional_patterns")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_bubble_collapse, "bubble_collapse")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_bubble_expand, "bubble_expand")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_bubble_pack_un_pack, "bubble_pack_un_pack")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_canonicalization, "canonicalization")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_cse, "cse")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_erase_unnecessary_tensor_operands, "erase_unnecessary_tensor_operands")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_expand_memref_strided_metadata, "expand_memref_strided_metadata")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_fold_memref_aliases, "fold_memref_aliases")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_fold_reassociative_reshapes, "fold_reassociative_reshapes")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_fold_tensor_empty_extract, "fold_tensor_empty_extract")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_licm, "licm")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_linalg_elementwise_greedy_fusion, "linalg_elementwise_greedy_fusion")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_lower_transfer_op_permutations, "lower_transfer_op_permutations")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_lower_vector_masks, "lower_vector_masks")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_rank_reducing_vector, "rank_reducing_vector")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_swap_padding_elide_conditional, "swap_padding_elide_conditional")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_swapping_patterns, "swapping_patterns")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_tiling_canonicalization, "tiling_canonicalization")))
    return ::mlir::failure();
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_CommonExtensionsOps0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult ApplyPatternsOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult ApplyPatternsOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::OpAsmParser::UnresolvedOperand targetRawOperands[1];
  ::llvm::ArrayRef<::mlir::OpAsmParser::UnresolvedOperand> targetOperands(targetRawOperands);  ::llvm::SMLoc targetOperandsLoc;
  (void)targetOperandsLoc;
  ::llvm::ArrayRef<::mlir::Type> targetTypes;
  ::llvm::ArrayRef<::mlir::Type> allResultTypes;

  targetOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperand(targetRawOperands[0]))
    return ::mlir::failure();
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  if (parser.parseColon())
    return ::mlir::failure();

  ::mlir::FunctionType target__allResult_functionType;
  if (parser.parseType(target__allResult_functionType))
    return ::mlir::failure();
  targetTypes = target__allResult_functionType.getInputs();
  allResultTypes = target__allResult_functionType.getResults();
  result.addTypes(allResultTypes);
  if (parser.resolveOperands(targetOperands, targetTypes, targetOperandsLoc, result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void ApplyPatternsOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ';
  _odsPrinter << getTarget();
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getAdditionalPatternsAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("additional_patterns");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getBubbleCollapseAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("bubble_collapse");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getBubbleExpandAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("bubble_expand");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getBubblePackUnPackAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("bubble_pack_un_pack");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getCanonicalizationAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("canonicalization");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getCseAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("cse");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getEraseUnnecessaryTensorOperandsAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("erase_unnecessary_tensor_operands");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getExpandMemrefStridedMetadataAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("expand_memref_strided_metadata");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getFoldMemrefAliasesAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("fold_memref_aliases");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getFoldReassociativeReshapesAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("fold_reassociative_reshapes");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getFoldTensorEmptyExtractAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("fold_tensor_empty_extract");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getLicmAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("licm");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getLinalgElementwiseGreedyFusionAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("linalg_elementwise_greedy_fusion");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getLowerTransferOpPermutationsAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("lower_transfer_op_permutations");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getLowerVectorMasksAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("lower_vector_masks");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getRankReducingVectorAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("rank_reducing_vector");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getSwapPaddingElideConditionalAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("swap_padding_elide_conditional");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getSwappingPatternsAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("swapping_patterns");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getTilingCanonicalizationAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("tiling_canonicalization");
  }
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(::llvm::ArrayRef<::mlir::Type>(getTarget().getType()), getOperation()->getResultTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::ApplyPatternsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::HoistStaticAllocOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
HoistStaticAllocOpGenericAdaptorBase::HoistStaticAllocOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.hoist_static_alloc", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> HoistStaticAllocOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr HoistStaticAllocOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

} // namespace detail
HoistStaticAllocOpAdaptor::HoistStaticAllocOpAdaptor(HoistStaticAllocOp op) : HoistStaticAllocOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult HoistStaticAllocOpAdaptor::verify(::mlir::Location loc) {
  return ::mlir::success();
}

std::pair<unsigned, unsigned> HoistStaticAllocOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range HoistStaticAllocOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> HoistStaticAllocOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange HoistStaticAllocOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> HoistStaticAllocOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range HoistStaticAllocOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

void HoistStaticAllocOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target) {
  odsState.addOperands(target);
}

void HoistStaticAllocOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target) {
  odsState.addOperands(target);
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void HoistStaticAllocOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 0u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult HoistStaticAllocOp::verifyInvariantsImpl() {
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_CommonExtensionsOps0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult HoistStaticAllocOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult HoistStaticAllocOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::OpAsmParser::UnresolvedOperand targetRawOperands[1];
  ::llvm::ArrayRef<::mlir::OpAsmParser::UnresolvedOperand> targetOperands(targetRawOperands);  ::llvm::SMLoc targetOperandsLoc;
  (void)targetOperandsLoc;
  ::llvm::ArrayRef<::mlir::Type> allOperandTypes;
  ::llvm::ArrayRef<::mlir::Type> allResultTypes;

  targetOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperand(targetRawOperands[0]))
    return ::mlir::failure();
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  if (parser.parseColon())
    return ::mlir::failure();

  ::mlir::FunctionType allOperand__allResult_functionType;
  if (parser.parseType(allOperand__allResult_functionType))
    return ::mlir::failure();
  allOperandTypes = allOperand__allResult_functionType.getInputs();
  allResultTypes = allOperand__allResult_functionType.getResults();
  result.addTypes(allResultTypes);
  if (parser.resolveOperands(targetOperands, allOperandTypes, parser.getNameLoc(), result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void HoistStaticAllocOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ';
  _odsPrinter << getTarget();
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(getOperation()->getOperandTypes(), getOperation()->getResultTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::HoistStaticAllocOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::ShareForallOperandsOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
ShareForallOperandsOpGenericAdaptorBase::ShareForallOperandsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.share_forall_operands", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> ShareForallOperandsOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr ShareForallOperandsOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::DenseI64ArrayAttr ShareForallOperandsOpGenericAdaptorBase::getShareOperandsAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, ShareForallOperandsOp::getShareOperandsAttrName(*odsOpName)).dyn_cast_or_null<::mlir::DenseI64ArrayAttr>();
  if (!attr)
    attr = ::mlir::Builder(odsAttrs.getContext()).getDenseI64ArrayAttr({});
  return attr;
}

::llvm::ArrayRef<int64_t> ShareForallOperandsOpGenericAdaptorBase::getShareOperands() {
  auto attr = getShareOperandsAttr();
    if (!attr)
      return ::mlir::Builder(odsAttrs.getContext()).getDenseI64ArrayAttr({});
  return attr;
}

} // namespace detail
ShareForallOperandsOpAdaptor::ShareForallOperandsOpAdaptor(ShareForallOperandsOp op) : ShareForallOperandsOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult ShareForallOperandsOpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_share_operands;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == ShareForallOperandsOp::getShareOperandsAttrName(*odsOpName)) {
      tblgen_share_operands = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (tblgen_share_operands && !((tblgen_share_operands.isa<::mlir::DenseI64ArrayAttr>())))
    return emitError(loc, "'transform.share_forall_operands' op ""attribute 'share_operands' failed to satisfy constraint: i64 dense array attribute");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> ShareForallOperandsOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range ShareForallOperandsOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> ShareForallOperandsOp::getForallOp() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange ShareForallOperandsOp::getForallOpMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> ShareForallOperandsOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range ShareForallOperandsOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> ShareForallOperandsOp::getResult() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSResults(0).begin());
}

::mlir::DenseI64ArrayAttr ShareForallOperandsOp::getShareOperandsAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getShareOperandsAttrName()).dyn_cast_or_null<::mlir::DenseI64ArrayAttr>();
}

::llvm::ArrayRef<int64_t> ShareForallOperandsOp::getShareOperands() {
  auto attr = getShareOperandsAttr();
    if (!attr)
      return ::mlir::Builder((*this)->getContext()).getDenseI64ArrayAttr({});
  return attr;
}

void ShareForallOperandsOp::setShareOperandsAttr(::mlir::DenseI64ArrayAttr attr) {
  (*this)->setAttr(getShareOperandsAttrName(), attr);
}

void ShareForallOperandsOp::setShareOperands(::std::optional<::llvm::ArrayRef<int64_t>> attrValue) {
    if (attrValue)
      return (*this)->setAttr(getShareOperandsAttrName(), ::mlir::Builder((*this)->getContext()).getDenseI64ArrayAttr(*attrValue));
    (*this)->removeAttr(getShareOperandsAttrName());
}

::mlir::Attribute ShareForallOperandsOp::removeShareOperandsAttr() {
  return (*this)->removeAttr(getShareOperandsAttrName());
}

void ShareForallOperandsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value forall_op, /*optional*/::mlir::DenseI64ArrayAttr share_operands) {
  odsState.addOperands(forall_op);
  if (share_operands) {
    odsState.addAttribute(getShareOperandsAttrName(odsState.name), share_operands);
  }
  odsState.addTypes(result);
}

void ShareForallOperandsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value forall_op, /*optional*/::mlir::DenseI64ArrayAttr share_operands) {
  odsState.addOperands(forall_op);
  if (share_operands) {
    odsState.addAttribute(getShareOperandsAttrName(odsState.name), share_operands);
  }
  assert(resultTypes.size() == 1u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void ShareForallOperandsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value forall_op, /*optional*/::llvm::ArrayRef<int64_t> share_operands) {
  odsState.addOperands(forall_op);
  odsState.addAttribute(getShareOperandsAttrName(odsState.name), odsBuilder.getDenseI64ArrayAttr(share_operands));
  odsState.addTypes(result);
}

void ShareForallOperandsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value forall_op, /*optional*/::llvm::ArrayRef<int64_t> share_operands) {
  odsState.addOperands(forall_op);
  odsState.addAttribute(getShareOperandsAttrName(odsState.name), odsBuilder.getDenseI64ArrayAttr(share_operands));
  assert(resultTypes.size() == 1u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void ShareForallOperandsOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 1u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult ShareForallOperandsOp::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_share_operands;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == getShareOperandsAttrName()) {
      tblgen_share_operands = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps1(*this, tblgen_share_operands, "share_operands")))
    return ::mlir::failure();
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_CommonExtensionsOps0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSResults(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_CommonExtensionsOps0(*this, v.getType(), "result", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult ShareForallOperandsOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult ShareForallOperandsOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::OpAsmParser::UnresolvedOperand forall_opRawOperands[1];
  ::llvm::ArrayRef<::mlir::OpAsmParser::UnresolvedOperand> forall_opOperands(forall_opRawOperands);  ::llvm::SMLoc forall_opOperandsLoc;
  (void)forall_opOperandsLoc;
  ::mlir::DenseI64ArrayAttr share_operandsAttr;
  ::llvm::ArrayRef<::mlir::Type> allOperandTypes;
  ::llvm::ArrayRef<::mlir::Type> allResultTypes;

  forall_opOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperand(forall_opRawOperands[0]))
    return ::mlir::failure();
  if (::mlir::succeeded(parser.parseOptionalKeyword("share_operands"))) {
  if (parser.parseEqual())
    return ::mlir::failure();

  if (parser.parseCustomAttributeWithFallback(share_operandsAttr, ::mlir::Type{}, "share_operands",
          result.attributes)) {
    return ::mlir::failure();
  }
  }
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  if (parser.parseColon())
    return ::mlir::failure();

  ::mlir::FunctionType allOperand__allResult_functionType;
  if (parser.parseType(allOperand__allResult_functionType))
    return ::mlir::failure();
  allOperandTypes = allOperand__allResult_functionType.getInputs();
  allResultTypes = allOperand__allResult_functionType.getResults();
  result.addTypes(allResultTypes);
  if (parser.resolveOperands(forall_opOperands, allOperandTypes, parser.getNameLoc(), result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void ShareForallOperandsOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ';
  _odsPrinter << getForallOp();
  if ((*this)->getAttr("share_operands")) {
    _odsPrinter << ' ' << "share_operands";
    _odsPrinter << ' ' << "=";
    _odsPrinter << ' ';
  _odsPrinter.printStrippedAttrOrType(getShareOperandsAttr());
  }
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  elidedAttrs.push_back("share_operands");
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getShareOperandsAttr();
     if(attr && (attr == odsBuilder.getDenseI64ArrayAttr({})))
       elidedAttrs.push_back("share_operands");
  }
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(getOperation()->getOperandTypes(), getOperation()->getResultTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::ShareForallOperandsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::TransformBufferizeOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
TransformBufferizeOpGenericAdaptorBase::TransformBufferizeOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.bufferize", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> TransformBufferizeOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr TransformBufferizeOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::UnitAttr TransformBufferizeOpGenericAdaptorBase::getTargetGpuAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, TransformBufferizeOp::getTargetGpuAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool TransformBufferizeOpGenericAdaptorBase::getTargetGpu() {
  auto attr = getTargetGpuAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr TransformBufferizeOpGenericAdaptorBase::getTestAnalysisOnlyAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, TransformBufferizeOp::getTestAnalysisOnlyAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool TransformBufferizeOpGenericAdaptorBase::getTestAnalysisOnly() {
  auto attr = getTestAnalysisOnlyAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr TransformBufferizeOpGenericAdaptorBase::getPrintConflictsAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, TransformBufferizeOp::getPrintConflictsAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool TransformBufferizeOpGenericAdaptorBase::getPrintConflicts() {
  auto attr = getPrintConflictsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

} // namespace detail
TransformBufferizeOpAdaptor::TransformBufferizeOpAdaptor(TransformBufferizeOp op) : TransformBufferizeOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult TransformBufferizeOpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_print_conflicts;
  ::mlir::Attribute tblgen_target_gpu;
  ::mlir::Attribute tblgen_test_analysis_only;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == TransformBufferizeOp::getPrintConflictsAttrName(*odsOpName)) {
      tblgen_print_conflicts = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == TransformBufferizeOp::getTargetGpuAttrName(*odsOpName)) {
      tblgen_target_gpu = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == TransformBufferizeOp::getTestAnalysisOnlyAttrName(*odsOpName)) {
      tblgen_test_analysis_only = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (tblgen_target_gpu && !((tblgen_target_gpu.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.bufferize' op ""attribute 'target_gpu' failed to satisfy constraint: unit attribute");

  if (tblgen_test_analysis_only && !((tblgen_test_analysis_only.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.bufferize' op ""attribute 'test_analysis_only' failed to satisfy constraint: unit attribute");

  if (tblgen_print_conflicts && !((tblgen_print_conflicts.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.bufferize' op ""attribute 'print_conflicts' failed to satisfy constraint: unit attribute");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> TransformBufferizeOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range TransformBufferizeOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> TransformBufferizeOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange TransformBufferizeOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> TransformBufferizeOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range TransformBufferizeOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> TransformBufferizeOp::getResult() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSResults(0).begin());
}

::mlir::UnitAttr TransformBufferizeOp::getTargetGpuAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getTargetGpuAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool TransformBufferizeOp::getTargetGpu() {
  auto attr = getTargetGpuAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr TransformBufferizeOp::getTestAnalysisOnlyAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getTestAnalysisOnlyAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool TransformBufferizeOp::getTestAnalysisOnly() {
  auto attr = getTestAnalysisOnlyAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr TransformBufferizeOp::getPrintConflictsAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getPrintConflictsAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool TransformBufferizeOp::getPrintConflicts() {
  auto attr = getPrintConflictsAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

void TransformBufferizeOp::setTargetGpuAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getTargetGpuAttrName(), attr);
}

void TransformBufferizeOp::setTargetGpu(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getTargetGpuAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getTargetGpuAttrName());
}

void TransformBufferizeOp::setTestAnalysisOnlyAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getTestAnalysisOnlyAttrName(), attr);
}

void TransformBufferizeOp::setTestAnalysisOnly(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getTestAnalysisOnlyAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getTestAnalysisOnlyAttrName());
}

void TransformBufferizeOp::setPrintConflictsAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getPrintConflictsAttrName(), attr);
}

void TransformBufferizeOp::setPrintConflicts(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getPrintConflictsAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getPrintConflictsAttrName());
}

::mlir::Attribute TransformBufferizeOp::removeTargetGpuAttr() {
  return (*this)->removeAttr(getTargetGpuAttrName());
}

::mlir::Attribute TransformBufferizeOp::removeTestAnalysisOnlyAttr() {
  return (*this)->removeAttr(getTestAnalysisOnlyAttrName());
}

::mlir::Attribute TransformBufferizeOp::removePrintConflictsAttr() {
  return (*this)->removeAttr(getPrintConflictsAttrName());
}

void TransformBufferizeOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, /*optional*/::mlir::UnitAttr target_gpu, /*optional*/::mlir::UnitAttr test_analysis_only, /*optional*/::mlir::UnitAttr print_conflicts) {
  odsState.addOperands(target);
  if (target_gpu) {
    odsState.addAttribute(getTargetGpuAttrName(odsState.name), target_gpu);
  }
  if (test_analysis_only) {
    odsState.addAttribute(getTestAnalysisOnlyAttrName(odsState.name), test_analysis_only);
  }
  if (print_conflicts) {
    odsState.addAttribute(getPrintConflictsAttrName(odsState.name), print_conflicts);
  }
  odsState.addTypes(result);
}

void TransformBufferizeOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/::mlir::UnitAttr target_gpu, /*optional*/::mlir::UnitAttr test_analysis_only, /*optional*/::mlir::UnitAttr print_conflicts) {
  odsState.addOperands(target);
  if (target_gpu) {
    odsState.addAttribute(getTargetGpuAttrName(odsState.name), target_gpu);
  }
  if (test_analysis_only) {
    odsState.addAttribute(getTestAnalysisOnlyAttrName(odsState.name), test_analysis_only);
  }
  if (print_conflicts) {
    odsState.addAttribute(getPrintConflictsAttrName(odsState.name), print_conflicts);
  }
  assert(resultTypes.size() == 1u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void TransformBufferizeOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, /*optional*/bool target_gpu, /*optional*/bool test_analysis_only, /*optional*/bool print_conflicts) {
  odsState.addOperands(target);
  if (target_gpu) {
    odsState.addAttribute(getTargetGpuAttrName(odsState.name), ((target_gpu) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (test_analysis_only) {
    odsState.addAttribute(getTestAnalysisOnlyAttrName(odsState.name), ((test_analysis_only) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (print_conflicts) {
    odsState.addAttribute(getPrintConflictsAttrName(odsState.name), ((print_conflicts) ? odsBuilder.getUnitAttr() : nullptr));
  }
  odsState.addTypes(result);
}

void TransformBufferizeOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/bool target_gpu, /*optional*/bool test_analysis_only, /*optional*/bool print_conflicts) {
  odsState.addOperands(target);
  if (target_gpu) {
    odsState.addAttribute(getTargetGpuAttrName(odsState.name), ((target_gpu) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (test_analysis_only) {
    odsState.addAttribute(getTestAnalysisOnlyAttrName(odsState.name), ((test_analysis_only) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (print_conflicts) {
    odsState.addAttribute(getPrintConflictsAttrName(odsState.name), ((print_conflicts) ? odsBuilder.getUnitAttr() : nullptr));
  }
  assert(resultTypes.size() == 1u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void TransformBufferizeOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 1u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult TransformBufferizeOp::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_print_conflicts;
  ::mlir::Attribute tblgen_target_gpu;
  ::mlir::Attribute tblgen_test_analysis_only;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == getPrintConflictsAttrName()) {
      tblgen_print_conflicts = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getTargetGpuAttrName()) {
      tblgen_target_gpu = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getTestAnalysisOnlyAttrName()) {
      tblgen_test_analysis_only = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_target_gpu, "target_gpu")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_test_analysis_only, "test_analysis_only")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_CommonExtensionsOps0(*this, tblgen_print_conflicts, "print_conflicts")))
    return ::mlir::failure();
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_CommonExtensionsOps0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSResults(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_CommonExtensionsOps0(*this, v.getType(), "result", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult TransformBufferizeOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult TransformBufferizeOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::OpAsmParser::UnresolvedOperand targetRawOperands[1];
  ::llvm::ArrayRef<::mlir::OpAsmParser::UnresolvedOperand> targetOperands(targetRawOperands);  ::llvm::SMLoc targetOperandsLoc;
  (void)targetOperandsLoc;
  ::llvm::ArrayRef<::mlir::Type> targetTypes;
  ::llvm::ArrayRef<::mlir::Type> allResultTypes;
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();

  targetOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperand(targetRawOperands[0]))
    return ::mlir::failure();
  if (parser.parseColon())
    return ::mlir::failure();

  ::mlir::FunctionType target__allResult_functionType;
  if (parser.parseType(target__allResult_functionType))
    return ::mlir::failure();
  targetTypes = target__allResult_functionType.getInputs();
  allResultTypes = target__allResult_functionType.getResults();
  result.addTypes(allResultTypes);
  if (parser.resolveOperands(targetOperands, targetTypes, targetOperandsLoc, result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void TransformBufferizeOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getTargetGpuAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("target_gpu");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getTestAnalysisOnlyAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("test_analysis_only");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getPrintConflictsAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("print_conflicts");
  }
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ';
  _odsPrinter << getTarget();
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(::llvm::ArrayRef<::mlir::Type>(getTarget().getType()), getOperation()->getResultTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::TransformBufferizeOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::TransformEliminateEmptyTensorsOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
TransformEliminateEmptyTensorsOpGenericAdaptorBase::TransformEliminateEmptyTensorsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.eliminate_empty_tensors", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> TransformEliminateEmptyTensorsOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr TransformEliminateEmptyTensorsOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

} // namespace detail
TransformEliminateEmptyTensorsOpAdaptor::TransformEliminateEmptyTensorsOpAdaptor(TransformEliminateEmptyTensorsOp op) : TransformEliminateEmptyTensorsOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult TransformEliminateEmptyTensorsOpAdaptor::verify(::mlir::Location loc) {
  return ::mlir::success();
}

std::pair<unsigned, unsigned> TransformEliminateEmptyTensorsOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range TransformEliminateEmptyTensorsOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> TransformEliminateEmptyTensorsOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange TransformEliminateEmptyTensorsOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> TransformEliminateEmptyTensorsOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range TransformEliminateEmptyTensorsOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

void TransformEliminateEmptyTensorsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target) {
  odsState.addOperands(target);
}

void TransformEliminateEmptyTensorsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target) {
  odsState.addOperands(target);
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void TransformEliminateEmptyTensorsOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 0u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult TransformEliminateEmptyTensorsOp::verifyInvariantsImpl() {
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_CommonExtensionsOps0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult TransformEliminateEmptyTensorsOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult TransformEliminateEmptyTensorsOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::OpAsmParser::UnresolvedOperand targetRawOperands[1];
  ::llvm::ArrayRef<::mlir::OpAsmParser::UnresolvedOperand> targetOperands(targetRawOperands);  ::llvm::SMLoc targetOperandsLoc;
  (void)targetOperandsLoc;
  ::llvm::ArrayRef<::mlir::Type> targetTypes;
  ::llvm::ArrayRef<::mlir::Type> allResultTypes;
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();

  targetOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperand(targetRawOperands[0]))
    return ::mlir::failure();
  if (parser.parseColon())
    return ::mlir::failure();

  ::mlir::FunctionType target__allResult_functionType;
  if (parser.parseType(target__allResult_functionType))
    return ::mlir::failure();
  targetTypes = target__allResult_functionType.getInputs();
  allResultTypes = target__allResult_functionType.getResults();
  result.addTypes(allResultTypes);
  if (parser.resolveOperands(targetOperands, targetTypes, targetOperandsLoc, result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void TransformEliminateEmptyTensorsOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ';
  _odsPrinter << getTarget();
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(::llvm::ArrayRef<::mlir::Type>(getTarget().getType()), getOperation()->getResultTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::TransformEliminateEmptyTensorsOp)


#endif  // GET_OP_CLASSES

