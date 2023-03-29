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
class CreateAsyncGroupsOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class LayoutAnalysisAndDistributionOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class PromoteOperandsOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class VectorToMMAConversionOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class VectorToWarpExecuteOnLane0Op;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class VectorWarpDistributionOp;
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
// mlir::transform::CreateAsyncGroupsOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class CreateAsyncGroupsOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  CreateAsyncGroupsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::BoolAttr getUseMmaSyncAttr();
  bool getUseMmaSync();
};
} // namespace detail
template <typename RangeT>
class CreateAsyncGroupsOpGenericAdaptor : public detail::CreateAsyncGroupsOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::CreateAsyncGroupsOpGenericAdaptorBase;
public:
  CreateAsyncGroupsOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  ValueT getTarget() {
    return (*getODSOperands(0).begin());
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class CreateAsyncGroupsOpAdaptor : public CreateAsyncGroupsOpGenericAdaptor<::mlir::ValueRange> {
public:
  using CreateAsyncGroupsOpGenericAdaptor::CreateAsyncGroupsOpGenericAdaptor;
  CreateAsyncGroupsOpAdaptor(CreateAsyncGroupsOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class CreateAsyncGroupsOp : public ::mlir::Op<CreateAsyncGroupsOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::ZeroResults, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformEachOpTrait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = CreateAsyncGroupsOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = CreateAsyncGroupsOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("use_mma_sync")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getUseMmaSyncAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getUseMmaSyncAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.create_async_groups");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::BoolAttr getUseMmaSyncAttr();
  bool getUseMmaSync();
  void setUseMmaSyncAttr(::mlir::BoolAttr attr);
  void setUseMmaSync(bool attrValue);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, ::mlir::BoolAttr use_mma_sync);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, ::mlir::BoolAttr use_mma_sync);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, bool use_mma_sync);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, bool use_mma_sync);
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
      ::mlir::func::FuncOp target,
      ::mlir::transform::ApplyToEachResultList &results,
      ::mlir::transform::TransformState &state);
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::CreateAsyncGroupsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::LayoutAnalysisAndDistributionOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class LayoutAnalysisAndDistributionOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  LayoutAnalysisAndDistributionOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
};
} // namespace detail
template <typename RangeT>
class LayoutAnalysisAndDistributionOpGenericAdaptor : public detail::LayoutAnalysisAndDistributionOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::LayoutAnalysisAndDistributionOpGenericAdaptorBase;
public:
  LayoutAnalysisAndDistributionOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  ValueT getTarget() {
    return (*getODSOperands(0).begin());
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class LayoutAnalysisAndDistributionOpAdaptor : public LayoutAnalysisAndDistributionOpGenericAdaptor<::mlir::ValueRange> {
public:
  using LayoutAnalysisAndDistributionOpGenericAdaptor::LayoutAnalysisAndDistributionOpGenericAdaptor;
  LayoutAnalysisAndDistributionOpAdaptor(LayoutAnalysisAndDistributionOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class LayoutAnalysisAndDistributionOp : public ::mlir::Op<LayoutAnalysisAndDistributionOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::VariadicResults, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::transform::FunctionalStyleTransformOpTrait, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformEachOpTrait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = LayoutAnalysisAndDistributionOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = LayoutAnalysisAndDistributionOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    return {};
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.layout_analysis_and_distribution");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::Operation::result_range getResult();
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, Value target);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange result, ::mlir::Value target);
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
  static ::mlir::ParseResult parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result);
  void print(::mlir::OpAsmPrinter &_odsPrinter);
public:
  ::mlir::DiagnosedSilenceableFailure applyToOne(
      ::mlir::func::FuncOp target,
      ::mlir::transform::ApplyToEachResultList &results,
      ::mlir::transform::TransformState &state);
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::LayoutAnalysisAndDistributionOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::PromoteOperandsOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class PromoteOperandsOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  PromoteOperandsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::DenseI64ArrayAttr getIndicesAttr();
  ::llvm::ArrayRef<int64_t> getIndices();
};
} // namespace detail
template <typename RangeT>
class PromoteOperandsOpGenericAdaptor : public detail::PromoteOperandsOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::PromoteOperandsOpGenericAdaptorBase;
public:
  PromoteOperandsOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  ValueT getTarget() {
    return (*getODSOperands(0).begin());
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class PromoteOperandsOpAdaptor : public PromoteOperandsOpGenericAdaptor<::mlir::ValueRange> {
public:
  using PromoteOperandsOpGenericAdaptor::PromoteOperandsOpGenericAdaptor;
  PromoteOperandsOpAdaptor(PromoteOperandsOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class PromoteOperandsOp : public ::mlir::Op<PromoteOperandsOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::VariadicResults, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::transform::FunctionalStyleTransformOpTrait, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformEachOpTrait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = PromoteOperandsOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = PromoteOperandsOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("indices")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getIndicesAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getIndicesAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.promote_operands");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::Operation::result_range getResult();
  ::mlir::DenseI64ArrayAttr getIndicesAttr();
  ::llvm::ArrayRef<int64_t> getIndices();
  void setIndicesAttr(::mlir::DenseI64ArrayAttr attr);
  void setIndices(::llvm::ArrayRef<int64_t> attrValue);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange result, ::mlir::Value target, ::mlir::DenseI64ArrayAttr indices);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange result, ::mlir::Value target, ::llvm::ArrayRef<int64_t> indices = {});
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  static void populateDefaultAttrs(const ::mlir::OperationName &opName, ::mlir::NamedAttrList &attributes);
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
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
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::PromoteOperandsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::VectorToMMAConversionOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class VectorToMMAConversionOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  VectorToMMAConversionOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::UnitAttr getUseMmaSyncAttr();
  bool getUseMmaSync();
  ::mlir::UnitAttr getUseWmmaAttr();
  bool getUseWmma();
};
} // namespace detail
template <typename RangeT>
class VectorToMMAConversionOpGenericAdaptor : public detail::VectorToMMAConversionOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::VectorToMMAConversionOpGenericAdaptorBase;
public:
  VectorToMMAConversionOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  ValueT getTarget() {
    return (*getODSOperands(0).begin());
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class VectorToMMAConversionOpAdaptor : public VectorToMMAConversionOpGenericAdaptor<::mlir::ValueRange> {
public:
  using VectorToMMAConversionOpGenericAdaptor::VectorToMMAConversionOpGenericAdaptor;
  VectorToMMAConversionOpAdaptor(VectorToMMAConversionOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class VectorToMMAConversionOp : public ::mlir::Op<VectorToMMAConversionOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::ZeroResults, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformEachOpTrait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = VectorToMMAConversionOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = VectorToMMAConversionOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("use_mma_sync"), ::llvm::StringRef("use_wmma")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getUseMmaSyncAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getUseMmaSyncAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  ::mlir::StringAttr getUseWmmaAttrName() {
    return getAttributeNameForIndex(1);
  }

  static ::mlir::StringAttr getUseWmmaAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 1);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.vector.vector_to_mma_conversion");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::UnitAttr getUseMmaSyncAttr();
  bool getUseMmaSync();
  ::mlir::UnitAttr getUseWmmaAttr();
  bool getUseWmma();
  void setUseMmaSyncAttr(::mlir::UnitAttr attr);
  void setUseMmaSync(bool attrValue);
  void setUseWmmaAttr(::mlir::UnitAttr attr);
  void setUseWmma(bool attrValue);
  ::mlir::Attribute removeUseMmaSyncAttr();
  ::mlir::Attribute removeUseWmmaAttr();
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, /*optional*/::mlir::UnitAttr use_mma_sync, /*optional*/::mlir::UnitAttr use_wmma);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/::mlir::UnitAttr use_mma_sync, /*optional*/::mlir::UnitAttr use_wmma);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Value target, /*optional*/bool use_mma_sync = false, /*optional*/bool use_wmma = false);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/bool use_mma_sync = false, /*optional*/bool use_wmma = false);
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
    assert(index < 2 && "invalid attribute index");
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
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::VectorToMMAConversionOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::VectorToWarpExecuteOnLane0Op declarations
//===----------------------------------------------------------------------===//

namespace detail {
class VectorToWarpExecuteOnLane0OpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  VectorToWarpExecuteOnLane0OpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::IntegerAttr getWarpSizeAttr();
  uint64_t getWarpSize();
};
} // namespace detail
template <typename RangeT>
class VectorToWarpExecuteOnLane0OpGenericAdaptor : public detail::VectorToWarpExecuteOnLane0OpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::VectorToWarpExecuteOnLane0OpGenericAdaptorBase;
public:
  VectorToWarpExecuteOnLane0OpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  ValueT getTarget() {
    return (*getODSOperands(0).begin());
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class VectorToWarpExecuteOnLane0OpAdaptor : public VectorToWarpExecuteOnLane0OpGenericAdaptor<::mlir::ValueRange> {
public:
  using VectorToWarpExecuteOnLane0OpGenericAdaptor::VectorToWarpExecuteOnLane0OpGenericAdaptor;
  VectorToWarpExecuteOnLane0OpAdaptor(VectorToWarpExecuteOnLane0Op op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class VectorToWarpExecuteOnLane0Op : public ::mlir::Op<VectorToWarpExecuteOnLane0Op, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::OneResult, ::mlir::OpTrait::OneTypedResult<::mlir::pdl::OperationType>::Impl, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::transform::FunctionalStyleTransformOpTrait, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformEachOpTrait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = VectorToWarpExecuteOnLane0OpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = VectorToWarpExecuteOnLane0OpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("warp_size")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getWarpSizeAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getWarpSizeAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.vector.to_warp_execute_on_lane_0");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getResult();
  ::mlir::IntegerAttr getWarpSizeAttr();
  uint64_t getWarpSize();
  void setWarpSizeAttr(::mlir::IntegerAttr attr);
  void setWarpSize(uint64_t attrValue);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, Value target, int64_t warpSize);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, ::mlir::IntegerAttr warp_size);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, ::mlir::IntegerAttr warp_size);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, uint64_t warp_size = {});
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, uint64_t warp_size = {});
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  static void populateDefaultAttrs(const ::mlir::OperationName &opName, ::mlir::NamedAttrList &attributes);
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
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
      ::mlir::scf::IfOp target,
      ::mlir::transform::ApplyToEachResultList &results,
      ::mlir::transform::TransformState &state);
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::VectorToWarpExecuteOnLane0Op)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::VectorWarpDistributionOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class VectorWarpDistributionOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  VectorWarpDistributionOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
};
} // namespace detail
template <typename RangeT>
class VectorWarpDistributionOpGenericAdaptor : public detail::VectorWarpDistributionOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::VectorWarpDistributionOpGenericAdaptorBase;
public:
  VectorWarpDistributionOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  ValueT getTarget() {
    return (*getODSOperands(0).begin());
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class VectorWarpDistributionOpAdaptor : public VectorWarpDistributionOpGenericAdaptor<::mlir::ValueRange> {
public:
  using VectorWarpDistributionOpGenericAdaptor::VectorWarpDistributionOpGenericAdaptor;
  VectorWarpDistributionOpAdaptor(VectorWarpDistributionOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class VectorWarpDistributionOp : public ::mlir::Op<VectorWarpDistributionOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::ZeroResults, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformEachOpTrait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = VectorWarpDistributionOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = VectorWarpDistributionOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    return {};
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.vector.warp_distribute");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, Value target);
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
  void getEffects(::llvm::SmallVectorImpl<::mlir::SideEffects::EffectInstance<::mlir::MemoryEffects::Effect>> &effects);
  static ::mlir::ParseResult parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result);
  void print(::mlir::OpAsmPrinter &_odsPrinter);
public:
  ::mlir::DiagnosedSilenceableFailure applyToOne(
      ::mlir::Operation *target,
      ::mlir::transform::ApplyToEachResultList &results,
      ::mlir::transform::TransformState &state);
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::VectorWarpDistributionOp)


#endif  // GET_OP_CLASSES

