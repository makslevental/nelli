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
class ApplyBufferOptimizationsOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class ApplyPatternsOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class HoistStaticAllocOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class ShareForallOperandsOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class TransformBufferizeOp;
} // namespace transform
} // namespace mlir
namespace mlir {
namespace transform {
class TransformEliminateEmptyTensorsOp;
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
// mlir::transform::ApplyBufferOptimizationsOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class ApplyBufferOptimizationsOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  ApplyBufferOptimizationsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
};
} // namespace detail
template <typename RangeT>
class ApplyBufferOptimizationsOpGenericAdaptor : public detail::ApplyBufferOptimizationsOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::ApplyBufferOptimizationsOpGenericAdaptorBase;
public:
  ApplyBufferOptimizationsOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

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
class ApplyBufferOptimizationsOpAdaptor : public ApplyBufferOptimizationsOpGenericAdaptor<::mlir::ValueRange> {
public:
  using ApplyBufferOptimizationsOpGenericAdaptor::ApplyBufferOptimizationsOpGenericAdaptor;
  ApplyBufferOptimizationsOpAdaptor(ApplyBufferOptimizationsOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class ApplyBufferOptimizationsOp : public ::mlir::Op<ApplyBufferOptimizationsOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::OneResult, ::mlir::OpTrait::OneTypedResult<::mlir::pdl::OperationType>::Impl, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::transform::TransformEachOpTrait, ::mlir::transform::TransformOpInterface::Trait, ::mlir::MemoryEffectOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = ApplyBufferOptimizationsOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = ApplyBufferOptimizationsOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    return {};
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.apply_buffer_optimizations");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getResult();
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
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::ApplyBufferOptimizationsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::ApplyPatternsOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class ApplyPatternsOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  ApplyPatternsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::UnitAttr getAdditionalPatternsAttr();
  bool getAdditionalPatterns();
  ::mlir::UnitAttr getBubbleCollapseAttr();
  bool getBubbleCollapse();
  ::mlir::UnitAttr getBubbleExpandAttr();
  bool getBubbleExpand();
  ::mlir::UnitAttr getBubblePackUnPackAttr();
  bool getBubblePackUnPack();
  ::mlir::UnitAttr getCanonicalizationAttr();
  bool getCanonicalization();
  ::mlir::UnitAttr getCseAttr();
  bool getCse();
  ::mlir::UnitAttr getEraseUnnecessaryTensorOperandsAttr();
  bool getEraseUnnecessaryTensorOperands();
  ::mlir::UnitAttr getExpandMemrefStridedMetadataAttr();
  bool getExpandMemrefStridedMetadata();
  ::mlir::UnitAttr getFoldMemrefAliasesAttr();
  bool getFoldMemrefAliases();
  ::mlir::UnitAttr getFoldReassociativeReshapesAttr();
  bool getFoldReassociativeReshapes();
  ::mlir::UnitAttr getFoldTensorEmptyExtractAttr();
  bool getFoldTensorEmptyExtract();
  ::mlir::UnitAttr getLicmAttr();
  bool getLicm();
  ::mlir::UnitAttr getLinalgElementwiseGreedyFusionAttr();
  bool getLinalgElementwiseGreedyFusion();
  ::mlir::UnitAttr getLowerTransferOpPermutationsAttr();
  bool getLowerTransferOpPermutations();
  ::mlir::UnitAttr getLowerVectorMasksAttr();
  bool getLowerVectorMasks();
  ::mlir::UnitAttr getRankReducingLinalgAttr();
  bool getRankReducingLinalg();
  ::mlir::UnitAttr getRankReducingLinalgViaReshapesAttr();
  bool getRankReducingLinalgViaReshapes();
  ::mlir::UnitAttr getRankReducingVectorAttr();
  bool getRankReducingVector();
  ::mlir::UnitAttr getSwapPaddingElideConditionalAttr();
  bool getSwapPaddingElideConditional();
  ::mlir::UnitAttr getSwappingPatternsAttr();
  bool getSwappingPatterns();
  ::mlir::UnitAttr getTilingCanonicalizationAttr();
  bool getTilingCanonicalization();
  ::mlir::UnitAttr getUnrollVectorsGpuMmaSyncAttr();
  bool getUnrollVectorsGpuMmaSync();
  ::mlir::UnitAttr getUnrollVectorsGpuWmmaAttr();
  bool getUnrollVectorsGpuWmma();
};
} // namespace detail
template <typename RangeT>
class ApplyPatternsOpGenericAdaptor : public detail::ApplyPatternsOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::ApplyPatternsOpGenericAdaptorBase;
public:
  ApplyPatternsOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

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
class ApplyPatternsOpAdaptor : public ApplyPatternsOpGenericAdaptor<::mlir::ValueRange> {
public:
  using ApplyPatternsOpGenericAdaptor::ApplyPatternsOpGenericAdaptor;
  ApplyPatternsOpAdaptor(ApplyPatternsOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class ApplyPatternsOp : public ::mlir::Op<ApplyPatternsOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::OneResult, ::mlir::OpTrait::OneTypedResult<::mlir::pdl::OperationType>::Impl, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformEachOpTrait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = ApplyPatternsOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = ApplyPatternsOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("additional_patterns"), ::llvm::StringRef("bubble_collapse"), ::llvm::StringRef("bubble_expand"), ::llvm::StringRef("bubble_pack_un_pack"), ::llvm::StringRef("canonicalization"), ::llvm::StringRef("cse"), ::llvm::StringRef("erase_unnecessary_tensor_operands"), ::llvm::StringRef("expand_memref_strided_metadata"), ::llvm::StringRef("fold_memref_aliases"), ::llvm::StringRef("fold_reassociative_reshapes"), ::llvm::StringRef("fold_tensor_empty_extract"), ::llvm::StringRef("licm"), ::llvm::StringRef("linalg_elementwise_greedy_fusion"), ::llvm::StringRef("lower_transfer_op_permutations"), ::llvm::StringRef("lower_vector_masks"), ::llvm::StringRef("rank_reducing_linalg"), ::llvm::StringRef("rank_reducing_linalg_via_reshapes"), ::llvm::StringRef("rank_reducing_vector"), ::llvm::StringRef("swap_padding_elide_conditional"), ::llvm::StringRef("swapping_patterns"), ::llvm::StringRef("tiling_canonicalization"), ::llvm::StringRef("unroll_vectors_gpu_mma_sync"), ::llvm::StringRef("unroll_vectors_gpu_wmma")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getAdditionalPatternsAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getAdditionalPatternsAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  ::mlir::StringAttr getBubbleCollapseAttrName() {
    return getAttributeNameForIndex(1);
  }

  static ::mlir::StringAttr getBubbleCollapseAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 1);
  }

  ::mlir::StringAttr getBubbleExpandAttrName() {
    return getAttributeNameForIndex(2);
  }

  static ::mlir::StringAttr getBubbleExpandAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 2);
  }

  ::mlir::StringAttr getBubblePackUnPackAttrName() {
    return getAttributeNameForIndex(3);
  }

  static ::mlir::StringAttr getBubblePackUnPackAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 3);
  }

  ::mlir::StringAttr getCanonicalizationAttrName() {
    return getAttributeNameForIndex(4);
  }

  static ::mlir::StringAttr getCanonicalizationAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 4);
  }

  ::mlir::StringAttr getCseAttrName() {
    return getAttributeNameForIndex(5);
  }

  static ::mlir::StringAttr getCseAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 5);
  }

  ::mlir::StringAttr getEraseUnnecessaryTensorOperandsAttrName() {
    return getAttributeNameForIndex(6);
  }

  static ::mlir::StringAttr getEraseUnnecessaryTensorOperandsAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 6);
  }

  ::mlir::StringAttr getExpandMemrefStridedMetadataAttrName() {
    return getAttributeNameForIndex(7);
  }

  static ::mlir::StringAttr getExpandMemrefStridedMetadataAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 7);
  }

  ::mlir::StringAttr getFoldMemrefAliasesAttrName() {
    return getAttributeNameForIndex(8);
  }

  static ::mlir::StringAttr getFoldMemrefAliasesAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 8);
  }

  ::mlir::StringAttr getFoldReassociativeReshapesAttrName() {
    return getAttributeNameForIndex(9);
  }

  static ::mlir::StringAttr getFoldReassociativeReshapesAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 9);
  }

  ::mlir::StringAttr getFoldTensorEmptyExtractAttrName() {
    return getAttributeNameForIndex(10);
  }

  static ::mlir::StringAttr getFoldTensorEmptyExtractAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 10);
  }

  ::mlir::StringAttr getLicmAttrName() {
    return getAttributeNameForIndex(11);
  }

  static ::mlir::StringAttr getLicmAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 11);
  }

  ::mlir::StringAttr getLinalgElementwiseGreedyFusionAttrName() {
    return getAttributeNameForIndex(12);
  }

  static ::mlir::StringAttr getLinalgElementwiseGreedyFusionAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 12);
  }

  ::mlir::StringAttr getLowerTransferOpPermutationsAttrName() {
    return getAttributeNameForIndex(13);
  }

  static ::mlir::StringAttr getLowerTransferOpPermutationsAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 13);
  }

  ::mlir::StringAttr getLowerVectorMasksAttrName() {
    return getAttributeNameForIndex(14);
  }

  static ::mlir::StringAttr getLowerVectorMasksAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 14);
  }

  ::mlir::StringAttr getRankReducingLinalgAttrName() {
    return getAttributeNameForIndex(15);
  }

  static ::mlir::StringAttr getRankReducingLinalgAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 15);
  }

  ::mlir::StringAttr getRankReducingLinalgViaReshapesAttrName() {
    return getAttributeNameForIndex(16);
  }

  static ::mlir::StringAttr getRankReducingLinalgViaReshapesAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 16);
  }

  ::mlir::StringAttr getRankReducingVectorAttrName() {
    return getAttributeNameForIndex(17);
  }

  static ::mlir::StringAttr getRankReducingVectorAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 17);
  }

  ::mlir::StringAttr getSwapPaddingElideConditionalAttrName() {
    return getAttributeNameForIndex(18);
  }

  static ::mlir::StringAttr getSwapPaddingElideConditionalAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 18);
  }

  ::mlir::StringAttr getSwappingPatternsAttrName() {
    return getAttributeNameForIndex(19);
  }

  static ::mlir::StringAttr getSwappingPatternsAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 19);
  }

  ::mlir::StringAttr getTilingCanonicalizationAttrName() {
    return getAttributeNameForIndex(20);
  }

  static ::mlir::StringAttr getTilingCanonicalizationAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 20);
  }

  ::mlir::StringAttr getUnrollVectorsGpuMmaSyncAttrName() {
    return getAttributeNameForIndex(21);
  }

  static ::mlir::StringAttr getUnrollVectorsGpuMmaSyncAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 21);
  }

  ::mlir::StringAttr getUnrollVectorsGpuWmmaAttrName() {
    return getAttributeNameForIndex(22);
  }

  static ::mlir::StringAttr getUnrollVectorsGpuWmmaAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 22);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.apply_patterns");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getResult();
  ::mlir::UnitAttr getAdditionalPatternsAttr();
  bool getAdditionalPatterns();
  ::mlir::UnitAttr getBubbleCollapseAttr();
  bool getBubbleCollapse();
  ::mlir::UnitAttr getBubbleExpandAttr();
  bool getBubbleExpand();
  ::mlir::UnitAttr getBubblePackUnPackAttr();
  bool getBubblePackUnPack();
  ::mlir::UnitAttr getCanonicalizationAttr();
  bool getCanonicalization();
  ::mlir::UnitAttr getCseAttr();
  bool getCse();
  ::mlir::UnitAttr getEraseUnnecessaryTensorOperandsAttr();
  bool getEraseUnnecessaryTensorOperands();
  ::mlir::UnitAttr getExpandMemrefStridedMetadataAttr();
  bool getExpandMemrefStridedMetadata();
  ::mlir::UnitAttr getFoldMemrefAliasesAttr();
  bool getFoldMemrefAliases();
  ::mlir::UnitAttr getFoldReassociativeReshapesAttr();
  bool getFoldReassociativeReshapes();
  ::mlir::UnitAttr getFoldTensorEmptyExtractAttr();
  bool getFoldTensorEmptyExtract();
  ::mlir::UnitAttr getLicmAttr();
  bool getLicm();
  ::mlir::UnitAttr getLinalgElementwiseGreedyFusionAttr();
  bool getLinalgElementwiseGreedyFusion();
  ::mlir::UnitAttr getLowerTransferOpPermutationsAttr();
  bool getLowerTransferOpPermutations();
  ::mlir::UnitAttr getLowerVectorMasksAttr();
  bool getLowerVectorMasks();
  ::mlir::UnitAttr getRankReducingLinalgAttr();
  bool getRankReducingLinalg();
  ::mlir::UnitAttr getRankReducingLinalgViaReshapesAttr();
  bool getRankReducingLinalgViaReshapes();
  ::mlir::UnitAttr getRankReducingVectorAttr();
  bool getRankReducingVector();
  ::mlir::UnitAttr getSwapPaddingElideConditionalAttr();
  bool getSwapPaddingElideConditional();
  ::mlir::UnitAttr getSwappingPatternsAttr();
  bool getSwappingPatterns();
  ::mlir::UnitAttr getTilingCanonicalizationAttr();
  bool getTilingCanonicalization();
  ::mlir::UnitAttr getUnrollVectorsGpuMmaSyncAttr();
  bool getUnrollVectorsGpuMmaSync();
  ::mlir::UnitAttr getUnrollVectorsGpuWmmaAttr();
  bool getUnrollVectorsGpuWmma();
  void setAdditionalPatternsAttr(::mlir::UnitAttr attr);
  void setAdditionalPatterns(bool attrValue);
  void setBubbleCollapseAttr(::mlir::UnitAttr attr);
  void setBubbleCollapse(bool attrValue);
  void setBubbleExpandAttr(::mlir::UnitAttr attr);
  void setBubbleExpand(bool attrValue);
  void setBubblePackUnPackAttr(::mlir::UnitAttr attr);
  void setBubblePackUnPack(bool attrValue);
  void setCanonicalizationAttr(::mlir::UnitAttr attr);
  void setCanonicalization(bool attrValue);
  void setCseAttr(::mlir::UnitAttr attr);
  void setCse(bool attrValue);
  void setEraseUnnecessaryTensorOperandsAttr(::mlir::UnitAttr attr);
  void setEraseUnnecessaryTensorOperands(bool attrValue);
  void setExpandMemrefStridedMetadataAttr(::mlir::UnitAttr attr);
  void setExpandMemrefStridedMetadata(bool attrValue);
  void setFoldMemrefAliasesAttr(::mlir::UnitAttr attr);
  void setFoldMemrefAliases(bool attrValue);
  void setFoldReassociativeReshapesAttr(::mlir::UnitAttr attr);
  void setFoldReassociativeReshapes(bool attrValue);
  void setFoldTensorEmptyExtractAttr(::mlir::UnitAttr attr);
  void setFoldTensorEmptyExtract(bool attrValue);
  void setLicmAttr(::mlir::UnitAttr attr);
  void setLicm(bool attrValue);
  void setLinalgElementwiseGreedyFusionAttr(::mlir::UnitAttr attr);
  void setLinalgElementwiseGreedyFusion(bool attrValue);
  void setLowerTransferOpPermutationsAttr(::mlir::UnitAttr attr);
  void setLowerTransferOpPermutations(bool attrValue);
  void setLowerVectorMasksAttr(::mlir::UnitAttr attr);
  void setLowerVectorMasks(bool attrValue);
  void setRankReducingLinalgAttr(::mlir::UnitAttr attr);
  void setRankReducingLinalg(bool attrValue);
  void setRankReducingLinalgViaReshapesAttr(::mlir::UnitAttr attr);
  void setRankReducingLinalgViaReshapes(bool attrValue);
  void setRankReducingVectorAttr(::mlir::UnitAttr attr);
  void setRankReducingVector(bool attrValue);
  void setSwapPaddingElideConditionalAttr(::mlir::UnitAttr attr);
  void setSwapPaddingElideConditional(bool attrValue);
  void setSwappingPatternsAttr(::mlir::UnitAttr attr);
  void setSwappingPatterns(bool attrValue);
  void setTilingCanonicalizationAttr(::mlir::UnitAttr attr);
  void setTilingCanonicalization(bool attrValue);
  void setUnrollVectorsGpuMmaSyncAttr(::mlir::UnitAttr attr);
  void setUnrollVectorsGpuMmaSync(bool attrValue);
  void setUnrollVectorsGpuWmmaAttr(::mlir::UnitAttr attr);
  void setUnrollVectorsGpuWmma(bool attrValue);
  ::mlir::Attribute removeAdditionalPatternsAttr();
  ::mlir::Attribute removeBubbleCollapseAttr();
  ::mlir::Attribute removeBubbleExpandAttr();
  ::mlir::Attribute removeBubblePackUnPackAttr();
  ::mlir::Attribute removeCanonicalizationAttr();
  ::mlir::Attribute removeCseAttr();
  ::mlir::Attribute removeEraseUnnecessaryTensorOperandsAttr();
  ::mlir::Attribute removeExpandMemrefStridedMetadataAttr();
  ::mlir::Attribute removeFoldMemrefAliasesAttr();
  ::mlir::Attribute removeFoldReassociativeReshapesAttr();
  ::mlir::Attribute removeFoldTensorEmptyExtractAttr();
  ::mlir::Attribute removeLicmAttr();
  ::mlir::Attribute removeLinalgElementwiseGreedyFusionAttr();
  ::mlir::Attribute removeLowerTransferOpPermutationsAttr();
  ::mlir::Attribute removeLowerVectorMasksAttr();
  ::mlir::Attribute removeRankReducingLinalgAttr();
  ::mlir::Attribute removeRankReducingLinalgViaReshapesAttr();
  ::mlir::Attribute removeRankReducingVectorAttr();
  ::mlir::Attribute removeSwapPaddingElideConditionalAttr();
  ::mlir::Attribute removeSwappingPatternsAttr();
  ::mlir::Attribute removeTilingCanonicalizationAttr();
  ::mlir::Attribute removeUnrollVectorsGpuMmaSyncAttr();
  ::mlir::Attribute removeUnrollVectorsGpuWmmaAttr();
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, Value target, const ApplyPatternsOpPatterns &patterns);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, /*optional*/::mlir::UnitAttr additional_patterns, /*optional*/::mlir::UnitAttr bubble_collapse, /*optional*/::mlir::UnitAttr bubble_expand, /*optional*/::mlir::UnitAttr bubble_pack_un_pack, /*optional*/::mlir::UnitAttr canonicalization, /*optional*/::mlir::UnitAttr cse, /*optional*/::mlir::UnitAttr erase_unnecessary_tensor_operands, /*optional*/::mlir::UnitAttr expand_memref_strided_metadata, /*optional*/::mlir::UnitAttr fold_memref_aliases, /*optional*/::mlir::UnitAttr fold_reassociative_reshapes, /*optional*/::mlir::UnitAttr fold_tensor_empty_extract, /*optional*/::mlir::UnitAttr licm, /*optional*/::mlir::UnitAttr linalg_elementwise_greedy_fusion, /*optional*/::mlir::UnitAttr lower_transfer_op_permutations, /*optional*/::mlir::UnitAttr lower_vector_masks, /*optional*/::mlir::UnitAttr rank_reducing_linalg, /*optional*/::mlir::UnitAttr rank_reducing_linalg_via_reshapes, /*optional*/::mlir::UnitAttr rank_reducing_vector, /*optional*/::mlir::UnitAttr swap_padding_elide_conditional, /*optional*/::mlir::UnitAttr swapping_patterns, /*optional*/::mlir::UnitAttr tiling_canonicalization, /*optional*/::mlir::UnitAttr unroll_vectors_gpu_mma_sync, /*optional*/::mlir::UnitAttr unroll_vectors_gpu_wmma);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/::mlir::UnitAttr additional_patterns, /*optional*/::mlir::UnitAttr bubble_collapse, /*optional*/::mlir::UnitAttr bubble_expand, /*optional*/::mlir::UnitAttr bubble_pack_un_pack, /*optional*/::mlir::UnitAttr canonicalization, /*optional*/::mlir::UnitAttr cse, /*optional*/::mlir::UnitAttr erase_unnecessary_tensor_operands, /*optional*/::mlir::UnitAttr expand_memref_strided_metadata, /*optional*/::mlir::UnitAttr fold_memref_aliases, /*optional*/::mlir::UnitAttr fold_reassociative_reshapes, /*optional*/::mlir::UnitAttr fold_tensor_empty_extract, /*optional*/::mlir::UnitAttr licm, /*optional*/::mlir::UnitAttr linalg_elementwise_greedy_fusion, /*optional*/::mlir::UnitAttr lower_transfer_op_permutations, /*optional*/::mlir::UnitAttr lower_vector_masks, /*optional*/::mlir::UnitAttr rank_reducing_linalg, /*optional*/::mlir::UnitAttr rank_reducing_linalg_via_reshapes, /*optional*/::mlir::UnitAttr rank_reducing_vector, /*optional*/::mlir::UnitAttr swap_padding_elide_conditional, /*optional*/::mlir::UnitAttr swapping_patterns, /*optional*/::mlir::UnitAttr tiling_canonicalization, /*optional*/::mlir::UnitAttr unroll_vectors_gpu_mma_sync, /*optional*/::mlir::UnitAttr unroll_vectors_gpu_wmma);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, /*optional*/bool additional_patterns = false, /*optional*/bool bubble_collapse = false, /*optional*/bool bubble_expand = false, /*optional*/bool bubble_pack_un_pack = false, /*optional*/bool canonicalization = false, /*optional*/bool cse = false, /*optional*/bool erase_unnecessary_tensor_operands = false, /*optional*/bool expand_memref_strided_metadata = false, /*optional*/bool fold_memref_aliases = false, /*optional*/bool fold_reassociative_reshapes = false, /*optional*/bool fold_tensor_empty_extract = false, /*optional*/bool licm = false, /*optional*/bool linalg_elementwise_greedy_fusion = false, /*optional*/bool lower_transfer_op_permutations = false, /*optional*/bool lower_vector_masks = false, /*optional*/bool rank_reducing_linalg = false, /*optional*/bool rank_reducing_linalg_via_reshapes = false, /*optional*/bool rank_reducing_vector = false, /*optional*/bool swap_padding_elide_conditional = false, /*optional*/bool swapping_patterns = false, /*optional*/bool tiling_canonicalization = false, /*optional*/bool unroll_vectors_gpu_mma_sync = false, /*optional*/bool unroll_vectors_gpu_wmma = false);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/bool additional_patterns = false, /*optional*/bool bubble_collapse = false, /*optional*/bool bubble_expand = false, /*optional*/bool bubble_pack_un_pack = false, /*optional*/bool canonicalization = false, /*optional*/bool cse = false, /*optional*/bool erase_unnecessary_tensor_operands = false, /*optional*/bool expand_memref_strided_metadata = false, /*optional*/bool fold_memref_aliases = false, /*optional*/bool fold_reassociative_reshapes = false, /*optional*/bool fold_tensor_empty_extract = false, /*optional*/bool licm = false, /*optional*/bool linalg_elementwise_greedy_fusion = false, /*optional*/bool lower_transfer_op_permutations = false, /*optional*/bool lower_vector_masks = false, /*optional*/bool rank_reducing_linalg = false, /*optional*/bool rank_reducing_linalg_via_reshapes = false, /*optional*/bool rank_reducing_vector = false, /*optional*/bool swap_padding_elide_conditional = false, /*optional*/bool swapping_patterns = false, /*optional*/bool tiling_canonicalization = false, /*optional*/bool unroll_vectors_gpu_mma_sync = false, /*optional*/bool unroll_vectors_gpu_wmma = false);
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
    assert(index < 23 && "invalid attribute index");
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
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::ApplyPatternsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::HoistStaticAllocOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class HoistStaticAllocOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  HoistStaticAllocOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
};
} // namespace detail
template <typename RangeT>
class HoistStaticAllocOpGenericAdaptor : public detail::HoistStaticAllocOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::HoistStaticAllocOpGenericAdaptorBase;
public:
  HoistStaticAllocOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

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
class HoistStaticAllocOpAdaptor : public HoistStaticAllocOpGenericAdaptor<::mlir::ValueRange> {
public:
  using HoistStaticAllocOpGenericAdaptor::HoistStaticAllocOpGenericAdaptor;
  HoistStaticAllocOpAdaptor(HoistStaticAllocOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class HoistStaticAllocOp : public ::mlir::Op<HoistStaticAllocOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::OneResult, ::mlir::OpTrait::OneTypedResult<::mlir::transform::TransformHandleTypeInterface>::Impl, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::transform::FunctionalStyleTransformOpTrait, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformOpInterface::Trait, ::mlir::transform::TransformEachOpTrait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = HoistStaticAllocOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = HoistStaticAllocOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    return {};
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.hoist_static_alloc");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getResult();
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target);
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
  static ::mlir::ParseResult parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result);
  void print(::mlir::OpAsmPrinter &_odsPrinter);
public:
  ::mlir::DiagnosedSilenceableFailure applyToOne(
      ::mlir::func::FuncOp funcOp,
      ::mlir::transform::ApplyToEachResultList &results,
      ::mlir::transform::TransformState &state);
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::HoistStaticAllocOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::ShareForallOperandsOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class ShareForallOperandsOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  ShareForallOperandsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::DenseI64ArrayAttr getShareOperandsAttr();
  ::llvm::ArrayRef<int64_t> getShareOperands();
};
} // namespace detail
template <typename RangeT>
class ShareForallOperandsOpGenericAdaptor : public detail::ShareForallOperandsOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::ShareForallOperandsOpGenericAdaptorBase;
public:
  ShareForallOperandsOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index) {
    return Base::getODSOperandIndexAndLength(index, odsOperands.size());
  }

  RangeT getODSOperands(unsigned index) {
    auto valueRange = getODSOperandIndexAndLength(index);
    return {std::next(odsOperands.begin(), valueRange.first),
             std::next(odsOperands.begin(), valueRange.first + valueRange.second)};
  }

  ValueT getForallOp() {
    return (*getODSOperands(0).begin());
  }

  RangeT getOperands() {
    return odsOperands;
  }

private:
  RangeT odsOperands;
};
class ShareForallOperandsOpAdaptor : public ShareForallOperandsOpGenericAdaptor<::mlir::ValueRange> {
public:
  using ShareForallOperandsOpGenericAdaptor::ShareForallOperandsOpGenericAdaptor;
  ShareForallOperandsOpAdaptor(ShareForallOperandsOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class ShareForallOperandsOp : public ::mlir::Op<ShareForallOperandsOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::OneResult, ::mlir::OpTrait::OneTypedResult<::mlir::transform::TransformHandleTypeInterface>::Impl, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::transform::FunctionalStyleTransformOpTrait, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformEachOpTrait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = ShareForallOperandsOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = ShareForallOperandsOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("share_operands")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getShareOperandsAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getShareOperandsAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.share_forall_operands");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getForallOp();
  ::mlir::MutableOperandRange getForallOpMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::TypedValue<::mlir::transform::TransformHandleTypeInterface> getResult();
  ::mlir::DenseI64ArrayAttr getShareOperandsAttr();
  ::llvm::ArrayRef<int64_t> getShareOperands();
  void setShareOperandsAttr(::mlir::DenseI64ArrayAttr attr);
  void setShareOperands(::std::optional<::llvm::ArrayRef<int64_t>> attrValue);
  ::mlir::Attribute removeShareOperandsAttr();
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value forall_op, /*optional*/::mlir::DenseI64ArrayAttr share_operands);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value forall_op, /*optional*/::mlir::DenseI64ArrayAttr share_operands);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value forall_op, /*optional*/::llvm::ArrayRef<int64_t> share_operands = {});
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value forall_op, /*optional*/::llvm::ArrayRef<int64_t> share_operands = {});
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
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
      ::mlir::scf::ForallOp forallOp,
      ::mlir::transform::ApplyToEachResultList &results,
      ::mlir::transform::TransformState &state);
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::ShareForallOperandsOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::TransformBufferizeOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class TransformBufferizeOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  TransformBufferizeOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
  ::mlir::UnitAttr getTargetGpuAttr();
  bool getTargetGpu();
  ::mlir::UnitAttr getTestAnalysisOnlyAttr();
  bool getTestAnalysisOnly();
  ::mlir::UnitAttr getPrintConflictsAttr();
  bool getPrintConflicts();
};
} // namespace detail
template <typename RangeT>
class TransformBufferizeOpGenericAdaptor : public detail::TransformBufferizeOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::TransformBufferizeOpGenericAdaptorBase;
public:
  TransformBufferizeOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

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
class TransformBufferizeOpAdaptor : public TransformBufferizeOpGenericAdaptor<::mlir::ValueRange> {
public:
  using TransformBufferizeOpGenericAdaptor::TransformBufferizeOpGenericAdaptor;
  TransformBufferizeOpAdaptor(TransformBufferizeOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class TransformBufferizeOp : public ::mlir::Op<TransformBufferizeOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::OneResult, ::mlir::OpTrait::OneTypedResult<::mlir::pdl::OperationType>::Impl, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::transform::FunctionalStyleTransformOpTrait, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = TransformBufferizeOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = TransformBufferizeOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    static ::llvm::StringRef attrNames[] = {::llvm::StringRef("print_conflicts"), ::llvm::StringRef("target_gpu"), ::llvm::StringRef("test_analysis_only")};
    return ::llvm::ArrayRef(attrNames);
  }

  ::mlir::StringAttr getPrintConflictsAttrName() {
    return getAttributeNameForIndex(0);
  }

  static ::mlir::StringAttr getPrintConflictsAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 0);
  }

  ::mlir::StringAttr getTargetGpuAttrName() {
    return getAttributeNameForIndex(1);
  }

  static ::mlir::StringAttr getTargetGpuAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 1);
  }

  ::mlir::StringAttr getTestAnalysisOnlyAttrName() {
    return getAttributeNameForIndex(2);
  }

  static ::mlir::StringAttr getTestAnalysisOnlyAttrName(::mlir::OperationName name) {
    return getAttributeNameForIndex(name, 2);
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.bufferize");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getResult();
  ::mlir::UnitAttr getTargetGpuAttr();
  bool getTargetGpu();
  ::mlir::UnitAttr getTestAnalysisOnlyAttr();
  bool getTestAnalysisOnly();
  ::mlir::UnitAttr getPrintConflictsAttr();
  bool getPrintConflicts();
  void setTargetGpuAttr(::mlir::UnitAttr attr);
  void setTargetGpu(bool attrValue);
  void setTestAnalysisOnlyAttr(::mlir::UnitAttr attr);
  void setTestAnalysisOnly(bool attrValue);
  void setPrintConflictsAttr(::mlir::UnitAttr attr);
  void setPrintConflicts(bool attrValue);
  ::mlir::Attribute removeTargetGpuAttr();
  ::mlir::Attribute removeTestAnalysisOnlyAttr();
  ::mlir::Attribute removePrintConflictsAttr();
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, Value target, bool targetGpu = false, bool testAnalysisOnly = false, bool printConflicts = false);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, /*optional*/::mlir::UnitAttr target_gpu, /*optional*/::mlir::UnitAttr test_analysis_only, /*optional*/::mlir::UnitAttr print_conflicts);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/::mlir::UnitAttr target_gpu, /*optional*/::mlir::UnitAttr test_analysis_only, /*optional*/::mlir::UnitAttr print_conflicts);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target, /*optional*/bool target_gpu = false, /*optional*/bool test_analysis_only = false, /*optional*/bool print_conflicts = false);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target, /*optional*/bool target_gpu = false, /*optional*/bool test_analysis_only = false, /*optional*/bool print_conflicts = false);
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
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
    assert(index < 3 && "invalid attribute index");
    assert(name.getStringRef() == getOperationName() && "invalid operation name");
    return name.getAttributeNames()[index];
  }

public:
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::TransformBufferizeOp)

namespace mlir {
namespace transform {

//===----------------------------------------------------------------------===//
// mlir::transform::TransformEliminateEmptyTensorsOp declarations
//===----------------------------------------------------------------------===//

namespace detail {
class TransformEliminateEmptyTensorsOpGenericAdaptorBase {
protected:
  ::mlir::DictionaryAttr odsAttrs;
  ::mlir::RegionRange odsRegions;
  ::std::optional<::mlir::OperationName> odsOpName;
public:
  TransformEliminateEmptyTensorsOpGenericAdaptorBase(::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {});

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index, unsigned odsOperandsSize);
  ::mlir::DictionaryAttr getAttributes();
};
} // namespace detail
template <typename RangeT>
class TransformEliminateEmptyTensorsOpGenericAdaptor : public detail::TransformEliminateEmptyTensorsOpGenericAdaptorBase {
  using ValueT = ::llvm::detail::ValueOfRange<RangeT>;
  using Base = detail::TransformEliminateEmptyTensorsOpGenericAdaptorBase;
public:
  TransformEliminateEmptyTensorsOpGenericAdaptor(RangeT values, ::mlir::DictionaryAttr attrs = nullptr, ::mlir::RegionRange regions = {}) : Base(attrs, regions), odsOperands(values) {}

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
class TransformEliminateEmptyTensorsOpAdaptor : public TransformEliminateEmptyTensorsOpGenericAdaptor<::mlir::ValueRange> {
public:
  using TransformEliminateEmptyTensorsOpGenericAdaptor::TransformEliminateEmptyTensorsOpGenericAdaptor;
  TransformEliminateEmptyTensorsOpAdaptor(TransformEliminateEmptyTensorsOp op);

  ::mlir::LogicalResult verify(::mlir::Location loc);
};
class TransformEliminateEmptyTensorsOp : public ::mlir::Op<TransformEliminateEmptyTensorsOp, ::mlir::OpTrait::ZeroRegions, ::mlir::OpTrait::OneResult, ::mlir::OpTrait::OneTypedResult<::mlir::pdl::OperationType>::Impl, ::mlir::OpTrait::ZeroSuccessors, ::mlir::OpTrait::OneOperand, ::mlir::OpTrait::OpInvariants, ::mlir::transform::FunctionalStyleTransformOpTrait, ::mlir::MemoryEffectOpInterface::Trait, ::mlir::transform::TransformOpInterface::Trait> {
public:
  using Op::Op;
  using Op::print;
  using Adaptor = TransformEliminateEmptyTensorsOpAdaptor;
  template <typename RangeT>
  using GenericAdaptor = TransformEliminateEmptyTensorsOpGenericAdaptor<RangeT>;
  using FoldAdaptor = GenericAdaptor<::llvm::ArrayRef<::mlir::Attribute>>;
  static ::llvm::ArrayRef<::llvm::StringRef> getAttributeNames() {
    return {};
  }

  static constexpr ::llvm::StringLiteral getOperationName() {
    return ::llvm::StringLiteral("transform.eliminate_empty_tensors");
  }

  std::pair<unsigned, unsigned> getODSOperandIndexAndLength(unsigned index);
  ::mlir::Operation::operand_range getODSOperands(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getTarget();
  ::mlir::MutableOperandRange getTargetMutable();
  std::pair<unsigned, unsigned> getODSResultIndexAndLength(unsigned index);
  ::mlir::Operation::result_range getODSResults(unsigned index);
  ::mlir::TypedValue<::mlir::pdl::OperationType> getResult();
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, Value target);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::Type result, ::mlir::Value target);
  static void build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::Value target);
  static void build(::mlir::OpBuilder &, ::mlir::OperationState &odsState, ::mlir::TypeRange resultTypes, ::mlir::ValueRange operands, ::llvm::ArrayRef<::mlir::NamedAttribute> attributes = {});
  ::mlir::LogicalResult verifyInvariantsImpl();
  ::mlir::LogicalResult verifyInvariants();
  ::mlir::DiagnosedSilenceableFailure apply(::mlir::transform::TransformResults &transformResults, ::mlir::transform::TransformState &state);
  static ::mlir::ParseResult parse(::mlir::OpAsmParser &parser, ::mlir::OperationState &result);
  void print(::mlir::OpAsmPrinter &_odsPrinter);
public:
};
} // namespace transform
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(mlir::transform::TransformEliminateEmptyTensorsOp)


#endif  // GET_OP_CLASSES

