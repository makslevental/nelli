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
//  bool promoteForallCaptureToShared = false;
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
