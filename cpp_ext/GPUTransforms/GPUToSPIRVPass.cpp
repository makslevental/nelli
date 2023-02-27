//===- GPUToSPIRVPass.cpp -  --------------*- C++ -*-===//
//
// Copyright 2022 Intel Corporation
// Part of the IMEX Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file extends upstream GPUToSPIRV Pass that converts GPU ops to SPIR-V
/// by adding more conversion patterns like SCF, math and control flow. This
/// pass only converts gpu.func ops inside gpu.module op.
///
//===----------------------------------------------------------------------===//

#include "MapMemRefStorageClassPass.h"
#include "mlir/Conversion/ArithToSPIRV/ArithToSPIRV.h"
#include "mlir/Conversion/ControlFlowToSPIRV/ControlFlowToSPIRV.h"
#include "mlir/Conversion/FuncToSPIRV/FuncToSPIRV.h"
#include "mlir/Conversion/GPUToSPIRV/GPUToSPIRV.h"
#include "mlir/Conversion/MathToSPIRV/MathToSPIRV.h"
#include "mlir/Conversion/SCFToSPIRV/SCFToSPIRV.h"
#include <mlir/Conversion/MemRefToSPIRV/MemRefToSPIRV.h>

#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/SPIRV/IR/SPIRVDialect.h"
#include "mlir/Dialect/SPIRV/Transforms/SPIRVConversion.h"

using namespace mlir;

namespace {

/// Pass to lower GPU Dialect to SPIR-V. The pass only converts the gpu.func ops
/// inside gpu.module ops. i.e., the function that are referenced in
/// gpu.launch_func ops. For each such function
///
/// 1) Create a spirv::ModuleOp, and clone the function into spirv::ModuleOp
/// (the original function is still needed by the gpu::LaunchKernelOp, so cannot
/// replace it).
///
/// 2) Lower the body of the spirv::ModuleOp.
// class GPUXToSPIRVPass : public
// ::imex::ConvertGPUXToSPIRVBase<GPUXToSPIRVPass> {
struct GPUXToSPIRVPass
    : public PassWrapper<GPUXToSPIRVPass, OperationPass<mlir::ModuleOp>> {

  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(GPUXToSPIRVPass)

  GPUXToSPIRVPass() = default;
  GPUXToSPIRVPass(const GPUXToSPIRVPass &pass) : PassWrapper(pass) {}

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<spirv::SPIRVDialect, gpu::GPUDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "convert-gpux-to-spirv";
  }

  Option<bool> mapMemorySpace{*this, "map-memory-space", llvm::cl::init(true)};
  Option<bool> emulateLT32BitScalarTypes{
      *this, "emulate-lt-32-bit-scalar-types", llvm::cl::init(true)};
  Option<std::string> clientAPI{*this, "client-api", llvm::cl::Required,
                                llvm::cl::init("vulkan")};

  void runOnOperation() override {
    mlir::MLIRContext *context = &getContext();
    mlir::ModuleOp module = getOperation();

    llvm::SmallVector<mlir::Operation *, 1> gpuModules;
    mlir::OpBuilder builder(context);
    module.walk([&](mlir::gpu::GPUModuleOp moduleOp) {
      // For each kernel module (should be only 1 for now, but that is not a
      // requirement here), clone the module for conversion because the
      // gpu.launch function still needs the kernel module.
      builder.setInsertionPoint(moduleOp.getOperation());
      gpuModules.push_back(builder.clone(*moduleOp.getOperation()));
    });

    for (auto gpuModule : gpuModules) {
      // Map MemRef memory space to SPIR-V storage class first if requested.
      if (mapMemorySpace) {
        std::unique_ptr<mlir::ConversionTarget> target =
            nelli::getMemorySpaceToStorageClassTarget(*context);
        nelli::MemorySpaceToStorageClassMap memorySpaceMap;
        if (clientAPI == "opencl") {
          memorySpaceMap = nelli::mapMemorySpaceToOpenCLStorageClass;
        } else if (clientAPI == "vulkan") {
          memorySpaceMap = nelli::mapMemorySpaceToVulkanStorageClass;
        }
        nelli::MemorySpaceToStorageClassConverter converter(memorySpaceMap);

        mlir::RewritePatternSet patterns(context);
        nelli::populateMemorySpaceToStorageClassPatterns(converter, patterns);

        if (failed(
                applyFullConversion(gpuModule, *target, std::move(patterns))))
          return signalPassFailure();
      }

      auto targetAttr = mlir::spirv::lookupTargetEnvOrDefault(gpuModule);
      std::unique_ptr<mlir::ConversionTarget> target =
          mlir::SPIRVConversionTarget::get(targetAttr);

      mlir::RewritePatternSet patterns(context);
      mlir::SPIRVConversionOptions options;
      options.emulateLT32BitScalarTypes = this->emulateLT32BitScalarTypes;

      mlir::SPIRVTypeConverter typeConverter(targetAttr, options);

      //------- Upstream Conversion------------
      mlir::populateGPUToSPIRVPatterns(typeConverter, patterns);
      mlir::arith::populateArithToSPIRVPatterns(typeConverter, patterns);
      mlir::populateMemRefToSPIRVPatterns(typeConverter, patterns);
      mlir::populateFuncToSPIRVPatterns(typeConverter, patterns);
      // ---------------------------------------

      // IMEX GPUToSPIRV extension
      mlir::ScfToSPIRVContext scfToSpirvCtx;
      mlir::populateSCFToSPIRVPatterns(typeConverter, scfToSpirvCtx, patterns);
      mlir::cf::populateControlFlowToSPIRVPatterns(typeConverter, patterns);
      mlir::populateMathToSPIRVPatterns(typeConverter, patterns);

      if (failed(applyFullConversion(gpuModule, *target, std::move(patterns))))
        return signalPassFailure();
    }
  }
};

} // namespace

namespace nelli {
void registerGPUXToSPIRVPass() { PassRegistration<GPUXToSPIRVPass>(); }
} // namespace nelli
