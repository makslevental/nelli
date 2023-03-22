/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Op Declarations                                                            *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#if defined(GET_OP_CLASSES) || defined(GET_OP_FWD_DEFINES)
#undef GET_OP_FWD_DEFINES
namespace mlir {
namespace transform {
class EmitRemarkOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class LowerToLLVMOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class MatchCallbackOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class RegisterMatchCallbacksOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class TakeFirstOp;
} // namespace transform
} // namespace mlir
#endif

#ifdef GET_OP_CLASSES
#undef GET_OP_CLASSES


//===----------------------------------------------------------------------===//
// Local Utility Method Definitions
//===----------------------------------------------------------------------===//

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::EmitRemarkOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class EmitRemarkOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  EmitRemarkOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::StringAttr getMessageAttr();
  ::llvm::StringRef getMessage();
};
} // namespace detail
template <typename RangeT>
class EmitRemarkOpGenericAdaptor : public detail::EmitRemarkOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::EmitRemarkOpGenericAdaptorBase;
public:
  EmitRemarkOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  ValueT getHandle() {
    return (*getODSOperands(0).begin());
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class EmitRemarkOpAdaptor : public EmitRemarkOpGenericAdaptor<::mlir::ValueRange> {
public:
  using EmitRemarkOpGenericAdaptor::EmitRemarkOpGenericAdaptor;
  EmitRemarkOpAdaptor(EmitRemarkOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class EmitRemarkOp : public ::mlir::Op<EmitRemarkOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::ZeroResults, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformOpInterface::Trait, ::mlir::transform::TransformEachOpTrait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = EmitRemarkOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = EmitRemarkOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("message")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getMessageAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getMessageAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.emit_remark");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getHandle();
  ::mlir::MutableOperandRange getHandleMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::StringAttr getMessageAttr();
  ::llvm::StringRef getMessage();
  void setMessageAttr(::mlir::StringAttr attr);
  void setMessage(::llvm::StringRef attrValue);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value handle, ::mlir::StringAttr message);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value handle, ::mlir::StringAttr message);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value handle, ::llvm::StringRef message);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value handle, ::llvm::StringRef message);
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
  void getEffects(::llvm::SmallVectorImpl<::mlir::SideEffects::EffectInstance<::mlir::MemoryEffects::Effect>> &effects);
  static ::mlir::ParseResult parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result);
  void print(::mlir::OpAsmPrinter &_odsPrinter);
private:
  ::mlir::StringAttr getAttributeNameForIndex(unsigned index) {
    return getAttributeNameForIndex((*this)->getName(), index);
  }

  static ::mlir::StringAttr getAttributeNameForIndex(::mlir::OperationName name, unsigned index) {
    assert(index < 1 && "invalid attribute index");
    assert(name.getStringRef() == getOperationName() && "invalid operation name");
    return name.getAttributeNames()[index];
  }

public:
  ::mlir::DiagnosedSilenceableFailure applyToOne(
    ::mlir::Operation *target,
    ::mlir::transform::ApplyToEachResultList &results,
    ::mlir::transform::TransformState &state);
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::EmitRemarkOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::LowerToLLVMOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class LowerToLLVMOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  LowerToLLVMOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::BoolAttr getReassociateFpReductionsAttr();
  bool getReassociateFpReductions();
  ::mlir::BoolAttr getEnableIndexOptimizationsAttr();
  bool getEnableIndexOptimizations();
  ::mlir::BoolAttr getEnableArmNeonAttr();
  bool getEnableArmNeon();
  ::mlir::BoolAttr getEnableArmSveAttr();
  bool getEnableArmSve();
  ::mlir::BoolAttr getEnableAmxAttr();
  bool getEnableAmx();
  ::mlir::BoolAttr getEnableX86vectorAttr();
  bool getEnableX86vector();
  ::mlir::BoolAttr getEnableAsyncAttr();
  bool getEnableAsync();
};
} // namespace detail
template <typename RangeT>
class LowerToLLVMOpGenericAdaptor : public detail::LowerToLLVMOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::LowerToLLVMOpGenericAdaptorBase;
public:
  LowerToLLVMOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class LowerToLLVMOpAdaptor : public LowerToLLVMOpGenericAdaptor<::mlir::ValueRange> {
public:
  using LowerToLLVMOpGenericAdaptor::LowerToLLVMOpGenericAdaptor;
  LowerToLLVMOpAdaptor(LowerToLLVMOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class LowerToLLVMOp : public ::mlir::Op<LowerToLLVMOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::ZeroResults, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::ZeroOperands, ::mlir::OpTrait::OpInvariants, ::mlir::transform::FunctionalStyleTransformOpTrait, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = LowerToLLVMOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = LowerToLLVMOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("enable_amx"), ::llvm::StringRef("enable_arm_neon"), ::llvm::StringRef("enable_arm_sve"), ::llvm::StringRef("enable_async"), ::llvm::StringRef("enable_index_optimizations"), ::llvm::StringRef("enable_x86vector"), ::llvm::StringRef("reassociate_fp_reductions")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getEnableAmxAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getEnableAmxAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  ::mlir::StringAttr getEnableArmNeonAttrName() {
    return getAttributeNameForIndex(1);
  }

  static ::mlir::StringAttr getEnableArmNeonAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 1);
  }

  ::mlir::StringAttr getEnableArmSveAttrName() {
    return getAttributeNameForIndex(2);
  }

  static ::mlir::StringAttr getEnableArmSveAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 2);
  }

  ::mlir::StringAttr getEnableAsyncAttrName() {
    return getAttributeNameForIndex(3);
  }

  static ::mlir::StringAttr getEnableAsyncAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 3);
  }

  ::mlir::StringAttr getEnableIndexOptimizationsAttrName() {
    return getAttributeNameForIndex(4);
  }

  static ::mlir::StringAttr getEnableIndexOptimizationsAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 4);
  }

  ::mlir::StringAttr getEnableX86vectorAttrName() {
    return getAttributeNameForIndex(5);
  }

  static ::mlir::StringAttr getEnableX86vectorAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 5);
  }

  ::mlir::StringAttr getReassociateFpReductionsAttrName() {
    return getAttributeNameForIndex(6);
  }

  static ::mlir::StringAttr getReassociateFpReductionsAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 6);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.lower_to_llvm");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::BoolAttr getReassociateFpReductionsAttr();
  bool getReassociateFpReductions();
  ::mlir::BoolAttr getEnableIndexOptimizationsAttr();
  bool getEnableIndexOptimizations();
  ::mlir::BoolAttr getEnableArmNeonAttr();
  bool getEnableArmNeon();
  ::mlir::BoolAttr getEnableArmSveAttr();
  bool getEnableArmSve();
  ::mlir::BoolAttr getEnableAmxAttr();
  bool getEnableAmx();
  ::mlir::BoolAttr getEnableX86vectorAttr();
  bool getEnableX86vector();
  ::mlir::BoolAttr getEnableAsyncAttr();
  bool getEnableAsync();
  void setReassociateFpReductionsAttr(::mlir::BoolAttr attr);
  void setReassociateFpReductions(bool attrValue);
  void setEnableIndexOptimizationsAttr(::mlir::BoolAttr attr);
  void setEnableIndexOptimizations(bool attrValue);
  void setEnableArmNeonAttr(::mlir::BoolAttr attr);
  void setEnableArmNeon(bool attrValue);
  void setEnableArmSveAttr(::mlir::BoolAttr attr);
  void setEnableArmSve(bool attrValue);
  void setEnableAmxAttr(::mlir::BoolAttr attr);
  void setEnableAmx(bool attrValue);
  void setEnableX86vectorAttr(::mlir::BoolAttr attr);
  void setEnableX86vector(bool attrValue);
  void setEnableAsyncAttr(::mlir::BoolAttr attr);
  void setEnableAsync(bool attrValue);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::BoolAttr reassociate_fp_reductions, ::mlir::BoolAttr enable_index_optimizations, ::mlir::BoolAttr enable_arm_neon, ::mlir::BoolAttr enable_arm_sve, ::mlir::BoolAttr enable_amx, ::mlir::BoolAttr enable_x86vector, ::mlir::BoolAttr enable_async);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::BoolAttr reassociate_fp_reductions, ::mlir::BoolAttr enable_index_optimizations, ::mlir::BoolAttr enable_arm_neon, ::mlir::BoolAttr enable_arm_sve, ::mlir::BoolAttr enable_amx, ::mlir::BoolAttr enable_x86vector, ::mlir::BoolAttr enable_async);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, bool reassociate_fp_reductions = false, bool enable_index_optimizations = false, bool enable_arm_neon = false, bool enable_arm_sve = false, bool enable_amx = false, bool enable_x86vector = false, bool enable_async = false);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, bool reassociate_fp_reductions = false, bool enable_index_optimizations = false, bool enable_arm_neon = false, bool enable_arm_sve = false, bool enable_amx = false, bool enable_x86vector = false, bool enable_async = false);
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  static void populateDefaultAttrs(const ::mlir::OperationName &opName, ::mlir::NamedAttrList &attributes);
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
  ::mlir::DiagnosedSilenceableFailure apply(::mlir::transform::TransformResults &transformResults, ::mlir::transform::TransformState &state);
  static ::mlir::ParseResult parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result);
  void print(::mlir::OpAsmPrinter &_odsPrinter);
private:
  ::mlir::StringAttr getAttributeNameForIndex(unsigned index) {
    return getAttributeNameForIndex((*this)->getName(), index);
  }

  static ::mlir::StringAttr getAttributeNameForIndex(::mlir::OperationName name, unsigned index) {
    assert(index < 7 && "invalid attribute index");
    assert(name.getStringRef() == getOperationName() && "invalid operation name");
    return name.getAttributeNames()[index];
  }

public:
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::LowerToLLVMOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::MatchCallbackOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class MatchCallbackOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  MatchCallbackOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::StringAttr getCallbackNameAttr();
  ::llvm::StringRef getCallbackName();
  ::mlir::transform::FailurePropagationModeAttr getFailurePropagationModeAttr();
  ::mlir::transform::FailurePropagationMode getFailurePropagationMode();
};
} // namespace detail
template <typename RangeT>
class MatchCallbackOpGenericAdaptor : public detail::MatchCallbackOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::MatchCallbackOpGenericAdaptorBase;
public:
  MatchCallbackOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  RangeT getInputs() {
    return getODSOperands(0);
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class MatchCallbackOpAdaptor : public MatchCallbackOpGenericAdaptor<::mlir::ValueRange> {
public:
  using MatchCallbackOpGenericAdaptor::MatchCallbackOpGenericAdaptor;
  MatchCallbackOpAdaptor(MatchCallbackOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class MatchCallbackOp : public ::mlir::Op<MatchCallbackOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::VariadicResults, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::VariadicOperands, ::mlir::OpTrait::OpInvariants, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = MatchCallbackOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = MatchCallbackOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("callback_name"), ::llvm::StringRef("failure_propagation_mode")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getCallbackNameAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getCallbackNameAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  ::mlir::StringAttr getFailurePropagationModeAttrName() {
    return getAttributeNameForIndex(1);
  }

  static ::mlir::StringAttr getFailurePropagationModeAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 1);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.match_callback");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::Operation::operand_range getInputs();
  ::mlir::MutableOperandRange getInputsMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::Operation::result_range getOutputs();
  ::mlir::StringAttr getCallbackNameAttr();
  ::llvm::StringRef getCallbackName();
  ::mlir::transform::FailurePropagationModeAttr getFailurePropagationModeAttr();
  ::mlir::transform::FailurePropagationMode getFailurePropagationMode();
  void setCallbackNameAttr(::mlir::StringAttr attr);
  void setCallbackName(::llvm::StringRef attrValue);
  void setFailurePropagationModeAttr(::mlir::transform::FailurePropagationModeAttr attr);
  void setFailurePropagationMode(::mlir::transform::FailurePropagationMode attrValue);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange outputs, ::mlir::StringAttr callback_name, ::mlir::transform::FailurePropagationModeAttr failure_propagation_mode, ::mlir::ValueRange inputs);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange outputs, ::llvm::StringRef callback_name, ::mlir::transform::FailurePropagationMode failure_propagation_mode, ::mlir::ValueRange inputs);
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
  void getEffects(::llvm::SmallVectorImpl<::mlir::SideEffects::EffectInstance<::mlir::MemoryEffects::Effect>> &effects);
  ::mlir::DiagnosedSilenceableFailure apply(::mlir::transform::TransformResults &transformResults, ::mlir::transform::TransformState &state);
  static ::mlir::ParseResult parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result);
  void print(::mlir::OpAsmPrinter &_odsPrinter);
private:
  ::mlir::StringAttr getAttributeNameForIndex(unsigned index) {
    return getAttributeNameForIndex((*this)->getName(), index);
  }

  static ::mlir::StringAttr getAttributeNameForIndex(::mlir::OperationName name, unsigned index) {
    assert(index < 2 && "invalid attribute index");
    assert(name.getStringRef() == getOperationName() && "invalid operation name");
    return name.getAttributeNames()[index];
  }

public:
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::MatchCallbackOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::RegisterMatchCallbacksOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class RegisterMatchCallbacksOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  RegisterMatchCallbacksOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
};
} // namespace detail
template <typename RangeT>
class RegisterMatchCallbacksOpGenericAdaptor : public detail::RegisterMatchCallbacksOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::RegisterMatchCallbacksOpGenericAdaptorBase;
public:
  RegisterMatchCallbacksOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class RegisterMatchCallbacksOpAdaptor : public RegisterMatchCallbacksOpGenericAdaptor<::mlir::ValueRange> {
public:
  using RegisterMatchCallbacksOpGenericAdaptor::RegisterMatchCallbacksOpGenericAdaptor;
  RegisterMatchCallbacksOpAdaptor(RegisterMatchCallbacksOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class RegisterMatchCallbacksOp : public ::mlir::Op<RegisterMatchCallbacksOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::ZeroResults, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::ZeroOperands, ::mlir::OpTrait::OpInvariants, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = RegisterMatchCallbacksOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = RegisterMatchCallbacksOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    return {};
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.register_match_callbacks");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes);
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
  void getEffects(::llvm::SmallVectorImpl<::mlir::SideEffects::EffectInstance<::mlir::MemoryEffects::Effect>> &effects);
  ::mlir::DiagnosedSilenceableFailure apply(::mlir::transform::TransformResults &transformResults, ::mlir::transform::TransformState &state);
  static ::mlir::ParseResult parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result);
  void print(::mlir::OpAsmPrinter &_odsPrinter);
public:
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::RegisterMatchCallbacksOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::TakeFirstOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class TakeFirstOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  TakeFirstOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
};
} // namespace detail
template <typename RangeT>
class TakeFirstOpGenericAdaptor : public detail::TakeFirstOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::TakeFirstOpGenericAdaptorBase;
public:
  TakeFirstOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  RangeT getInputs() {
    return getODSOperands(0);
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class TakeFirstOpAdaptor : public TakeFirstOpGenericAdaptor<::mlir::ValueRange> {
public:
  using TakeFirstOpGenericAdaptor::TakeFirstOpGenericAdaptor;
  TakeFirstOpAdaptor(TakeFirstOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class TakeFirstOp : public ::mlir::Op<TakeFirstOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::NResults<2>::Impl, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::VariadicOperands, ::mlir::OpTrait::OpInvariants, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformOpInterface::Trait, ::mlir::OpAsmOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = TakeFirstOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = TakeFirstOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    return {};
  }

  void getAsmResultNames(::mlir::OpAsmSetValueNameFn setNameFn);
  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.take_first");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::Operation::operand_range getInputs();
  ::mlir::MutableOperandRange getInputsMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getFirst();
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getRest();
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type first, ::mlir::Type rest, ::mlir::ValueRange inputs);
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
  void getEffects(::llvm::SmallVectorImpl<::mlir::SideEffects::EffectInstance<::mlir::MemoryEffects::Effect>> &effects);
  ::mlir::DiagnosedSilenceableFailure apply(::mlir::transform::TransformResults &transformResults, ::mlir::transform::TransformState &state);
  static ::mlir::ParseResult parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result);
  void print(::mlir::OpAsmPrinter &_odsPrinter);
public:
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::TakeFirstOp)


#endif  // GET_OP_CLASSES

