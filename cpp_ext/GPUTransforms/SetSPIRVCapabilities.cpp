//===- SetSPIRVCapabilities.cpp - SetSPIRVCapabilities Pass  -------*- C++
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
/// This file adds various capabilties & extensions for the SPIRV execution.
///
//===----------------------------------------------------------------------===//

#include "GPUTransforms.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/SPIRV/IR/SPIRVDialect.h"
#include "mlir/Dialect/SPIRV/IR/TargetAndABI.h"
#include "mlir/Pass/Pass.h"

using namespace mlir;

namespace {
struct SetSPIRVCapabilitiesPass
    : public PassWrapper<SetSPIRVCapabilitiesPass,
                         OperationPass<mlir::ModuleOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(SetSPIRVCapabilitiesPass)

  SetSPIRVCapabilitiesPass() = default;
  SetSPIRVCapabilitiesPass(const SetSPIRVCapabilitiesPass &pass)
      : PassWrapper(pass) {}

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<spirv::SPIRVDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "set-spirv-capabilities";
  }

  Option<std::string> clientAPI{*this, "client-api", llvm::cl::Required};

  void runOnOperation() override {
    namespace spirv = mlir::spirv;
    auto context = &getContext();
    spirv::Capability caps_opencl[] = {
        // clang-format off
        spirv::Capability::Addresses,
        spirv::Capability::Float16Buffer,
        spirv::Capability::Int64,
        spirv::Capability::Int16,
        spirv::Capability::Int8,
        spirv::Capability::Kernel,
        spirv::Capability::Linkage,
        spirv::Capability::Vector16,
        spirv::Capability::GenericPointer,
        spirv::Capability::Groups,
        spirv::Capability::Float16,
        spirv::Capability::Float64,
        spirv::Capability::AtomicFloat32AddEXT,
        spirv::Capability::ExpectAssumeKHR,
        // clang-format on
    };
    spirv::Capability caps_vulkan[] = {
        // clang-format off
        spirv::Capability::Shader,
        // TODO(max): hack - not true?
        spirv::Capability::Int64,
        // clang-format on
    };
    spirv::Extension exts_opencl[] = {
        spirv::Extension::SPV_EXT_shader_atomic_float_add,
        spirv::Extension::SPV_KHR_expect_assume};
    spirv::Extension exts_vulkan[] = {
        spirv::Extension::SPV_KHR_storage_buffer_storage_class};
    auto op = getOperation();
    if (clientAPI == "opencl") {
      auto triple = spirv::VerCapExtAttr::get(
          spirv::Version::V_1_0, caps_opencl, exts_opencl, context);
      auto attr = spirv::TargetEnvAttr::get(
          triple, spirv::getDefaultResourceLimits(context),
          spirv::ClientAPI::OpenCL, spirv::Vendor::Unknown,
          spirv::DeviceType::Unknown, spirv::TargetEnvAttr::kUnknownDeviceID);
      op->setAttr(spirv::getTargetEnvAttrName(), attr);
    } else if (clientAPI == "vulkan") {
      auto triple = spirv::VerCapExtAttr::get(
          spirv::Version::V_1_0, caps_vulkan, exts_vulkan, context);
      auto attr = spirv::TargetEnvAttr::get(
          triple, spirv::getDefaultResourceLimits(context),
          spirv::ClientAPI::Vulkan, spirv::Vendor::Unknown,
          spirv::DeviceType::Unknown, spirv::TargetEnvAttr::kUnknownDeviceID);
      op->setAttr(spirv::getTargetEnvAttrName(), attr);
    } else {
      // TODO(max): hack?
      auto triple = spirv::VerCapExtAttr::get(
          spirv::Version::V_1_0, caps_vulkan, exts_vulkan, context);
      auto attr = spirv::TargetEnvAttr::get(
          triple, spirv::getDefaultResourceLimits(context),
          spirv::ClientAPI::Unknown, spirv::Vendor::Unknown,
          spirv::DeviceType::Unknown, spirv::TargetEnvAttr::kUnknownDeviceID);
      op->setAttr(spirv::getTargetEnvAttrName(), attr);
    }
  }
};

} // namespace

namespace nelli {
void registerSetSPIRVCapabilitiesPass() {
  PassRegistration<SetSPIRVCapabilitiesPass>();
}
} // namespace nelli
