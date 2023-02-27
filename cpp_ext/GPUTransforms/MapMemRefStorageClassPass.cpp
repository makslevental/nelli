//===- MapMemRefStorageCLassPass.cpp --------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements a pass to map numeric MemRef memory spaces to
// symbolic ones defined in the SPIR-V specification.
//
//===----------------------------------------------------------------------===//

#include "MapMemRefStorageClassPass.h"
#include "mlir/Dialect/SPIRV/IR/SPIRVAttributes.h"
#include "mlir/Dialect/SPIRV/IR/SPIRVDialect.h"
#include "mlir/Dialect/SPIRV/IR/SPIRVEnums.h"
#include "mlir/Dialect/SPIRV/IR/TargetAndABI.h"
#include "mlir/IR/BuiltinAttributes.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/FunctionInterfaces.h"
#include "mlir/Transforms/DialectConversion.h"
#include "llvm/ADT/StringExtras.h"
#include "llvm/Support/Debug.h"
#include <mlir/IR/IRMapping.h>
#include <mlir/Pass/Pass.h>

#define DEBUG_TYPE "nelli-map-memref-storage-class"

using namespace mlir;

//===----------------------------------------------------------------------===//
// Mappings
//===----------------------------------------------------------------------===//

/// Mapping between SPIR-V storage classes to memref memory spaces.
///
/// Note: memref does not have a defined semantics for each memory space; it
/// depends on the context where it is used. There are no particular reasons
/// behind the number assignments; we try to follow NVVM conventions and largely
/// give common storage classes a smaller number.
#define VULKAN_STORAGE_SPACE_MAP_LIST(MAP_FN)                                  \
  MAP_FN(spirv::StorageClass::StorageBuffer, 0)                                \
  MAP_FN(spirv::StorageClass::Generic, 1)                                      \
  MAP_FN(spirv::StorageClass::Workgroup, 3)                                    \
  MAP_FN(spirv::StorageClass::Uniform, 4)                                      \
  MAP_FN(spirv::StorageClass::Private, 5)                                      \
  MAP_FN(spirv::StorageClass::Function, 6)                                     \
  MAP_FN(spirv::StorageClass::PushConstant, 7)                                 \
  MAP_FN(spirv::StorageClass::UniformConstant, 8)                              \
  MAP_FN(spirv::StorageClass::Input, 9)                                        \
  MAP_FN(spirv::StorageClass::Output, 10)

std::optional<spirv::StorageClass>
nelli::mapMemorySpaceToVulkanStorageClass(Attribute memorySpaceAttr) {
  // Handle null memory space attribute specially.
  if (!memorySpaceAttr)
    return spirv::StorageClass::StorageBuffer;

  // Unknown dialect custom attributes are not supported by default.
  // Downstream callers should plug in more specialized ones.
  auto intAttr = memorySpaceAttr.dyn_cast<IntegerAttr>();
  if (!intAttr)
    return std::nullopt;
  unsigned memorySpace = intAttr.getInt();

#define STORAGE_SPACE_MAP_FN(storage, space)                                   \
  case space:                                                                  \
    return storage;

  switch (memorySpace) {
    VULKAN_STORAGE_SPACE_MAP_LIST(STORAGE_SPACE_MAP_FN)
  default:
    break;
  }
  return std::nullopt;

#undef STORAGE_SPACE_MAP_FN
}

std::optional<unsigned>
nelli::mapVulkanStorageClassToMemorySpace(spirv::StorageClass storageClass) {
#define STORAGE_SPACE_MAP_FN(storage, space)                                   \
  case storage:                                                                \
    return space;

  switch (storageClass) {
    VULKAN_STORAGE_SPACE_MAP_LIST(STORAGE_SPACE_MAP_FN)
  default:
    break;
  }
  return std::nullopt;

#undef STORAGE_SPACE_MAP_FN
}

#undef VULKAN_STORAGE_SPACE_MAP_LIST

#define OPENCL_STORAGE_SPACE_MAP_LIST(MAP_FN)                                  \
  MAP_FN(spirv::StorageClass::CrossWorkgroup, 0)                               \
  MAP_FN(spirv::StorageClass::Generic, 1)                                      \
  MAP_FN(spirv::StorageClass::Workgroup, 3)                                    \
  MAP_FN(spirv::StorageClass::UniformConstant, 4)                              \
  MAP_FN(spirv::StorageClass::Private, 5)                                      \
  MAP_FN(spirv::StorageClass::Function, 6)                                     \
  MAP_FN(spirv::StorageClass::Image, 7)

std::optional<spirv::StorageClass>
nelli::mapMemorySpaceToOpenCLStorageClass(Attribute memorySpaceAttr) {
  // Handle null memory space attribute specially.
  if (!memorySpaceAttr)
    return spirv::StorageClass::CrossWorkgroup;

  // Unknown dialect custom attributes are not supported by default.
  // Downstream callers should plug in more specialized ones.
  auto intAttr = memorySpaceAttr.dyn_cast<IntegerAttr>();
  if (!intAttr)
    return std::nullopt;
  unsigned memorySpace = intAttr.getInt();

#define STORAGE_SPACE_MAP_FN(storage, space)                                   \
  case space:                                                                  \
    return storage;

  switch (memorySpace) {
    OPENCL_STORAGE_SPACE_MAP_LIST(STORAGE_SPACE_MAP_FN)
  default:
    break;
  }
  return std::nullopt;

#undef STORAGE_SPACE_MAP_FN
}

std::optional<unsigned>
nelli::mapOpenCLStorageClassToMemorySpace(spirv::StorageClass storageClass) {
#define STORAGE_SPACE_MAP_FN(storage, space)                                   \
  case storage:                                                                \
    return space;

  switch (storageClass) {
    OPENCL_STORAGE_SPACE_MAP_LIST(STORAGE_SPACE_MAP_FN)
  default:
    break;
  }
  return std::nullopt;

#undef STORAGE_SPACE_MAP_FN
}

#undef OPENCL_STORAGE_SPACE_MAP_LIST

//===----------------------------------------------------------------------===//
// Type Converter
//===----------------------------------------------------------------------===//

nelli::MemorySpaceToStorageClassConverter::MemorySpaceToStorageClassConverter(
    const nelli::MemorySpaceToStorageClassMap &memorySpaceMap)
    : memorySpaceMap(memorySpaceMap) {
  // Pass through for all other types.
  addConversion([](Type type) { return type; });

  addConversion([this](BaseMemRefType memRefType) -> std::optional<Type> {
    std::optional<spirv::StorageClass> storage =
        this->memorySpaceMap(memRefType.getMemorySpace());
    if (!storage) {
      LLVM_DEBUG(llvm::dbgs()
                 << "cannot convert " << memRefType
                 << " due to being unable to find memory space in map\n");
      return std::nullopt;
    }

    auto storageAttr =
        spirv::StorageClassAttr::get(memRefType.getContext(), *storage);
    if (auto rankedType = memRefType.dyn_cast<MemRefType>()) {
      return MemRefType::get(memRefType.getShape(), memRefType.getElementType(),
                             rankedType.getLayout(), storageAttr);
    }
    return UnrankedMemRefType::get(memRefType.getElementType(), storageAttr);
  });

  addConversion([this](FunctionType type) {
    SmallVector<Type> inputs, results;
    inputs.reserve(type.getNumInputs());
    results.reserve(type.getNumResults());
    for (Type input : type.getInputs())
      inputs.push_back(convertType(input));
    for (Type result : type.getResults())
      results.push_back(convertType(result));
    return FunctionType::get(type.getContext(), inputs, results);
  });
}

//===----------------------------------------------------------------------===//
// Conversion Target
//===----------------------------------------------------------------------===//

/// Returns true if the given `type` is considered as legal for SPIR-V
/// conversion.
static bool isLegalType(Type type) {
  if (auto memRefType = type.dyn_cast<BaseMemRefType>()) {
    Attribute spaceAttr = memRefType.getMemorySpace();
    return spaceAttr && spaceAttr.isa<spirv::StorageClassAttr>();
  }
  return true;
}

/// Returns true if the given `attr` is considered as legal for SPIR-V
/// conversion.
static bool isLegalAttr(Attribute attr) {
  if (auto typeAttr = attr.dyn_cast<TypeAttr>())
    return isLegalType(typeAttr.getValue());
  return true;
}

/// Returns true if the given `op` is considered as legal for SPIR-V conversion.
static bool isLegalOp(Operation *op) {
  if (auto funcOp = dyn_cast<FunctionOpInterface>(op)) {
    return llvm::all_of(funcOp.getArgumentTypes(), isLegalType) &&
           llvm::all_of(funcOp.getResultTypes(), isLegalType);
    //           &&
    //           llvm::all_of(funcOp.getFunctionBody().getArgumentTypes(),
    //                        isLegalType);
  }

  auto attrs = llvm::map_range(op->getAttrs(), [](const NamedAttribute &attr) {
    return attr.getValue();
  });

  return llvm::all_of(op->getOperandTypes(), isLegalType) &&
         llvm::all_of(op->getResultTypes(), isLegalType) &&
         llvm::all_of(attrs, isLegalAttr);
}

std::unique_ptr<ConversionTarget>
nelli::getMemorySpaceToStorageClassTarget(MLIRContext &context) {
  auto target = std::make_unique<ConversionTarget>(context);
  target->markUnknownOpDynamicallyLegal(isLegalOp);
  return target;
}

//===----------------------------------------------------------------------===//
// Conversion Pattern
//===----------------------------------------------------------------------===//

namespace {
/// Converts any op that has operands/results/attributes with numeric MemRef
/// memory spaces.
struct MapMemRefStoragePattern final : public ConversionPattern {
  MapMemRefStoragePattern(MLIRContext *context, TypeConverter &converter)
      : ConversionPattern(converter, MatchAnyOpTypeTag(), 1, context) {}

  LogicalResult
  matchAndRewrite(Operation *op, ArrayRef<Value> operands,
                  ConversionPatternRewriter &rewriter) const override;
};
} // namespace

LogicalResult MapMemRefStoragePattern::matchAndRewrite(
    Operation *op, ArrayRef<Value> operands,
    ConversionPatternRewriter &rewriter) const {
  llvm::SmallVector<NamedAttribute, 4> newAttrs;
  newAttrs.reserve(op->getAttrs().size());
  for (auto attr : op->getAttrs()) {
    if (auto typeAttr = attr.getValue().dyn_cast<TypeAttr>()) {
      auto newAttr = getTypeConverter()->convertType(typeAttr.getValue());
      newAttrs.emplace_back(attr.getName(), TypeAttr::get(newAttr));
    } else {
      newAttrs.push_back(attr);
    }
  }

  llvm::SmallVector<Type, 4> newResults;
  (void)getTypeConverter()->convertTypes(op->getResultTypes(), newResults);

  OperationState state(op->getLoc(), op->getName().getStringRef(), operands,
                       newResults, newAttrs, op->getSuccessors());

  for (Region &region : op->getRegions()) {
    Region *newRegion = state.addRegion();
    rewriter.inlineRegionBefore(region, *newRegion, newRegion->end());
    TypeConverter::SignatureConversion result(newRegion->getNumArguments());
    (void)getTypeConverter()->convertSignatureArgs(
        newRegion->getArgumentTypes(), result);
    rewriter.applySignatureConversion(newRegion, result);
  }

  Operation *newOp = rewriter.create(state);
  rewriter.updateRootInPlace(
      op, [&] { op->setAttr("dead", UnitAttr::get(getContext())); });
  rewriter.replaceOp(op, newOp->getResults());
  rewriter.updateRootInPlace(op, [] {});
  return success();
}

void nelli::populateMemorySpaceToStorageClassPatterns(
    nelli::MemorySpaceToStorageClassConverter &typeConverter,
    RewritePatternSet &patterns) {
  patterns.add<MapMemRefStoragePattern>(patterns.getContext(), typeConverter);
}

//===----------------------------------------------------------------------===//
// Conversion Pass
//===----------------------------------------------------------------------===//

namespace {
struct MapMemRefStorageClassPass
    : public PassWrapper<MapMemRefStorageClassPass, OperationPass<>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(MapMemRefStorageClassPass)

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<spirv::SPIRVDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "nelli-map-memref-spirv-storage-class";
  }

  MapMemRefStorageClassPass(const MapMemRefStorageClassPass &pass)
      : PassWrapper(pass) {}
  explicit MapMemRefStorageClassPass() {
    memorySpaceMap = nelli::mapMemorySpaceToVulkanStorageClass;
  }
  mlir::Pass::Option<std::string> clientAPI{
      *this, "client-api",
      llvm::cl::desc("The client API to use for populating mappings"),
      llvm::cl::init("vulkan")};

  explicit MapMemRefStorageClassPass(
      nelli::MemorySpaceToStorageClassMap memorySpaceMap)
      : memorySpaceMap(std::move(memorySpaceMap)) {}

  LogicalResult initializeOptions(StringRef options) override;

  void runOnOperation() override;

  nelli::MemorySpaceToStorageClassMap memorySpaceMap;
};
} // namespace

LogicalResult MapMemRefStorageClassPass::initializeOptions(StringRef options) {
  if (failed(Pass::initializeOptions(options)))
    return failure();

  if (clientAPI == "opencl") {
    memorySpaceMap = nelli::mapMemorySpaceToOpenCLStorageClass;
  } else if (clientAPI == "vulkan") {
    memorySpaceMap = nelli::mapMemorySpaceToVulkanStorageClass;
  }
  if (clientAPI != "vulkan" && clientAPI != "opencl")
    return failure();

  return success();
}

void MapMemRefStorageClassPass::runOnOperation() {
  MLIRContext *context = &getContext();
  Operation *op = getOperation();

  if (spirv::TargetEnvAttr attr = spirv::lookupTargetEnv(op)) {
    spirv::TargetEnv targetEnv(attr);
    if (targetEnv.allows(spirv::Capability::Kernel)) {
      memorySpaceMap = nelli::mapMemorySpaceToOpenCLStorageClass;
    } else if (targetEnv.allows(spirv::Capability::Shader)) {
      memorySpaceMap = nelli::mapMemorySpaceToVulkanStorageClass;
    }
  }

  auto target = nelli::getMemorySpaceToStorageClassTarget(*context);
  nelli::MemorySpaceToStorageClassConverter converter(memorySpaceMap);

  RewritePatternSet patterns(context);
  nelli::populateMemorySpaceToStorageClassPatterns(converter, patterns);

  OpPrintingFlags flags;
  LLVM_DEBUG(llvm::dbgs() << "\n");
  LLVM_DEBUG(llvm::dbgs() << "\n");
  LLVM_DEBUG(llvm::dbgs() << "\n");
  LLVM_DEBUG(llvm::dbgs() << "\n");
  LLVM_DEBUG(llvm::dbgs() << __FILE__ << __LINE__ << " apply fully conversion "
                          << "\n");
  LLVM_DEBUG(llvm::dbgs() << "\n");
  LLVM_DEBUG(llvm::dbgs() << "\n");
  LLVM_DEBUG(llvm::dbgs() << "\n");
  LLVM_DEBUG(llvm::dbgs() << "\n");
  DenseSet<Operation *> unconvertedOps;

  if (failed(applyFullConversion(op, *target, std::move(patterns)))) {
    return signalPassFailure();
  }
}

namespace nelli {
void registerMapMemRefStorageClassPass() {
  PassRegistration<MapMemRefStorageClassPass>();
}
} // namespace nelli
