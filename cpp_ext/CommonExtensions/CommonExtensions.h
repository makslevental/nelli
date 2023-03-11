// Copyright 2022 The IREE Authors
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#ifndef MLIR_COMMON_TRANSFORMEXTENSIONS_COMMONEXTENSIONS_H_
#define MLIR_COMMON_TRANSFORMEXTENSIONS_COMMONEXTENSIONS_H_

#include "mlir/Dialect/Linalg/TransformOps/LinalgTransformOps.h"
#include "mlir/Dialect/PDL/IR/PDLTypes.h"
#include "mlir/Dialect/Transform/IR/TransformDialect.h"
#include "mlir/Dialect/Transform/IR/TransformInterfaces.h"

namespace mlir {
class DialectRegistry;

namespace func {
class FuncOp;
} // namespace func

namespace scf {
class ForallOp;
} // namespace scf

namespace transform {
// Types needed for builders.
struct TileSizesSpec;
struct NumThreadsSpec;
class TransformTypeInterface;

/// Selected patterns for ApplyPatternOp.
struct ApplyPatternsOpPatterns {
  bool additionalPatterns = false;
  bool bubbleCollapse = false;
  bool bubbleExpand = false;
  bool bubblePackUnPack = false;
  bool canonicalization = false;
  bool cse = false;
  bool eraseUnnecessaryTensorOperands = false;
  bool expandMemrefStridedMetadata = false;
  bool foldMemrefAliases = false;
  bool foldReassociativeReshapes = false;
  bool foldTensorEmptyExtract = false;
  bool licm = false;
  bool linalgElementwiseGreedyFusion = false;
  bool lowerTransferOpPermutations = false;
  bool lowerVectorMasks = false;
  bool promoteForallCaptureToShared = false;
  bool rankReducingLinalg = false;
  bool rankReducingLinalgViaReshapes = false;
  bool rankReducingVector = false;
  bool swapPaddingElideConditional = false;
  bool swappingPatterns = false;
  bool tilingCanonicalization = false;
  bool unrollVectorsGpuMmaSync = false;
  bool unrollVectorsGpuWmma = false;
};

} // namespace transform
} // namespace mlir

#define GET_OP_CLASSES
#include "CommonExtensionsOps.h.inc"

namespace mlir {

/// Creates an allocation in the entry block of the function if the size is
/// statically bounded. For a static allocation, it returns an allocation
/// of the same size but in the entry basic block. For dynamic (still bounded)
/// allocations creates an allocation, and inserts a subview to match the
/// dynamic shape of the allocation. Returns std::nullopt if the method
/// couldnt creat an allocation in the entry block.
template <typename AllocLikeOpType>
std::optional<Value> hoistOneStaticallyBoundAllocation(
    func::FuncOp funcOp, OpBuilder &builder, Location loc,
    MemRefType allocaType, ValueRange dynamicSizes,
    std::optional<uint64_t> alignment);

/// Hoists `allocaOp` to the entry block of the function if the size is
/// statically bounded. For a static allocation, it returns an allocation
/// of the same size but in the entry basic block. For dynamic (still bounded)
/// allocations creates an allocation, and inserts a subview to match the
/// dynamic shape of the allocation. The method returns a value, but
/// does not replace the uses of the `allocaOp`.
template <typename AllocLikeOpType>
std::optional<Value> hoistOneStaticallyBoundAllocation(
    func::FuncOp funcOp, OpBuilder &builder, AllocLikeOpType allocaOp);

/// Traverse funcOp and try to hoist every AllocaOp to the entry block of the
/// function if the size is statically bounded.
template <typename AllocLikeOpType>
void hoistStaticallyBoundAllocationsInFunc(RewriterBase &rewriter,
                                           func::FuncOp funcOp);

Operation *createLinalgCopyOp(OpBuilder &b, Location loc, Value from, Value to,
                              ArrayRef<NamedAttribute> attributes = {});


/// Registers common transformations that require IREE-specific information
/// into the transform dialect.
void registerTransformDialectCommonExtension(DialectRegistry &registry);
void registerTransformDialectCommonExtension(MLIRContext &context);

namespace transform {
/// Hook to register common transformations to the transform dialect.
class CommonExtensions
    : public transform::TransformDialectExtension<CommonExtensions> {
public:
  CommonExtensions();
};
} // namespace transform
} // namespace mlir

#endif // MLIR_COMMON_TRANSFORMEXTENSIONS_COMMONEXTENSIONS_H_
