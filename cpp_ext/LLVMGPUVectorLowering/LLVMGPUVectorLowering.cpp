// Copyright 2021 The IREE Authors
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include "LLVMGPUVectorLowering.h"
#include "mlir/Conversion/VectorToSCF/VectorToSCF.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/MemRef/Transforms/Passes.h"
#include "mlir/Dialect/Vector/Transforms/VectorTransforms.h"
#include "mlir/Dialect/Vector/Transforms/LoweringPatterns.h"
#include "mlir/Dialect/MemRef/Transforms/Transforms.h"
#include "mlir/IR/Operation.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Transforms/Passes.h"

#define DEBUG_TYPE "llvmgpu-vector-lowering"

using namespace mlir;

namespace nelli {

//====---------------------------------------------------------------------===//
// Patterns for late vector op lowering.
//====---------------------------------------------------------------------===//

namespace {
struct LLVMGPUVectorLoweringPass
    : public PassWrapper<LLVMGPUVectorLoweringPass,
                         OperationPass<func::FuncOp>> {

  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(LLVMGPUVectorLoweringPass)
  LLVMGPUVectorLoweringPass() = default;
  LLVMGPUVectorLoweringPass(const LLVMGPUVectorLoweringPass &pass)
      : PassWrapper(pass) {}

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<vector::VectorDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "llvmgpu-vector-lowering";
  }
  void runOnOperation() override {
    func::FuncOp funcOp = getOperation();

    {
      // Lower high level vector operations like contract or multidim reduce ops
      // to lower level vector ops.
      RewritePatternSet contractLoweringPatterns(funcOp.getContext());
      vector::populateVectorBroadcastLoweringPatterns(contractLoweringPatterns);
      vector::populateVectorContractLoweringPatterns(
          contractLoweringPatterns,
          vector::VectorTransformsOptions().setVectorTransformsOptions(
              vector::VectorContractLowering::OuterProduct));
      vector::populateVectorMaskOpLoweringPatterns(contractLoweringPatterns);
      vector::populateVectorShapeCastLoweringPatterns(contractLoweringPatterns);
      vector::populateVectorMultiReductionLoweringPatterns(
          contractLoweringPatterns,
          vector::VectorMultiReductionLowering::InnerParallel);
      if (failed(applyPatternsAndFoldGreedily(
              funcOp, std::move(contractLoweringPatterns)))) {
        return signalPassFailure();
      }
    }

    RewritePatternSet vectorToLoopsPatterns(&getContext());
    VectorTransferToSCFOptions vectorToSCFOptions;
    vectorToSCFOptions.enableFullUnroll();
    populateVectorToSCFConversionPatterns(vectorToLoopsPatterns,
                                          vectorToSCFOptions);
    memref::populateFoldMemRefAliasOpPatterns(vectorToLoopsPatterns);
    vector::populateVectorTransferLoweringPatterns(vectorToLoopsPatterns);
    if (failed(applyPatternsAndFoldGreedily(
            funcOp, std::move(vectorToLoopsPatterns)))) {
      return signalPassFailure();
    }
  }
};
} // namespace

void registerLLVMGPUVectorLoweringPass() {
  mlir::PassRegistration<LLVMGPUVectorLoweringPass>();
}

} // namespace nelli
