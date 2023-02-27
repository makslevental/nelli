//===- SetSPIRVAbiAttribute.cpp - SetSPIRVAbiAttribute Pass  -------*- C++
//-*-===//
//
// Copyright 2022 Intel Corporation
// Part of the IMEX Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file adds a kernel attribute called spv.entry_point_abi to the kernel
/// function.
///
//===----------------------------------------------------------------------===//

#include "GPUTransforms.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/GPU/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/SPIRV/IR/SPIRVDialect.h"
#include "mlir/Dialect/SPIRV/IR/TargetAndABI.h"
#include "mlir/Pass/Pass.h"
#include "llvm/ADT/SmallVector.h"
#include <iostream>

using namespace llvm;
using namespace mlir;

namespace {
struct SetSPIRVAbiAttributePass
    : public PassWrapper<SetSPIRVAbiAttributePass,
                         OperationPass<gpu::GPUModuleOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(SetSPIRVAbiAttributePass)

  SetSPIRVAbiAttributePass() = default;
  SetSPIRVAbiAttributePass(const SetSPIRVAbiAttributePass &pass)
      : PassWrapper(pass) {}

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<spirv::SPIRVDialect, gpu::GPUDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "set-spirv-abi-attrs";
  }

  ListOption<int32_t> workgroupSize{*this, "workgroup-size",
                                    llvm::cl::Required};

  void runOnOperation() override {
    auto gpuModule = getOperation();
    auto *context = &getContext();
    auto attrName =
        mlir::StringAttr::get(context, mlir::spirv::getEntryPointABIAttrName());

    mlir::spirv::EntryPointABIAttr abi;
    if (!workgroupSize.hasValue()) {
      abi = mlir::spirv::getEntryPointABIAttr(context);
    } else {
      abi = mlir::spirv::getEntryPointABIAttr(context, workgroupSize);
    }

    for (auto gpuFunc : gpuModule.getOps<mlir::gpu::GPUFuncOp>()) {
      if (!mlir::gpu::GPUDialect::isKernel(gpuFunc) ||
          gpuFunc->getAttr(attrName))
        continue;

      gpuFunc->setAttr(attrName, abi);
    }
  }
};

} // namespace

namespace nelli {
void registerSetSPIRVAbiAttributePass() {
  PassRegistration<SetSPIRVAbiAttributePass>();
}
} // namespace nelli
