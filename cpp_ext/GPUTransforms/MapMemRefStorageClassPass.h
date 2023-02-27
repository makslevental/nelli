//===- MemRefToSPIRV.h - MemRef to SPIR-V Patterns --------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Provides patterns to convert MemRef dialect to SPIR-V dialect.
//
//===----------------------------------------------------------------------===//

#ifndef NELLI_MAPMEMREFSTORAGECLASSPASS_H
#define NELLI_MAPMEMREFSTORAGECLASSPASS_H

#include "mlir/Dialect/SPIRV/IR/SPIRVEnums.h"
#include "mlir/Transforms/DialectConversion.h"
#include <memory>
#include <mlir/Dialect/SPIRV/Transforms/SPIRVConversion.h>

using namespace mlir;

namespace nelli {

/// Mapping from numeric MemRef memory spaces into SPIR-V symbolic ones.
using MemorySpaceToStorageClassMap =
    std::function<std::optional<spirv::StorageClass>(mlir::Attribute)>;

/// Maps MemRef memory spaces to storage classes for Vulkan-flavored SPIR-V
/// using the default rule. Returns std::nullopt if the memory space is unknown.
std::optional<spirv::StorageClass>
    mapMemorySpaceToVulkanStorageClass(mlir::Attribute);
/// Maps storage classes for Vulkan-flavored SPIR-V to MemRef memory spaces
/// using the default rule. Returns std::nullopt if the storage class is
/// unsupported.
std::optional<unsigned> mapVulkanStorageClassToMemorySpace(spirv::StorageClass);

/// Maps MemRef memory spaces to storage classes for OpenCL-flavored SPIR-V
/// using the default rule. Returns std::nullopt if the memory space is unknown.
std::optional<spirv::StorageClass>
    mapMemorySpaceToOpenCLStorageClass(mlir::Attribute);
/// Maps storage classes for OpenCL-flavored SPIR-V to MemRef memory spaces
/// using the default rule. Returns std::nullopt if the storage class is
/// unsupported.
std::optional<unsigned> mapOpenCLStorageClassToMemorySpace(spirv::StorageClass);

/// Type converter for converting numeric MemRef memory spaces into SPIR-V
/// symbolic ones.
class MemorySpaceToStorageClassConverter : public TypeConverter {
public:
  explicit MemorySpaceToStorageClassConverter(
      const MemorySpaceToStorageClassMap &memorySpaceMap);

private:
  MemorySpaceToStorageClassMap memorySpaceMap;
};

/// Creates the target that populates legality of ops with MemRef types.
std::unique_ptr<ConversionTarget>
getMemorySpaceToStorageClassTarget(MLIRContext &);

/// Appends to a pattern list additional patterns for converting numeric MemRef
/// memory spaces into SPIR-V symbolic ones.
void populateMemorySpaceToStorageClassPatterns(
    MemorySpaceToStorageClassConverter &typeConverter,
    RewritePatternSet &patterns);

void registerMapMemRefStorageClassPass();

} // namespace nelli

#endif // NELLI_MAPMEMREFSTORAGECLASSPASS_H
