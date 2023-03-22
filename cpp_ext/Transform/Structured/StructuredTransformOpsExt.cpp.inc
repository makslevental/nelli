/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Op Definitions                                                             *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#ifdef GET_OP_LIST
#undef GET_OP_LIST

mlir::transform::EmitRemarkOp,
mlir::transform::LowerToLLVMOp,
mlir::transform::MatchCallbackOp,
mlir::transform::RegisterMatchCallbacksOp,
mlir::transform::TakeFirstOp
#endif  // GET_OP_LIST

#ifdef GET_OP_CLASSES
#undef GET_OP_CLASSES


//===----------------------------------------------------------------------===//
// Local Utility Method Definitions
//===----------------------------------------------------------------------===//

namespace mlir {
namespace transform {

static ::mlir::LogicalResult __mlir_ods_local_type_constraint_StructuredTransformOpsExt0(
    ::mlir::Operation *op, ::mlir::Type type, ::llvm::StringRef valueKind,
    unsigned valueIndex) {
  if (!((type.isa<::mlir::transform::TransformHandleTypeInterface>()))) {
    return op->emitOpError(valueKind) << " #" << valueIndex
        << " must be TransformHandleTypeInterface instance, but got " << type;
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_attr_constraint_StructuredTransformOpsExt0(
    ::mlir::Operation *op, ::mlir::Attribute attr, ::llvm::StringRef attrName) {
  if (attr && !((attr.isa<::mlir::StringAttr>()))) {
    return op->emitOpError("attribute '") << attrName
        << "' failed to satisfy constraint: string attribute";
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_attr_constraint_StructuredTransformOpsExt1(
    ::mlir::Operation *op, ::mlir::Attribute attr, ::llvm::StringRef attrName) {
  if (attr && !((attr.isa<::mlir::BoolAttr>()))) {
    return op->emitOpError("attribute '") << attrName
        << "' failed to satisfy constraint: bool attribute";
  }
  return ::mlir::success();
}

static ::mlir::LogicalResult __mlir_ods_local_attr_constraint_StructuredTransformOpsExt2(
    ::mlir::Operation *op, ::mlir::Attribute attr, ::llvm::StringRef attrName) {
  if (attr && !((attr.isa<::mlir::transform::FailurePropagationModeAttr>()))) {
    return op->emitOpError("attribute '") << attrName
        << "' failed to satisfy constraint: Silenceable error propagation policy";
  }
  return ::mlir::success();
}
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::EmitRemarkOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
EmitRemarkOpGenericAdaptorBase::EmitRemarkOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.emit_remark", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> EmitRemarkOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr EmitRemarkOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::StringAttr EmitRemarkOpGenericAdaptorBase::getMessageAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, EmitRemarkOp::getMessageAttrName(*odsOpName)).cast<::mlir::StringAttr>();
  return attr;
}

::llvm::StringRef EmitRemarkOpGenericAdaptorBase::getMessage() {
  auto attr = getMessageAttr();
  return attr.getValue();
}

} // namespace detail
EmitRemarkOpAdaptor::EmitRemarkOpAdaptor(EmitRemarkOp op) : EmitRemarkOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult EmitRemarkOpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_message;
  while (true) {
    if (namedAttrIt == namedAttrRange.end())
      return emitError(loc, "'transform.emit_remark' op ""requires attribute 'message'");
    if (namedAttrIt->getName() == EmitRemarkOp::getMessageAttrName(*odsOpName)) {
      tblgen_message = namedAttrIt->getValue();
      break;
    }
    ++namedAttrIt;
  }

  if (tblgen_message && !((tblgen_message.isa<::mlir::StringAttr>())))
    return emitError(loc, "'transform.emit_remark' op ""attribute 'message' failed to satisfy constraint: string attribute");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> EmitRemarkOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range EmitRemarkOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> EmitRemarkOp::getHandle() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSOperands(0).begin());
}

::mlir::MutableOperandRange EmitRemarkOp::getHandleMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> EmitRemarkOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range EmitRemarkOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::StringAttr EmitRemarkOp::getMessageAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getMessageAttrName()).cast<::mlir::StringAttr>();
}

::llvm::StringRef EmitRemarkOp::getMessage() {
  auto attr = getMessageAttr();
  return attr.getValue();
}

void EmitRemarkOp::setMessageAttr(::mlir::StringAttr attr) {
  (*this)->setAttr(getMessageAttrName(), attr);
}

void EmitRemarkOp::setMessage(::llvm::StringRef attrValue) {
  (*this)->setAttr(getMessageAttrName(), ::mlir::Builder((*this)->getContext()).getStringAttr(attrValue));
}

void EmitRemarkOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value handle, ::mlir::StringAttr message) {
  odsState.addOperands(handle);
  odsState.addAttribute(getMessageAttrName(odsState.name), message);
}

void EmitRemarkOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value handle, ::mlir::StringAttr message) {
  odsState.addOperands(handle);
  odsState.addAttribute(getMessageAttrName(odsState.name), message);
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void EmitRemarkOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value handle, ::llvm::StringRef message) {
  odsState.addOperands(handle);
  odsState.addAttribute(getMessageAttrName(odsState.name), odsBuilder.getStringAttr(message));
}

void EmitRemarkOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value handle, ::llvm::StringRef message) {
  odsState.addOperands(handle);
  odsState.addAttribute(getMessageAttrName(odsState.name), odsBuilder.getStringAttr(message));
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void EmitRemarkOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 1u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 0u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult EmitRemarkOp::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_message;
  while (true) {
    if (namedAttrIt == namedAttrRange.end())
      return emitOpError("requires attribute 'message'");
    if (namedAttrIt->getName() == getMessageAttrName()) {
      tblgen_message = namedAttrIt->getValue();
      break;
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt0(*this, tblgen_message, "message")))
    return ::mlir::failure();
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_StructuredTransformOpsExt0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult EmitRemarkOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult EmitRemarkOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::StringAttr messageAttr;
  ::mlir::OpAsmParser::UnresolvedOperand handleRawOperands[1];
  ::llvm::ArrayRef<::mlir::OpAsmParser::UnresolvedOperand> handleOperands(handleRawOperands);  ::llvm::SMLoc handleOperandsLoc;
  (void)handleOperandsLoc;
  ::mlir::Type handleRawTypes[1];
  ::llvm::ArrayRef<::mlir::Type> handleTypes(handleRawTypes);

  if (parser.parseCustomAttributeWithFallback(messageAttr, parser.getBuilder().getType<::mlir::NoneType>(), "message",
          result.attributes)) {
    return ::mlir::failure();
  }
  if (parser.parseKeyword("at"))
    return ::mlir::failure();

  handleOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperand(handleRawOperands[0]))
    return ::mlir::failure();
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  if (parser.parseColon())
    return ::mlir::failure();

  {
    ::mlir::transform::TransformHandleTypeInterface type;
    if (parser.parseCustomTypeWithFallback(type))
      return ::mlir::failure();
    handleRawTypes[0] = type;
  }
  if (parser.resolveOperands(handleOperands, handleTypes, handleOperandsLoc, result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void EmitRemarkOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ';
  _odsPrinter.printAttributeWithoutType(getMessageAttr());
  _odsPrinter << ' ' << "at";
  _odsPrinter << ' ';
  _odsPrinter << getHandle();
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  elidedAttrs.push_back("message");
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  {
    auto type = getHandle().getType();
    if (auto validType = type.dyn_cast<::mlir::transform::TransformHandleTypeInterface>())
      _odsPrinter.printStrippedAttrOrType(validType);
   else
     _odsPrinter << type;
  }
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::EmitRemarkOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::LowerToLLVMOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
LowerToLLVMOpGenericAdaptorBase::LowerToLLVMOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.lower_to_llvm", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> LowerToLLVMOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr LowerToLLVMOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::BoolAttr LowerToLLVMOpGenericAdaptorBase::getReassociateFpReductionsAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, LowerToLLVMOp::getReassociateFpReductionsAttrName(*odsOpName)).dyn_cast_or_null<::mlir::BoolAttr>();
  return attr;
}

bool LowerToLLVMOpGenericAdaptorBase::getReassociateFpReductions() {
  auto attr = getReassociateFpReductionsAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOpGenericAdaptorBase::getEnableIndexOptimizationsAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, LowerToLLVMOp::getEnableIndexOptimizationsAttrName(*odsOpName)).dyn_cast_or_null<::mlir::BoolAttr>();
  return attr;
}

bool LowerToLLVMOpGenericAdaptorBase::getEnableIndexOptimizations() {
  auto attr = getEnableIndexOptimizationsAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOpGenericAdaptorBase::getEnableArmNeonAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, LowerToLLVMOp::getEnableArmNeonAttrName(*odsOpName)).dyn_cast_or_null<::mlir::BoolAttr>();
  return attr;
}

bool LowerToLLVMOpGenericAdaptorBase::getEnableArmNeon() {
  auto attr = getEnableArmNeonAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOpGenericAdaptorBase::getEnableArmSveAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, LowerToLLVMOp::getEnableArmSveAttrName(*odsOpName)).dyn_cast_or_null<::mlir::BoolAttr>();
  return attr;
}

bool LowerToLLVMOpGenericAdaptorBase::getEnableArmSve() {
  auto attr = getEnableArmSveAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOpGenericAdaptorBase::getEnableAmxAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, LowerToLLVMOp::getEnableAmxAttrName(*odsOpName)).dyn_cast_or_null<::mlir::BoolAttr>();
  return attr;
}

bool LowerToLLVMOpGenericAdaptorBase::getEnableAmx() {
  auto attr = getEnableAmxAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOpGenericAdaptorBase::getEnableX86vectorAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, LowerToLLVMOp::getEnableX86vectorAttrName(*odsOpName)).dyn_cast_or_null<::mlir::BoolAttr>();
  return attr;
}

bool LowerToLLVMOpGenericAdaptorBase::getEnableX86vector() {
  auto attr = getEnableX86vectorAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOpGenericAdaptorBase::getEnableAsyncAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 0, LowerToLLVMOp::getEnableAsyncAttrName(*odsOpName)).dyn_cast_or_null<::mlir::BoolAttr>();
  return attr;
}

bool LowerToLLVMOpGenericAdaptorBase::getEnableAsync() {
  auto attr = getEnableAsyncAttr();
  return attr.getValue();
}

} // namespace detail
LowerToLLVMOpAdaptor::LowerToLLVMOpAdaptor(LowerToLLVMOp op) : LowerToLLVMOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult LowerToLLVMOpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_enable_amx;
  ::mlir::Attribute tblgen_enable_arm_neon;
  ::mlir::Attribute tblgen_enable_arm_sve;
  ::mlir::Attribute tblgen_enable_async;
  ::mlir::Attribute tblgen_enable_index_optimizations;
  ::mlir::Attribute tblgen_enable_x86vector;
  ::mlir::Attribute tblgen_reassociate_fp_reductions;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == LowerToLLVMOp::getEnableAmxAttrName(*odsOpName)) {
      tblgen_enable_amx = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == LowerToLLVMOp::getEnableArmNeonAttrName(*odsOpName)) {
      tblgen_enable_arm_neon = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == LowerToLLVMOp::getEnableArmSveAttrName(*odsOpName)) {
      tblgen_enable_arm_sve = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == LowerToLLVMOp::getEnableAsyncAttrName(*odsOpName)) {
      tblgen_enable_async = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == LowerToLLVMOp::getEnableIndexOptimizationsAttrName(*odsOpName)) {
      tblgen_enable_index_optimizations = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == LowerToLLVMOp::getEnableX86vectorAttrName(*odsOpName)) {
      tblgen_enable_x86vector = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == LowerToLLVMOp::getReassociateFpReductionsAttrName(*odsOpName)) {
      tblgen_reassociate_fp_reductions = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (tblgen_reassociate_fp_reductions && !((tblgen_reassociate_fp_reductions.isa<::mlir::BoolAttr>())))
    return emitError(loc, "'transform.lower_to_llvm' op ""attribute 'reassociate_fp_reductions' failed to satisfy constraint: bool attribute");

  if (tblgen_enable_index_optimizations && !((tblgen_enable_index_optimizations.isa<::mlir::BoolAttr>())))
    return emitError(loc, "'transform.lower_to_llvm' op ""attribute 'enable_index_optimizations' failed to satisfy constraint: bool attribute");

  if (tblgen_enable_arm_neon && !((tblgen_enable_arm_neon.isa<::mlir::BoolAttr>())))
    return emitError(loc, "'transform.lower_to_llvm' op ""attribute 'enable_arm_neon' failed to satisfy constraint: bool attribute");

  if (tblgen_enable_arm_sve && !((tblgen_enable_arm_sve.isa<::mlir::BoolAttr>())))
    return emitError(loc, "'transform.lower_to_llvm' op ""attribute 'enable_arm_sve' failed to satisfy constraint: bool attribute");

  if (tblgen_enable_amx && !((tblgen_enable_amx.isa<::mlir::BoolAttr>())))
    return emitError(loc, "'transform.lower_to_llvm' op ""attribute 'enable_amx' failed to satisfy constraint: bool attribute");

  if (tblgen_enable_x86vector && !((tblgen_enable_x86vector.isa<::mlir::BoolAttr>())))
    return emitError(loc, "'transform.lower_to_llvm' op ""attribute 'enable_x86vector' failed to satisfy constraint: bool attribute");

  if (tblgen_enable_async && !((tblgen_enable_async.isa<::mlir::BoolAttr>())))
    return emitError(loc, "'transform.lower_to_llvm' op ""attribute 'enable_async' failed to satisfy constraint: bool attribute");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> LowerToLLVMOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range LowerToLLVMOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

std::pair<unsigned, unsigned> LowerToLLVMOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range LowerToLLVMOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::BoolAttr LowerToLLVMOp::getReassociateFpReductionsAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getReassociateFpReductionsAttrName()).dyn_cast_or_null<::mlir::BoolAttr>();
}

bool LowerToLLVMOp::getReassociateFpReductions() {
  auto attr = getReassociateFpReductionsAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOp::getEnableIndexOptimizationsAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getEnableIndexOptimizationsAttrName()).dyn_cast_or_null<::mlir::BoolAttr>();
}

bool LowerToLLVMOp::getEnableIndexOptimizations() {
  auto attr = getEnableIndexOptimizationsAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOp::getEnableArmNeonAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getEnableArmNeonAttrName()).dyn_cast_or_null<::mlir::BoolAttr>();
}

bool LowerToLLVMOp::getEnableArmNeon() {
  auto attr = getEnableArmNeonAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOp::getEnableArmSveAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getEnableArmSveAttrName()).dyn_cast_or_null<::mlir::BoolAttr>();
}

bool LowerToLLVMOp::getEnableArmSve() {
  auto attr = getEnableArmSveAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOp::getEnableAmxAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getEnableAmxAttrName()).dyn_cast_or_null<::mlir::BoolAttr>();
}

bool LowerToLLVMOp::getEnableAmx() {
  auto attr = getEnableAmxAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOp::getEnableX86vectorAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getEnableX86vectorAttrName()).dyn_cast_or_null<::mlir::BoolAttr>();
}

bool LowerToLLVMOp::getEnableX86vector() {
  auto attr = getEnableX86vectorAttr();
  return attr.getValue();
}

::mlir::BoolAttr LowerToLLVMOp::getEnableAsyncAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 0, getEnableAsyncAttrName()).dyn_cast_or_null<::mlir::BoolAttr>();
}

bool LowerToLLVMOp::getEnableAsync() {
  auto attr = getEnableAsyncAttr();
  return attr.getValue();
}

void LowerToLLVMOp::setReassociateFpReductionsAttr(::mlir::BoolAttr attr) {
  (*this)->setAttr(getReassociateFpReductionsAttrName(), attr);
}

void LowerToLLVMOp::setReassociateFpReductions(bool attrValue) {
  (*this)->setAttr(getReassociateFpReductionsAttrName(), ::mlir::Builder((*this)->getContext()).getBoolAttr(attrValue));
}

void LowerToLLVMOp::setEnableIndexOptimizationsAttr(::mlir::BoolAttr attr) {
  (*this)->setAttr(getEnableIndexOptimizationsAttrName(), attr);
}

void LowerToLLVMOp::setEnableIndexOptimizations(bool attrValue) {
  (*this)->setAttr(getEnableIndexOptimizationsAttrName(), ::mlir::Builder((*this)->getContext()).getBoolAttr(attrValue));
}

void LowerToLLVMOp::setEnableArmNeonAttr(::mlir::BoolAttr attr) {
  (*this)->setAttr(getEnableArmNeonAttrName(), attr);
}

void LowerToLLVMOp::setEnableArmNeon(bool attrValue) {
  (*this)->setAttr(getEnableArmNeonAttrName(), ::mlir::Builder((*this)->getContext()).getBoolAttr(attrValue));
}

void LowerToLLVMOp::setEnableArmSveAttr(::mlir::BoolAttr attr) {
  (*this)->setAttr(getEnableArmSveAttrName(), attr);
}

void LowerToLLVMOp::setEnableArmSve(bool attrValue) {
  (*this)->setAttr(getEnableArmSveAttrName(), ::mlir::Builder((*this)->getContext()).getBoolAttr(attrValue));
}

void LowerToLLVMOp::setEnableAmxAttr(::mlir::BoolAttr attr) {
  (*this)->setAttr(getEnableAmxAttrName(), attr);
}

void LowerToLLVMOp::setEnableAmx(bool attrValue) {
  (*this)->setAttr(getEnableAmxAttrName(), ::mlir::Builder((*this)->getContext()).getBoolAttr(attrValue));
}

void LowerToLLVMOp::setEnableX86vectorAttr(::mlir::BoolAttr attr) {
  (*this)->setAttr(getEnableX86vectorAttrName(), attr);
}

void LowerToLLVMOp::setEnableX86vector(bool attrValue) {
  (*this)->setAttr(getEnableX86vectorAttrName(), ::mlir::Builder((*this)->getContext()).getBoolAttr(attrValue));
}

void LowerToLLVMOp::setEnableAsyncAttr(::mlir::BoolAttr attr) {
  (*this)->setAttr(getEnableAsyncAttrName(), attr);
}

void LowerToLLVMOp::setEnableAsync(bool attrValue) {
  (*this)->setAttr(getEnableAsyncAttrName(), ::mlir::Builder((*this)->getContext()).getBoolAttr(attrValue));
}

void LowerToLLVMOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::BoolAttr reassociate_fp_reductions, ::mlir::BoolAttr enable_index_optimizations, ::mlir::BoolAttr enable_arm_neon, ::mlir::BoolAttr enable_arm_sve, ::mlir::BoolAttr enable_amx, ::mlir::BoolAttr enable_x86vector, ::mlir::BoolAttr enable_async) {
  if (reassociate_fp_reductions) {
    odsState.addAttribute(getReassociateFpReductionsAttrName(odsState.name), reassociate_fp_reductions);
  }
  if (enable_index_optimizations) {
    odsState.addAttribute(getEnableIndexOptimizationsAttrName(odsState.name), enable_index_optimizations);
  }
  if (enable_arm_neon) {
    odsState.addAttribute(getEnableArmNeonAttrName(odsState.name), enable_arm_neon);
  }
  if (enable_arm_sve) {
    odsState.addAttribute(getEnableArmSveAttrName(odsState.name), enable_arm_sve);
  }
  if (enable_amx) {
    odsState.addAttribute(getEnableAmxAttrName(odsState.name), enable_amx);
  }
  if (enable_x86vector) {
    odsState.addAttribute(getEnableX86vectorAttrName(odsState.name), enable_x86vector);
  }
  if (enable_async) {
    odsState.addAttribute(getEnableAsyncAttrName(odsState.name), enable_async);
  }
}

void LowerToLLVMOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::BoolAttr reassociate_fp_reductions, ::mlir::BoolAttr enable_index_optimizations, ::mlir::BoolAttr enable_arm_neon, ::mlir::BoolAttr enable_arm_sve, ::mlir::BoolAttr enable_amx, ::mlir::BoolAttr enable_x86vector, ::mlir::BoolAttr enable_async) {
  if (reassociate_fp_reductions) {
    odsState.addAttribute(getReassociateFpReductionsAttrName(odsState.name), reassociate_fp_reductions);
  }
  if (enable_index_optimizations) {
    odsState.addAttribute(getEnableIndexOptimizationsAttrName(odsState.name), enable_index_optimizations);
  }
  if (enable_arm_neon) {
    odsState.addAttribute(getEnableArmNeonAttrName(odsState.name), enable_arm_neon);
  }
  if (enable_arm_sve) {
    odsState.addAttribute(getEnableArmSveAttrName(odsState.name), enable_arm_sve);
  }
  if (enable_amx) {
    odsState.addAttribute(getEnableAmxAttrName(odsState.name), enable_amx);
  }
  if (enable_x86vector) {
    odsState.addAttribute(getEnableX86vectorAttrName(odsState.name), enable_x86vector);
  }
  if (enable_async) {
    odsState.addAttribute(getEnableAsyncAttrName(odsState.name), enable_async);
  }
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void LowerToLLVMOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, bool reassociate_fp_reductions, bool enable_index_optimizations, bool enable_arm_neon, bool enable_arm_sve, bool enable_amx, bool enable_x86vector, bool enable_async) {
  odsState.addAttribute(getReassociateFpReductionsAttrName(odsState.name), odsBuilder.getBoolAttr(reassociate_fp_reductions));
  odsState.addAttribute(getEnableIndexOptimizationsAttrName(odsState.name), odsBuilder.getBoolAttr(enable_index_optimizations));
  odsState.addAttribute(getEnableArmNeonAttrName(odsState.name), odsBuilder.getBoolAttr(enable_arm_neon));
  odsState.addAttribute(getEnableArmSveAttrName(odsState.name), odsBuilder.getBoolAttr(enable_arm_sve));
  odsState.addAttribute(getEnableAmxAttrName(odsState.name), odsBuilder.getBoolAttr(enable_amx));
  odsState.addAttribute(getEnableX86vectorAttrName(odsState.name), odsBuilder.getBoolAttr(enable_x86vector));
  odsState.addAttribute(getEnableAsyncAttrName(odsState.name), odsBuilder.getBoolAttr(enable_async));
}

void LowerToLLVMOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, bool reassociate_fp_reductions, bool enable_index_optimizations, bool enable_arm_neon, bool enable_arm_sve, bool enable_amx, bool enable_x86vector, bool enable_async) {
  odsState.addAttribute(getReassociateFpReductionsAttrName(odsState.name), odsBuilder.getBoolAttr(reassociate_fp_reductions));
  odsState.addAttribute(getEnableIndexOptimizationsAttrName(odsState.name), odsBuilder.getBoolAttr(enable_index_optimizations));
  odsState.addAttribute(getEnableArmNeonAttrName(odsState.name), odsBuilder.getBoolAttr(enable_arm_neon));
  odsState.addAttribute(getEnableArmSveAttrName(odsState.name), odsBuilder.getBoolAttr(enable_arm_sve));
  odsState.addAttribute(getEnableAmxAttrName(odsState.name), odsBuilder.getBoolAttr(enable_amx));
  odsState.addAttribute(getEnableX86vectorAttrName(odsState.name), odsBuilder.getBoolAttr(enable_x86vector));
  odsState.addAttribute(getEnableAsyncAttrName(odsState.name), odsBuilder.getBoolAttr(enable_async));
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void LowerToLLVMOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 0u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 0u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

void LowerToLLVMOp::populateDefaultAttrs(const ::mlir::OperationName &opName, ::mlir::NamedAttrList &attributes) {
  auto attrNames = opName.getAttributeNames();
  ::mlir::Builder odsBuilder(attrNames.front().getContext());
  if (!attributes.get(attrNames[6])) {
    attributes.append(attrNames[6], odsBuilder.getBoolAttr(false));
  }
  if (!attributes.get(attrNames[4])) {
    attributes.append(attrNames[4], odsBuilder.getBoolAttr(false));
  }
  if (!attributes.get(attrNames[1])) {
    attributes.append(attrNames[1], odsBuilder.getBoolAttr(false));
  }
  if (!attributes.get(attrNames[2])) {
    attributes.append(attrNames[2], odsBuilder.getBoolAttr(false));
  }
  if (!attributes.get(attrNames[0])) {
    attributes.append(attrNames[0], odsBuilder.getBoolAttr(false));
  }
  if (!attributes.get(attrNames[5])) {
    attributes.append(attrNames[5], odsBuilder.getBoolAttr(false));
  }
  if (!attributes.get(attrNames[3])) {
    attributes.append(attrNames[3], odsBuilder.getBoolAttr(false));
  }
}

::mlir::LogicalResult LowerToLLVMOp::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_enable_amx;
  ::mlir::Attribute tblgen_enable_arm_neon;
  ::mlir::Attribute tblgen_enable_arm_sve;
  ::mlir::Attribute tblgen_enable_async;
  ::mlir::Attribute tblgen_enable_index_optimizations;
  ::mlir::Attribute tblgen_enable_x86vector;
  ::mlir::Attribute tblgen_reassociate_fp_reductions;
  while (true) {
    if (namedAttrIt == namedAttrRange.end()) {
      break;
    }
    else if (namedAttrIt->getName() == getEnableAmxAttrName()) {
      tblgen_enable_amx = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getEnableArmNeonAttrName()) {
      tblgen_enable_arm_neon = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getEnableArmSveAttrName()) {
      tblgen_enable_arm_sve = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getEnableAsyncAttrName()) {
      tblgen_enable_async = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getEnableIndexOptimizationsAttrName()) {
      tblgen_enable_index_optimizations = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getEnableX86vectorAttrName()) {
      tblgen_enable_x86vector = namedAttrIt->getValue();
    }
    else if (namedAttrIt->getName() == getReassociateFpReductionsAttrName()) {
      tblgen_reassociate_fp_reductions = namedAttrIt->getValue();
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt1(*this, tblgen_reassociate_fp_reductions, "reassociate_fp_reductions")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt1(*this, tblgen_enable_index_optimizations, "enable_index_optimizations")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt1(*this, tblgen_enable_arm_neon, "enable_arm_neon")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt1(*this, tblgen_enable_arm_sve, "enable_arm_sve")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt1(*this, tblgen_enable_amx, "enable_amx")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt1(*this, tblgen_enable_x86vector, "enable_x86vector")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt1(*this, tblgen_enable_async, "enable_async")))
    return ::mlir::failure();
  return ::mlir::success();
}

::mlir::LogicalResult LowerToLLVMOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult LowerToLLVMOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  return ::mlir::success();
}

void LowerToLLVMOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getReassociateFpReductionsAttr();
     if(attr && (attr == odsBuilder.getBoolAttr(false)))
       elidedAttrs.push_back("reassociate_fp_reductions");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getEnableIndexOptimizationsAttr();
     if(attr && (attr == odsBuilder.getBoolAttr(false)))
       elidedAttrs.push_back("enable_index_optimizations");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getEnableArmNeonAttr();
     if(attr && (attr == odsBuilder.getBoolAttr(false)))
       elidedAttrs.push_back("enable_arm_neon");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getEnableArmSveAttr();
     if(attr && (attr == odsBuilder.getBoolAttr(false)))
       elidedAttrs.push_back("enable_arm_sve");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getEnableAmxAttr();
     if(attr && (attr == odsBuilder.getBoolAttr(false)))
       elidedAttrs.push_back("enable_amx");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getEnableX86vectorAttr();
     if(attr && (attr == odsBuilder.getBoolAttr(false)))
       elidedAttrs.push_back("enable_x86vector");
  }
  {
     ::mlir::Builder odsBuilder(getContext());
     ::mlir::Attribute attr = getEnableAsyncAttr();
     if(attr && (attr == odsBuilder.getBoolAttr(false)))
       elidedAttrs.push_back("enable_async");
  }
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::LowerToLLVMOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::MatchCallbackOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
MatchCallbackOpGenericAdaptorBase::MatchCallbackOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.match_callback", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> MatchCallbackOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  bool isVariadic[] = {true};
  int prevVariadicCount = 0;
  for (unsigned i = 0; i < index; ++i)
    if (isVariadic[i]) ++prevVariadicCount;

  // Calculate how many dynamic values a static variadic operand corresponds to.
  // This assumes all static variadic operands have the same dynamic value count.
  int variadicSize = (odsOperandsSize - 0) / 1;
  // `index` passed in as the parameter is the static index which counts each
  // operand (variadic or not) as size 1. So here for each previous static variadic
  // operand, we need to offset by (variadicSize - 1) to get where the dynamic
  // value pack for this static operand starts.
  int start = index + (variadicSize - 1) * prevVariadicCount;
  int size = isVariadic[index] ? variadicSize : 1;
  return {start, size};
}

::mlir::DictionaryAttr MatchCallbackOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

::mlir::StringAttr MatchCallbackOpGenericAdaptorBase::getCallbackNameAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 0, odsAttrs.end() - 1, MatchCallbackOp::getCallbackNameAttrName(*odsOpName)).cast<::mlir::StringAttr>();
  return attr;
}

::llvm::StringRef MatchCallbackOpGenericAdaptorBase::getCallbackName() {
  auto attr = getCallbackNameAttr();
  return attr.getValue();
}

::mlir::transform::FailurePropagationModeAttr MatchCallbackOpGenericAdaptorBase::getFailurePropagationModeAttr() {
  assert(odsAttrs && "no attributes when constructing adapter");
  auto attr = ::mlir::impl::getAttrFromSortedRange(odsAttrs.begin() + 1, odsAttrs.end() - 0, MatchCallbackOp::getFailurePropagationModeAttrName(*odsOpName)).cast<::mlir::transform::FailurePropagationModeAttr>();
  return attr;
}

::mlir::transform::FailurePropagationMode MatchCallbackOpGenericAdaptorBase::getFailurePropagationMode() {
  auto attr = getFailurePropagationModeAttr();
  return attr.getValue();
}

} // namespace detail
MatchCallbackOpAdaptor::MatchCallbackOpAdaptor(MatchCallbackOp op) : MatchCallbackOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult MatchCallbackOpAdaptor::verify(::mlir::Location loc) {
  auto namedAttrRange = odsAttrs;
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_callback_name;
  while (true) {
    if (namedAttrIt == namedAttrRange.end())
      return emitError(loc, "'transform.match_callback' op ""requires attribute 'callback_name'");
    if (namedAttrIt->getName() == MatchCallbackOp::getCallbackNameAttrName(*odsOpName)) {
      tblgen_callback_name = namedAttrIt->getValue();
      break;
    }
    ++namedAttrIt;
  }
  ::mlir::Attribute tblgen_failure_propagation_mode;
  while (true) {
    if (namedAttrIt == namedAttrRange.end())
      return emitError(loc, "'transform.match_callback' op ""requires attribute 'failure_propagation_mode'");
    if (namedAttrIt->getName() == MatchCallbackOp::getFailurePropagationModeAttrName(*odsOpName)) {
      tblgen_failure_propagation_mode = namedAttrIt->getValue();
      break;
    }
    ++namedAttrIt;
  }

  if (tblgen_callback_name && !((tblgen_callback_name.isa<::mlir::StringAttr>())))
    return emitError(loc, "'transform.match_callback' op ""attribute 'callback_name' failed to satisfy constraint: string attribute");

  if (tblgen_failure_propagation_mode && !((tblgen_failure_propagation_mode.isa<::mlir::transform::FailurePropagationModeAttr>())))
    return emitError(loc, "'transform.match_callback' op ""attribute 'failure_propagation_mode' failed to satisfy constraint: Silenceable error propagation policy");
  return ::mlir::success();
}

std::pair<unsigned, unsigned> MatchCallbackOp::getODSOperandIndexAndLength(unsigned index) {
  bool isVariadic[] = {true};
  int prevVariadicCount = 0;
  for (unsigned i = 0; i < index; ++i)
    if (isVariadic[i]) ++prevVariadicCount;

  // Calculate how many dynamic values a static variadic operand corresponds to.
  // This assumes all static variadic operands have the same dynamic value count.
  int variadicSize = (getOperation()->getNumOperands() - 0) / 1;
  // `index` passed in as the parameter is the static index which counts each
  // operand (variadic or not) as size 1. So here for each previous static variadic
  // operand, we need to offset by (variadicSize - 1) to get where the dynamic
  // value pack for this static operand starts.
  int start = index + (variadicSize - 1) * prevVariadicCount;
  int size = isVariadic[index] ? variadicSize : 1;
  return {start, size};
}

::mlir::Operation::operand_range MatchCallbackOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::Operation::operand_range MatchCallbackOp::getInputs() {
  return getODSOperands(0);
}

::mlir::MutableOperandRange MatchCallbackOp::getInputsMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> MatchCallbackOp::getODSResultIndexAndLength(unsigned index) {
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

::mlir::Operation::result_range MatchCallbackOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::Operation::result_range MatchCallbackOp::getOutputs() {
  return getODSResults(0);
}

::mlir::StringAttr MatchCallbackOp::getCallbackNameAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 0, (*this)->getAttrs().end() - 1, getCallbackNameAttrName()).cast<::mlir::StringAttr>();
}

::llvm::StringRef MatchCallbackOp::getCallbackName() {
  auto attr = getCallbackNameAttr();
  return attr.getValue();
}

::mlir::transform::FailurePropagationModeAttr MatchCallbackOp::getFailurePropagationModeAttr() {
  return ::mlir::impl::getAttrFromSortedRange((*this)->getAttrs().begin() + 1, (*this)->getAttrs().end() - 0, getFailurePropagationModeAttrName()).cast<::mlir::transform::FailurePropagationModeAttr>();
}

::mlir::transform::FailurePropagationMode MatchCallbackOp::getFailurePropagationMode() {
  auto attr = getFailurePropagationModeAttr();
  return attr.getValue();
}

void MatchCallbackOp::setCallbackNameAttr(::mlir::StringAttr attr) {
  (*this)->setAttr(getCallbackNameAttrName(), attr);
}

void MatchCallbackOp::setCallbackName(::llvm::StringRef attrValue) {
  (*this)->setAttr(getCallbackNameAttrName(), ::mlir::Builder((*this)->getContext()).getStringAttr(attrValue));
}

void MatchCallbackOp::setFailurePropagationModeAttr(::mlir::transform::FailurePropagationModeAttr attr) {
  (*this)->setAttr(getFailurePropagationModeAttrName(), attr);
}

void MatchCallbackOp::setFailurePropagationMode(::mlir::transform::FailurePropagationMode attrValue) {
  (*this)->setAttr(getFailurePropagationModeAttrName(), ::mlir::transform::FailurePropagationModeAttr::get(::mlir::Builder((*this)->getContext()).getContext(), attrValue));
}

void MatchCallbackOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange outputs, ::mlir::StringAttr callback_name, ::mlir::transform::FailurePropagationModeAttr failure_propagation_mode, ::mlir::ValueRange inputs) {
  odsState.addOperands(inputs);
  odsState.addAttribute(getCallbackNameAttrName(odsState.name), callback_name);
  odsState.addAttribute(getFailurePropagationModeAttrName(odsState.name), failure_propagation_mode);
  odsState.addTypes(outputs);
}

void MatchCallbackOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange outputs, ::llvm::StringRef callback_name, ::mlir::transform::FailurePropagationMode failure_propagation_mode, ::mlir::ValueRange inputs) {
  odsState.addOperands(inputs);
  odsState.addAttribute(getCallbackNameAttrName(odsState.name), odsBuilder.getStringAttr(callback_name));
  odsState.addAttribute(getFailurePropagationModeAttrName(odsState.name), ::mlir::transform::FailurePropagationModeAttr::get(odsBuilder.getContext(), failure_propagation_mode));
  odsState.addTypes(outputs);
}

void MatchCallbackOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult MatchCallbackOp::verifyInvariantsImpl() {
  auto namedAttrRange = (*this)->getAttrs();
  auto namedAttrIt = namedAttrRange.begin();
  ::mlir::Attribute tblgen_callback_name;
  while (true) {
    if (namedAttrIt == namedAttrRange.end())
      return emitOpError("requires attribute 'callback_name'");
    if (namedAttrIt->getName() == getCallbackNameAttrName()) {
      tblgen_callback_name = namedAttrIt->getValue();
      break;
    }
    ++namedAttrIt;
  }
  ::mlir::Attribute tblgen_failure_propagation_mode;
  while (true) {
    if (namedAttrIt == namedAttrRange.end())
      return emitOpError("requires attribute 'failure_propagation_mode'");
    if (namedAttrIt->getName() == getFailurePropagationModeAttrName()) {
      tblgen_failure_propagation_mode = namedAttrIt->getValue();
      break;
    }
    ++namedAttrIt;
  }

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt0(*this, tblgen_callback_name, "callback_name")))
    return ::mlir::failure();

  if (::mlir::failed(__mlir_ods_local_attr_constraint_StructuredTransformOpsExt2(*this, tblgen_failure_propagation_mode, "failure_propagation_mode")))
    return ::mlir::failure();
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_StructuredTransformOpsExt0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSResults(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_StructuredTransformOpsExt0(*this, v.getType(), "result", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult MatchCallbackOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult MatchCallbackOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::mlir::transform::FailurePropagationModeAttr failure_propagation_modeAttr;
  ::mlir::StringAttr callback_nameAttr;
  ::llvm::SmallVector<::mlir::OpAsmParser::UnresolvedOperand, 4> inputsOperands;
  ::llvm::SMLoc inputsOperandsLoc;
  (void)inputsOperandsLoc;
  ::llvm::ArrayRef<::mlir::Type> inputsTypes;
  ::llvm::ArrayRef<::mlir::Type> outputsTypes;
  if (parser.parseKeyword("failures"))
    return ::mlir::failure();
  if (parser.parseLParen())
    return ::mlir::failure();

  {
    ::llvm::StringRef attrStr;
    ::mlir::NamedAttrList attrStorage;
    auto loc = parser.getCurrentLocation();
    if (parser.parseOptionalKeyword(&attrStr, {"propagate","suppress"})) {
      ::mlir::StringAttr attrVal;
      ::mlir::OptionalParseResult parseResult =
        parser.parseOptionalAttribute(attrVal,
                                      parser.getBuilder().getNoneType(),
                                      "failure_propagation_mode", attrStorage);
      if (parseResult.has_value()) {
        if (failed(*parseResult))
          return ::mlir::failure();
        attrStr = attrVal.getValue();
      } else {
        return parser.emitError(loc, "expected string or keyword containing one of the following enum values for attribute 'failure_propagation_mode' [propagate, suppress]");
      }
    }
    if (!attrStr.empty()) {
      auto attrOptional = ::mlir::transform::symbolizeFailurePropagationMode(attrStr);
      if (!attrOptional)
        return parser.emitError(loc, "invalid ")
               << "failure_propagation_mode attribute specification: \"" << attrStr << '"';;

      failure_propagation_modeAttr = ::mlir::transform::FailurePropagationModeAttr::get(parser.getBuilder().getContext(), *attrOptional);
      result.addAttribute("failure_propagation_mode", failure_propagation_modeAttr);
    }
  }
  if (parser.parseRParen())
    return ::mlir::failure();

  if (parser.parseCustomAttributeWithFallback(callback_nameAttr, parser.getBuilder().getType<::mlir::NoneType>(), "callback_name",
          result.attributes)) {
    return ::mlir::failure();
  }
  if (parser.parseLParen())
    return ::mlir::failure();

  inputsOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperandList(inputsOperands))
    return ::mlir::failure();
  if (parser.parseRParen())
    return ::mlir::failure();
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  if (parser.parseColon())
    return ::mlir::failure();

  ::mlir::FunctionType inputs__outputs_functionType;
  if (parser.parseType(inputs__outputs_functionType))
    return ::mlir::failure();
  inputsTypes = inputs__outputs_functionType.getInputs();
  outputsTypes = inputs__outputs_functionType.getResults();
  result.addTypes(outputsTypes);
  if (parser.resolveOperands(inputsOperands, inputsTypes, inputsOperandsLoc, result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void MatchCallbackOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ' << "failures";
  _odsPrinter << "(";

  {
    auto caseValue = getFailurePropagationMode();
    auto caseValueStr = stringifyFailurePropagationMode(caseValue);
    _odsPrinter << caseValueStr;
  }
  _odsPrinter << ")";
  _odsPrinter << ' ';
  _odsPrinter.printAttributeWithoutType(getCallbackNameAttr());
  _odsPrinter << "(";
  _odsPrinter << getInputs();
  _odsPrinter << ")";
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  elidedAttrs.push_back("failure_propagation_mode");
  elidedAttrs.push_back("callback_name");
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(getInputs().getTypes(), getOutputs().getTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::MatchCallbackOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::RegisterMatchCallbacksOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
RegisterMatchCallbacksOpGenericAdaptorBase::RegisterMatchCallbacksOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.register_match_callbacks", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> RegisterMatchCallbacksOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  return {index, 1};
}

::mlir::DictionaryAttr RegisterMatchCallbacksOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

} // namespace detail
RegisterMatchCallbacksOpAdaptor::RegisterMatchCallbacksOpAdaptor(RegisterMatchCallbacksOp op) : RegisterMatchCallbacksOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult RegisterMatchCallbacksOpAdaptor::verify(::mlir::Location loc) {
  return ::mlir::success();
}

std::pair<unsigned, unsigned> RegisterMatchCallbacksOp::getODSOperandIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::operand_range RegisterMatchCallbacksOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

std::pair<unsigned, unsigned> RegisterMatchCallbacksOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range RegisterMatchCallbacksOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

void RegisterMatchCallbacksOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState) {
}

void RegisterMatchCallbacksOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes) {
  assert(resultTypes.size() == 0u && "mismatched number of results");
  odsState.addTypes(resultTypes);
}

void RegisterMatchCallbacksOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  assert(operands.size() == 0u && "mismatched number of parameters");
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 0u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult RegisterMatchCallbacksOp::verifyInvariantsImpl() {
  return ::mlir::success();
}

::mlir::LogicalResult RegisterMatchCallbacksOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult RegisterMatchCallbacksOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  return ::mlir::success();
}

void RegisterMatchCallbacksOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::RegisterMatchCallbacksOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::TakeFirstOp definitions
//===----------------------------------------------------------------------===//

namespace detail {
TakeFirstOpGenericAdaptorBase::TakeFirstOpGenericAdaptorBase(::mlir::DictionaryAttr attrs, ::mlir::RegionRange regions) : odsAttrs(attrs), odsRegions(regions) {  if (odsAttrs)
    odsOpName.emplace("transform.take_first", odsAttrs.getContext());
}

std::pair<unsigned, unsigned> TakeFirstOpGenericAdaptorBase::getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize) {
  bool isVariadic[] = {true};
  int prevVariadicCount = 0;
  for (unsigned i = 0; i < index; ++i)
    if (isVariadic[i]) ++prevVariadicCount;

  // Calculate how many dynamic values a static variadic operand corresponds to.
  // This assumes all static variadic operands have the same dynamic value count.
  int variadicSize = (odsOperandsSize - 0) / 1;
  // `index` passed in as the parameter is the static index which counts each
  // operand (variadic or not) as size 1. So here for each previous static variadic
  // operand, we need to offset by (variadicSize - 1) to get where the dynamic
  // value pack for this static operand starts.
  int start = index + (variadicSize - 1) * prevVariadicCount;
  int size = isVariadic[index] ? variadicSize : 1;
  return {start, size};
}

::mlir::DictionaryAttr TakeFirstOpGenericAdaptorBase::getAttributes() {
  return odsAttrs;
}

} // namespace detail
TakeFirstOpAdaptor::TakeFirstOpAdaptor(TakeFirstOp op) : TakeFirstOpAdaptor(op->getOperands(), op->getAttrDictionary(), op->getRegions()) {}

::mlir::LogicalResult TakeFirstOpAdaptor::verify(::mlir::Location loc) {
  return ::mlir::success();
}

void TakeFirstOp::getAsmResultNames(::mlir::OpAsmSetValueNameFn setNameFn) {
  auto resultGroup0 = getODSResults(0);
  if (!resultGroup0.empty())
    setNameFn(*resultGroup0.begin(), "first");
  auto resultGroup1 = getODSResults(1);
  if (!resultGroup1.empty())
    setNameFn(*resultGroup1.begin(), "rest");
}

std::pair<unsigned, unsigned> TakeFirstOp::getODSOperandIndexAndLength(unsigned index) {
  bool isVariadic[] = {true};
  int prevVariadicCount = 0;
  for (unsigned i = 0; i < index; ++i)
    if (isVariadic[i]) ++prevVariadicCount;

  // Calculate how many dynamic values a static variadic operand corresponds to.
  // This assumes all static variadic operands have the same dynamic value count.
  int variadicSize = (getOperation()->getNumOperands() - 0) / 1;
  // `index` passed in as the parameter is the static index which counts each
  // operand (variadic or not) as size 1. So here for each previous static variadic
  // operand, we need to offset by (variadicSize - 1) to get where the dynamic
  // value pack for this static operand starts.
  int start = index + (variadicSize - 1) * prevVariadicCount;
  int size = isVariadic[index] ? variadicSize : 1;
  return {start, size};
}

::mlir::Operation::operand_range TakeFirstOp::getODSOperands(unsigned index) {
  auto valueRange = getODSOperandIndexAndLength(index);
  return {std::next(getOperation()->operand_begin(), valueRange.first),
           std::next(getOperation()->operand_begin(), valueRange.first + valueRange.second)};
}

::mlir::Operation::operand_range TakeFirstOp::getInputs() {
  return getODSOperands(0);
}

::mlir::MutableOperandRange TakeFirstOp::getInputsMutable() {
  auto range = getODSOperandIndexAndLength(0);
  auto mutableRange = ::mlir::MutableOperandRange(getOperation(), range.first, range.second);
  return mutableRange;
}

std::pair<unsigned, unsigned> TakeFirstOp::getODSResultIndexAndLength(unsigned index) {
  return {index, 1};
}

::mlir::Operation::result_range TakeFirstOp::getODSResults(unsigned index) {
  auto valueRange = getODSResultIndexAndLength(index);
  return {std::next(getOperation()->result_begin(), valueRange.first),
           std::next(getOperation()->result_begin(), valueRange.first + valueRange.second)};
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> TakeFirstOp::getFirst() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSResults(0).begin());
}

::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> TakeFirstOp::getRest() {
  return ::llvm::cast<::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface>>(*getODSResults(1).begin());
}

void TakeFirstOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type first, ::mlir::Type rest, ::mlir::ValueRange inputs) {
  odsState.addOperands(inputs);
  odsState.addTypes(first);
  odsState.addTypes(rest);
}

void TakeFirstOp::build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes) {
  odsState.addOperands(operands);
  odsState.addAttributes(attributes);
  assert(resultTypes.size() == 2u && "mismatched number of return types");
  odsState.addTypes(resultTypes);
}

::mlir::LogicalResult TakeFirstOp::verifyInvariantsImpl() {
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSOperands(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_StructuredTransformOpsExt0(*this, v.getType(), "operand", index++)))
        return ::mlir::failure();
    }
  }
  {
    unsigned index = 0; (void)index;
    auto valueGroup0 = getODSResults(0);

    for (auto v : valueGroup0) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_StructuredTransformOpsExt0(*this, v.getType(), "result", index++)))
        return ::mlir::failure();
    }
    auto valueGroup1 = getODSResults(1);

    for (auto v : valueGroup1) {
      if (::mlir::failed(__mlir_ods_local_type_constraint_StructuredTransformOpsExt0(*this, v.getType(), "result", index++)))
        return ::mlir::failure();
    }
  }
  return ::mlir::success();
}

::mlir::LogicalResult TakeFirstOp::verifyInvariants() {
  return verifyInvariantsImpl();
}

::mlir::ParseResult TakeFirstOp::parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result) {
  ::llvm::SmallVector<::mlir::OpAsmParser::UnresolvedOperand, 4> inputsOperands;
  ::llvm::SMLoc inputsOperandsLoc;
  (void)inputsOperandsLoc;
  ::llvm::ArrayRef<::mlir::Type> inputsTypes;
  ::llvm::ArrayRef<::mlir::Type> allResultTypes;

  inputsOperandsLoc = parser.getCurrentLocation();
  if (parser.parseOperandList(inputsOperands))
    return ::mlir::failure();
  if (parser.parseOptionalAttrDict(result.attributes))
    return ::mlir::failure();
  if (parser.parseColon())
    return ::mlir::failure();

  ::mlir::FunctionType inputs__allResult_functionType;
  if (parser.parseType(inputs__allResult_functionType))
    return ::mlir::failure();
  inputsTypes = inputs__allResult_functionType.getInputs();
  allResultTypes = inputs__allResult_functionType.getResults();
  result.addTypes(allResultTypes);
  if (parser.resolveOperands(inputsOperands, inputsTypes, inputsOperandsLoc, result.operands))
    return ::mlir::failure();
  return ::mlir::success();
}

void TakeFirstOp::print(::mlir::OpAsmPrinter &_odsPrinter) {
  _odsPrinter << ' ';
  _odsPrinter << getInputs();
  ::llvm::SmallVector<::llvm::StringRef, 2> elidedAttrs;
  _odsPrinter.printOptionalAttrDict((*this)->getAttrs(), elidedAttrs);
  _odsPrinter << ' ' << ":";
  _odsPrinter << ' ';
  _odsPrinter.printFunctionalType(getInputs().getTypes(), getOperation()->getResultTypes());
}

} // namespace transform
} // namespace mlir
MLIR_DEFINE_EXPLICIT_TYPE_ID(mlir::transform::TakeFirstOp)


#endif  // GET_OP_CLASSES

