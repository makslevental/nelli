/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Op Definitions                                                             *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#ifdef GET_OP_LIST
#undef GET_OP_LIST

mlir::transform::CreateAsyncGroupsOp,
mlir::transform::LayoutAnalysisAndDistributionOp,
mlir::transform::PromoteOperandsOp,
mlir::transform::VectorToMMAConversionOp,
mlir::transform::VectorToWarpExecuteOnLane0Op,
mlir::transform::VectorWarpDistributionOp
#endif  // GET_OP_LIST

#ifdef GET_OP_CLASSES
#undef GET_OP_CLASSES


//===----------------------------------------------------------------------===//
// Local Utility Method Definitions
//===----------------------------------------------------------------------===//

namespace mlir {
namespace transform {

static ::mlir::LogicalResult __mlir_ods_local_type_constraint_LLVMGPUExtensionsOps0(
    ::mlir::Operation *op, ::mlir::Type type, ::llvm::StringRef valueKind,
    unsigned valueIndex) {
  if (!((type.isa<::mlir::transform::TransformHandleTypeInterface>()))) {
    return op->emitOpError(valueKind) << " #" << valueIndex
        << " must be TransformHandleTypeInterface instance, but got " << type;
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_type_constraint_LLVMGPUExtensionsOps1(
    ::mlir::Operation *op, ::mlir::Type type, ::llvm::StringRef valueKind,
    unsigned valueIndex) {
  if (!((type.isa<::mlir::pdl::OperationType>()))) {
    return op->emitOpError(valueKind) << " #" << valueIndex
        << " must be PDL handle to an `mlir::Operation *`, but got " << type;
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_attr_constraint_LLVMGPUExtensionsOps0(
    ::mlir::Operation *op, ::mlir::Attribute attr, ::llvm::StringRef attrName) {
  if (attr && !((attr.isa<::mlir::BoolAttr>()))) {
    return op->emitOpError("attribute '") << attrName
        << "' failed to satisfy constraint: bool attribute";
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_attr_constraint_LLVMGPUExtensionsOps1(
    ::mlir::Operation *op, ::mlir::Attribute attr, ::llvm::StringRef attrName) {
  if (attr && !((attr.isa<::mlir::DenseI64ArrayAttr>()))) {
    return op->emitOpError("attribute '") << attrName
        << "' failed to satisfy constraint: i64 dense array attribute";
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_attr_constraint_LLVMGPUExtensionsOps2(
    ::mlir::Operation *op, ::mlir::Attribute attr, ::llvm::StringRef attrName) {
  if (attr && !((attr.isa<::mlir::UnitAttr>()))) {
    return op->emitOpError("attribute '") << attrName
        << "' failed to satisfy constraint: unit attribute";
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_attr_constraint_LLVMGPUExtensionsOps3(
    ::mlir::Operation *op, ::mlir::Attribute attr, ::llvm::StringRef attrName) {
  if (attr && !(((attr.isa<::mlir::IntegerAttr>())) && ((attr.cast<::mlir::IntegerAttr>().getType().isSignlessInteger(64))))) {
    return op->emitOpError("attribute '") << attrName
        << "' failed to satisfy constraint: 64-bit signless integer attribute";
  }
  return ::mlir::success();
}
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::CreateAsyncGroupsOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
CreateAsyncGroupsOpGenericAdaptorBase::CreateAsyncGroupsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.create_async_groups", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> CreateAsyncGroupsOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr CreateAsyncGroupsOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::BoolAttr CreateAsyncGroupsOpGenericAdaptorBase::getUseMmaSyncAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, CreateAsyncGroupsOp::getUseMmaSyncAttrName(*odsOpName)).cast<::mlir::BoolAttr>();
  return attr;
}

bool CreateAsyncGroupsOpGenericAdaptorBase::getUseMmaSync() {
  auto attr = getUseMmaSyncAttr();
  return attr.getValue();
}

} // namespace detail
CreateAsyncGroupsOpAdaptor::CreateAsyncGroupsOpAdaptor(CreateAsyncGroupsOp op) : CreateAsyncGroupsOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult CreateAsyncGroupsOpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_use_mma_sync;
  while (true) {
    if (namedAttrIt == namedAttrRange.end())
      return emitError(loc, "'transform.create_async_groups' op ""requires attribute 'use_mma_sync'");
    if (namedAttrIt->getName() == CreateAsyncGroupsOp::getUseMmaSyncAttrName(*odsOpName)) {
      tblgen_use_mma_sync = namedAttrIt->getValue();
      break;
    }
    ++namedAttrIt;
  }

  if (tblgen_use_mma_sync && !((tblgen_use_mma_sync.isa<::mlir::BoolAttr>())))
    return emitError(loc, "'transform.create_async_groups' op ""attribute 'use_mma_sync' failed to satisfy constraint: bool attribute");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> CreateAsyncGroupsOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range CreateAsyncGroupsOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> CreateAsyncGroupsOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange CreateAsyncGroupsOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> CreateAsyncGroupsOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range CreateAsyncGroupsOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::BoolAttr CreateAsyncGroupsOp::getUseMmaSyncAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getUseMmaSyncAttrName()).cast<::mlir::BoolAttr>();
}

bool CreateAsyncGroupsOp::getUseMmaSync() {
  auto attr = getUseMmaSyncAttr();
  return attr.getValue();
}

void CreateAsyncGroupsOp::setUseMmaSyncAttr(::mlir::BoolAttr attr) {
  (*this)->setAttr(getUseMmaSyncAttrName(), attr);
}

void CreateAsyncGroupsOp::setUseMmaSync(bool attrValue) {
  (*this)->setAttr(getUseMmaSyncAttrName(), ::mlir::Builder((*this)->getContext()).getBoolAttr(attrValue));
}

void CreateAsyncGroupsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, ::mlir::BoolAttr use_mma_sync) {
  odsState.addOperands(target);
  odsState.addAttribute(getUseMmaSyncAttrName(odsState.name), use_mma_sync);
}

void CreateAsyncGroupsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, ::mlir::BoolAttr use_mma_sync) {
  odsState.addOperands(target);
  odsState.addAttribute(getUseMmaSyncAttrName(odsState.name), use_mma_sync);
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void CreateAsyncGroupsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, bool use_mma_sync) {
  odsState.addOperands(target);
  odsState.addAttribute(getUseMmaSyncAttrName(odsState.name), odsBuilder.getBoolAttr(use_mma_sync));
}

void CreateAsyncGroupsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, bool use_mma_sync) {
  odsState.addOperands(target);
  odsState.addAttribute(getUseMmaSyncAttrName(odsState.name), odsBuilder.getBoolAttr(use_mma_sync));
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void CreateAsyncGroupsOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 0u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult CreateAsyncGroupsOp::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_use_mma_sync;
  while (true) {
    if (namedAttrIt == namedAttrRange.end())
      return emitOpError("requires attribute 'use_mma_sync'");
    if (namedAttrIt->getName() == getUseMmaSyncAttrName()) {
      tblgen_use_mma_sync = namedAttrIt->getValue();
      break;
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_LLVMGPUExtensionsOps0(*this, tblgen_use_mma_sync, "use_mma_sync")))
    return ::mlir::failure();
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_LLVMGPUExtensionsOps0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult CreateAsyncGroupsOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult CreateAsyncGroupsOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
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

void CreateAsyncGroupsOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
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
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::CreateAsyncGroupsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::LayoutAnalysisAndDistributionOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
LayoutAnalysisAndDistributionOpGenericAdaptorBase::LayoutAnalysisAndDistributionOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.layout_analysis_and_distribution", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> LayoutAnalysisAndDistributionOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr LayoutAnalysisAndDistributionOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

} // namespace detail
LayoutAnalysisAndDistributionOpAdaptor::LayoutAnalysisAndDistributionOpAdaptor(LayoutAnalysisAndDistributionOp op) : LayoutAnalysisAndDistributionOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult LayoutAnalysisAndDistributionOpAdaptor::verify(::mlir::Location loc) {
  return ::mlir::success();
}

std::pair<unsigned, unsigned> LayoutAnalysisAndDistributionOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range LayoutAnalysisAndDistributionOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::pdl::OperationType> LayoutAnalysisAndDistributionOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::pdl::OperationType>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange LayoutAnalysisAndDistributionOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> LayoutAnalysisAndDistributionOp::getODSResultIndexAndLength(unsigned index) {
  bool isVariadic[] = {true};
  int prevVariadicCount = 0;
  for (unsigned i = 0; i < index; ++i)
    if (isVariadic[i]) ++prevVariadicCount;

  // Calculate how many dynamic values a static variadic operand corresponds to.
  // This assumes all static variadic operands have the same dynamic value count.
  int variadicSize = (getOperation()->getNumResults() - 0) / 1;
  // `index` passed in as the parameter is the static index which counts each
  // operand (variadic or not) as size 1. So here for each previous static variadic
  // operand, we need to offset by (variadicSize - 1) to get where the dynamic
  // value pack for this static operand starts.
  int start = index + (variadicSize - 1) * prevVariadicCount;
  int size = isVariadic[index] ? variadicSize : 1;
  return {start, size};
}

::mlir::Operation::result_range LayoutAnalysisAndDistributionOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::Operation::result_range LayoutAnalysisAndDistributionOp::getResult() {
  return getODSResults(0);
}

void LayoutAnalysisAndDistributionOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange result, ::mlir::Value target) {
  odsState.addOperands(target);
  odsState.addTypes(result);
}

void LayoutAnalysisAndDistributionOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult LayoutAnalysisAndDistributionOp::verifyInvariantsImpl() {
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_LLVMGPUExtensionsOps1(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSResults(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_LLVMGPUExtensionsOps1(*this, v.getType(), "result", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult LayoutAnalysisAndDistributionOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult LayoutAnalysisAndDistributionOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
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

void LayoutAnalysisAndDistributionOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
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
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::LayoutAnalysisAndDistributionOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::PromoteOperandsOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
PromoteOperandsOpGenericAdaptorBase::PromoteOperandsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.promote_operands", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> PromoteOperandsOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr PromoteOperandsOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::DenseI64ArrayAttr PromoteOperandsOpGenericAdaptorBase::getIndicesAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, PromoteOperandsOp::getIndicesAttrName(*odsOpName)).dyn_cast_or_null<::mlir::DenseI64ArrayAttr>();
  return attr;
}

::llvm::ArrayRef<int64_t> PromoteOperandsOpGenericAdaptorBase::getIndices() {
  auto attr = getIndicesAttr();
  return attr;
}

} // namespace detail
PromoteOperandsOpAdaptor::PromoteOperandsOpAdaptor(PromoteOperandsOp op) : PromoteOperandsOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult PromoteOperandsOpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_indices;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == PromoteOperandsOp::getIndicesAttrName(*odsOpName)) {
      tblgen_indices = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (tblgen_indices && !((tblgen_indices.isa<::mlir::DenseI64ArrayAttr>())))
    return emitError(loc, "'transform.promote_operands' op ""attribute 'indices' failed to satisfy constraint: i64 dense array attribute");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> PromoteOperandsOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range PromoteOperandsOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::pdl::OperationType> PromoteOperandsOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::pdl::OperationType>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange PromoteOperandsOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> PromoteOperandsOp::getODSResultIndexAndLength(unsigned index) {
  bool isVariadic[] = {true};
  int prevVariadicCount = 0;
  for (unsigned i = 0; i < index; ++i)
    if (isVariadic[i]) ++prevVariadicCount;

  // Calculate how many dynamic values a static variadic operand corresponds to.
  // This assumes all static variadic operands have the same dynamic value count.
  int variadicSize = (getOperation()->getNumResults() - 0) / 1;
  // `index` passed in as the parameter is the static index which counts each
  // operand (variadic or not) as size 1. So here for each previous static variadic
  // operand, we need to offset by (variadicSize - 1) to get where the dynamic
  // value pack for this static operand starts.
  int start = index + (variadicSize - 1) * prevVariadicCount;
  int size = isVariadic[index] ? variadicSize : 1;
  return {start, size};
}

::mlir::Operation::result_range PromoteOperandsOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::Operation::result_range PromoteOperandsOp::getResult() {
  return getODSResults(0);
}

::mlir::DenseI64ArrayAttr PromoteOperandsOp::getIndicesAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getIndicesAttrName()).dyn_cast_or_null<::mlir::DenseI64ArrayAttr>();
}

::llvm::ArrayRef<int64_t> PromoteOperandsOp::getIndices() {
  auto attr = getIndicesAttr();
  return attr;
}

void PromoteOperandsOp::setIndicesAttr(::mlir::DenseI64ArrayAttr attr) {
  (*this)->setAttr(getIndicesAttrName(), attr);
}

void PromoteOperandsOp::setIndices(::llvm::ArrayRef<int64_t> attrValue) {
  (*this)->setAttr(getIndicesAttrName(), ::mlir::Builder((*this)->getContext()).getDenseI64ArrayAttr(attrValue));
}

void PromoteOperandsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange result, ::mlir::Value target, ::mlir::DenseI64ArrayAttr indices) {
  odsState.addOperands(target);
  if (indices) {
    odsState.addAttribute(getIndicesAttrName(odsState.name), indices);
  }
  odsState.addTypes(result);
}

void PromoteOperandsOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange result, ::mlir::Value target, ::llvm::ArrayRef<int64_t> indices) {
  odsState.addOperands(target);
  odsState.addAttribute(getIndicesAttrName(odsState.name), odsBuilder.getDenseI64ArrayAttr(indices));
  odsState.addTypes(result);
}

void PromoteOperandsOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  odsState.addTypes(resultTypes);
}

void PromoteOperandsOp::populateDefaultAttrs(const ::mlir::OperationName &opName, ::mlir::NamedAttrList &attributes) {
  auto attrNames = opName.getAttributeNames();
  ::mlir::Builder odsBuilder(attrNames.front().getContext());
  if (!attributes.get(attrNames[0])) {
    attributes.append(attrNames[0], odsBuilder.getDenseI64ArrayAttr({}));
  }
}

::mlir::LogicalResult PromoteOperandsOp::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_indices;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == getIndicesAttrName()) {
      tblgen_indices = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_LLVMGPUExtensionsOps1(*this, tblgen_indices, "indices")))
    return ::mlir::failure();
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_LLVMGPUExtensionsOps1(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSResults(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_LLVMGPUExtensionsOps1(*this, v.getType(), "result", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult PromoteOperandsOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult PromoteOperandsOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::OpAsmParser::UnresolvedOperand targetRawOperands[1];
  ::llvm::ArrayRef<::mlir::OpAsmParser::UnresolvedOperand> targetOperands(targetRawOperands);  ::llvm::SMLoc targetOperandsLoc;
  (void)targetOperandsLoc;
  ::mlir::DenseI64ArrayAttr indicesAttr;
  ::llvm::ArrayRef<::mlir::Type> allOperandTypes;
  ::llvm::ArrayRef<::mlir::Type> allResultTypes;

  targetOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperand(targetRawOperands[0]))
    return ::mlir::failure();

  if (parser.parseCustomAttributeWithFallback(indicesAttr, ::mlir::Type{}, "indices",
          result.attributes)) {
    return ::mlir::failure();
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
  if (parser.resolveOperands(targetOperands, allOperandTypes, parser.getNameLoc(), result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void PromoteOperandsOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ';
  _odsPrinter << getTarget();
  _odsPrinter << ' ';
_odsPrinter.printStrippedAttrOrType(getIndicesAttr());
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  elidedAttrs.push_back("indices");
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getIndicesAttr();
     if(attr && (attr == odsBuilder.getDenseI64ArrayAttr({})))
       elidedAttrs.push_back("indices");
  }
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(getOperation()->getOperandTypes(), getOperation()->getResultTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::PromoteOperandsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::VectorToMMAConversionOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
VectorToMMAConversionOpGenericAdaptorBase::VectorToMMAConversionOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.vector.vector_to_mma_conversion", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> VectorToMMAConversionOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr VectorToMMAConversionOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::UnitAttr VectorToMMAConversionOpGenericAdaptorBase::getUseMmaSyncAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, VectorToMMAConversionOp::getUseMmaSyncAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool VectorToMMAConversionOpGenericAdaptorBase::getUseMmaSync() {
  auto attr = getUseMmaSyncAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr VectorToMMAConversionOpGenericAdaptorBase::getUseWmmaAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, VectorToMMAConversionOp::getUseWmmaAttrName(*odsOpName)).dyn_cast_or_null<::mlir::UnitAttr>();
  if (!attr)
    attr = ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr);
  return attr;
}

bool VectorToMMAConversionOpGenericAdaptorBase::getUseWmma() {
  auto attr = getUseWmmaAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder(odsAttrs.getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

} // namespace detail
VectorToMMAConversionOpAdaptor::VectorToMMAConversionOpAdaptor(VectorToMMAConversionOp op) : VectorToMMAConversionOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult VectorToMMAConversionOpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_use_mma_sync;
  ::mlir::Attribute tblgen_use_wmma;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == VectorToMMAConversionOp::getUseMmaSyncAttrName(*odsOpName)) {
      tblgen_use_mma_sync = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == VectorToMMAConversionOp::getUseWmmaAttrName(*odsOpName)) {
      tblgen_use_wmma = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (tblgen_use_mma_sync && !((tblgen_use_mma_sync.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.vector.vector_to_mma_conversion' op ""attribute 'use_mma_sync' failed to satisfy constraint: unit attribute");

  if (tblgen_use_wmma && !((tblgen_use_wmma.isa<::mlir::UnitAttr>())))
    return emitError(loc, "'transform.vector.vector_to_mma_conversion' op ""attribute 'use_wmma' failed to satisfy constraint: unit attribute");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> VectorToMMAConversionOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range VectorToMMAConversionOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> VectorToMMAConversionOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange VectorToMMAConversionOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> VectorToMMAConversionOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range VectorToMMAConversionOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::UnitAttr VectorToMMAConversionOp::getUseMmaSyncAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getUseMmaSyncAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool VectorToMMAConversionOp::getUseMmaSync() {
  auto attr = getUseMmaSyncAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

::mlir::UnitAttr VectorToMMAConversionOp::getUseWmmaAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getUseWmmaAttrName()).dyn_cast_or_null<::mlir::UnitAttr>();
}

bool VectorToMMAConversionOp::getUseWmma() {
  auto attr = getUseWmmaAttr();
    if (!attr)
      return ((false) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr) != nullptr;
  return attr != nullptr;
}

void VectorToMMAConversionOp::setUseMmaSyncAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getUseMmaSyncAttrName(), attr);
}

void VectorToMMAConversionOp::setUseMmaSync(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getUseMmaSyncAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getUseMmaSyncAttrName());
}

void VectorToMMAConversionOp::setUseWmmaAttr(::mlir::UnitAttr attr) {
  (*this)->setAttr(getUseWmmaAttrName(), attr);
}

void VectorToMMAConversionOp::setUseWmma(bool attrValue) {
    if (attrValue)
      return (*this)->setAttr(getUseWmmaAttrName(), ((attrValue) ? ::mlir::Builder((*this)->getContext()).getUnitAttr() : nullptr));
    (*this)->removeAttr(getUseWmmaAttrName());
}

::mlir::Attribute VectorToMMAConversionOp::removeUseMmaSyncAttr() {
  return (*this)->removeAttr(getUseMmaSyncAttrName());
}

::mlir::Attribute VectorToMMAConversionOp::removeUseWmmaAttr() {
  return (*this)->removeAttr(getUseWmmaAttrName());
}

void VectorToMMAConversionOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, /*optional*/::mlir::UnitAttr use_mma_sync, /*optional*/::mlir::UnitAttr use_wmma) {
  odsState.addOperands(target);
  if (use_mma_sync) {
    odsState.addAttribute(getUseMmaSyncAttrName(odsState.name), use_mma_sync);
  }
  if (use_wmma) {
    odsState.addAttribute(getUseWmmaAttrName(odsState.name), use_wmma);
  }
}

void VectorToMMAConversionOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/::mlir::UnitAttr use_mma_sync, /*optional*/::mlir::UnitAttr use_wmma) {
  odsState.addOperands(target);
  if (use_mma_sync) {
    odsState.addAttribute(getUseMmaSyncAttrName(odsState.name), use_mma_sync);
  }
  if (use_wmma) {
    odsState.addAttribute(getUseWmmaAttrName(odsState.name), use_wmma);
  }
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void VectorToMMAConversionOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, /*optional*/bool use_mma_sync, /*optional*/bool use_wmma) {
  odsState.addOperands(target);
  if (use_mma_sync) {
    odsState.addAttribute(getUseMmaSyncAttrName(odsState.name), ((use_mma_sync) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (use_wmma) {
    odsState.addAttribute(getUseWmmaAttrName(odsState.name), ((use_wmma) ? odsBuilder.getUnitAttr() : nullptr));
  }
}

void VectorToMMAConversionOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/bool use_mma_sync, /*optional*/bool use_wmma) {
  odsState.addOperands(target);
  if (use_mma_sync) {
    odsState.addAttribute(getUseMmaSyncAttrName(odsState.name), ((use_mma_sync) ? odsBuilder.getUnitAttr() : nullptr));
  }
  if (use_wmma) {
    odsState.addAttribute(getUseWmmaAttrName(odsState.name), ((use_wmma) ? odsBuilder.getUnitAttr() : nullptr));
  }
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void VectorToMMAConversionOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 0u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult VectorToMMAConversionOp::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_use_mma_sync;
  ::mlir::Attribute tblgen_use_wmma;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == getUseMmaSyncAttrName()) {
      tblgen_use_mma_sync = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getUseWmmaAttrName()) {
      tblgen_use_wmma = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_LLVMGPUExtensionsOps2(*this, tblgen_use_mma_sync, "use_mma_sync")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_LLVMGPUExtensionsOps2(*this, tblgen_use_wmma, "use_wmma")))
    return ::mlir::failure();
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_LLVMGPUExtensionsOps0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult VectorToMMAConversionOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult VectorToMMAConversionOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
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

void VectorToMMAConversionOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ';
  _odsPrinter << getTarget();
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getUseMmaSyncAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("use_mma_sync");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getUseWmmaAttr();
     if(attr && (attr == ((false) ? odsBuilder.getUnitAttr() : nullptr)))
       elidedAttrs.push_back("use_wmma");
  }
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(::llvm::ArrayRef<::mlir::Type>(getTarget().getType()), getOperation()->getResultTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::VectorToMMAConversionOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::VectorToWarpExecuteOnLane0Op definitions
//===----------------------------------------------------------------------===//

namespace detail {
VectorToWarpExecuteOnLane0OpGenericAdaptorBase::VectorToWarpExecuteOnLane0OpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.vector.to_warp_execute_on_lane_0", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> VectorToWarpExecuteOnLane0OpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr VectorToWarpExecuteOnLane0OpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::IntegerAttr VectorToWarpExecuteOnLane0OpGenericAdaptorBase::getWarpSizeAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, VectorToWarpExecuteOnLane0Op::getWarpSizeAttrName(*odsOpName)).dyn_cast_or_null<::mlir::IntegerAttr>();
  return attr;
}

uint64_t VectorToWarpExecuteOnLane0OpGenericAdaptorBase::getWarpSize() {
  auto attr = getWarpSizeAttr();
  return attr.getValue().getZExtValue();
}

} // namespace detail
VectorToWarpExecuteOnLane0OpAdaptor::VectorToWarpExecuteOnLane0OpAdaptor(VectorToWarpExecuteOnLane0Op op) : VectorToWarpExecuteOnLane0OpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult VectorToWarpExecuteOnLane0OpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_warp_size;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == VectorToWarpExecuteOnLane0Op::getWarpSizeAttrName(*odsOpName)) {
      tblgen_warp_size = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (tblgen_warp_size && !(((tblgen_warp_size.isa<::mlir::IntegerAttr>())) && ((tblgen_warp_size.cast<::mlir::IntegerAttr>().getType().isSignlessInteger(64)))))
    return emitError(loc, "'transform.vector.to_warp_execute_on_lane_0' op ""attribute 'warp_size' failed to satisfy constraint: 64-bit signless integer attribute");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> VectorToWarpExecuteOnLane0Op::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range VectorToWarpExecuteOnLane0Op::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::pdl::OperationType> VectorToWarpExecuteOnLane0Op::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::pdl::OperationType>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange VectorToWarpExecuteOnLane0Op::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> VectorToWarpExecuteOnLane0Op::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range VectorToWarpExecuteOnLane0Op::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::pdl::OperationType> VectorToWarpExecuteOnLane0Op::getResult() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::pdl::OperationType>>(*getODSResults(0).begin());
}

::mlir::IntegerAttr VectorToWarpExecuteOnLane0Op::getWarpSizeAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getWarpSizeAttrName()).dyn_cast_or_null<::mlir::IntegerAttr>();
}

uint64_t VectorToWarpExecuteOnLane0Op::getWarpSize() {
  auto attr = getWarpSizeAttr();
  return attr.getValue().getZExtValue();
}

void VectorToWarpExecuteOnLane0Op::setWarpSizeAttr(::mlir::IntegerAttr attr) {
  (*this)->setAttr(getWarpSizeAttrName(), attr);
}

void VectorToWarpExecuteOnLane0Op::setWarpSize(uint64_t attrValue) {
  (*this)->setAttr(getWarpSizeAttrName(), ::mlir::Builder((*this)->getContext()).getIntegerAttr(::mlir::Builder((*this)->getContext()).getIntegerType(64), attrValue));
}

void VectorToWarpExecuteOnLane0Op::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, ::mlir::IntegerAttr warp_size) {
  odsState.addOperands(target);
  if (warp_size) {
    odsState.addAttribute(getWarpSizeAttrName(odsState.name), warp_size);
  }
  odsState.addTypes(result);
}

void VectorToWarpExecuteOnLane0Op::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, ::mlir::IntegerAttr warp_size) {
  odsState.addOperands(target);
  if (warp_size) {
    odsState.addAttribute(getWarpSizeAttrName(odsState.name), warp_size);
  }
  assert(resultTypes.size() == 1u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void VectorToWarpExecuteOnLane0Op::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, uint64_t warp_size) {
  odsState.addOperands(target);
  odsState.addAttribute(getWarpSizeAttrName(odsState.name), odsBuilder.getIntegerAttr(odsBuilder.getIntegerType(64), warp_size));
  odsState.addTypes(result);
}

void VectorToWarpExecuteOnLane0Op::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, uint64_t warp_size) {
  odsState.addOperands(target);
  odsState.addAttribute(getWarpSizeAttrName(odsState.name), odsBuilder.getIntegerAttr(odsBuilder.getIntegerType(64), warp_size));
  assert(resultTypes.size() == 1u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void VectorToWarpExecuteOnLane0Op::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 1u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

void VectorToWarpExecuteOnLane0Op::populateDefaultAttrs(const ::mlir::OperationName &opName, ::mlir::NamedAttrList &attributes) {
  auto attrNames = opName.getAttributeNames();
  ::mlir::Builder odsBuilder(attrNames.front().getContext());
  if (!attributes.get(attrNames[0])) {
    attributes.append(attrNames[0], odsBuilder.getIntegerAttr(odsBuilder.getIntegerType(64), {}));
  }
}

::mlir::LogicalResult VectorToWarpExecuteOnLane0Op::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_warp_size;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == getWarpSizeAttrName()) {
      tblgen_warp_size = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_LLVMGPUExtensionsOps3(*this, tblgen_warp_size, "warp_size")))
    return ::mlir::failure();
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_LLVMGPUExtensionsOps1(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSResults(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_LLVMGPUExtensionsOps1(*this, v.getType(), "result", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult VectorToWarpExecuteOnLane0Op::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult VectorToWarpExecuteOnLane0Op::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::OpAsmParser::UnresolvedOperand targetRawOperands[1];
  ::llvm::ArrayRef<::mlir::OpAsmParser::UnresolvedOperand> targetOperands(targetRawOperands);  ::llvm::SMLoc targetOperandsLoc;
  (void)targetOperandsLoc;

  targetOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperand(targetRawOperands[0]))
    return ::mlir::failure();
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  ::mlir::Type odsBuildableType0 = parser.getBuilder().getType<::mlir::pdl::OperationType>();
  result.addTypes(odsBuildableType0);
  if (parser.resolveOperands(targetOperands, odsBuildableType0, targetOperandsLoc, result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void VectorToWarpExecuteOnLane0Op::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ';
  _odsPrinter << getTarget();
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getWarpSizeAttr();
     if(attr && (attr == odsBuilder.getIntegerAttr(odsBuilder.getIntegerType(64), {})))
       elidedAttrs.push_back("warp_size");
  }
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::VectorToWarpExecuteOnLane0Op)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::VectorWarpDistributionOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
VectorWarpDistributionOpGenericAdaptorBase::VectorWarpDistributionOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.vector.warp_distribute", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> VectorWarpDistributionOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr VectorWarpDistributionOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

} // namespace detail
VectorWarpDistributionOpAdaptor::VectorWarpDistributionOpAdaptor(VectorWarpDistributionOp op) : VectorWarpDistributionOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult VectorWarpDistributionOpAdaptor::verify(::mlir::Location loc) {
  return ::mlir::success();
}

std::pair<unsigned, unsigned> VectorWarpDistributionOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range VectorWarpDistributionOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> VectorWarpDistributionOp::getTarget() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange VectorWarpDistributionOp::getTargetMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> VectorWarpDistributionOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range VectorWarpDistributionOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::LogicalResult VectorWarpDistributionOp::verifyInvariantsImpl() {
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_LLVMGPUExtensionsOps0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult VectorWarpDistributionOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult VectorWarpDistributionOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
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

void VectorWarpDistributionOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
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
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::VectorWarpDistributionOp)


#endif  // GET_OP_CLASSES

