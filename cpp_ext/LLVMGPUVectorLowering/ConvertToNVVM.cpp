// Copyright 2021 The IREE Authors
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include "LLVMGPUVectorLowering.h"
#include "mlir/Conversion/ArithToLLVM/ArithToLLVM.h"
#include "mlir/Conversion/ControlFlowToLLVM/ControlFlowToLLVM.h"
#include "mlir/Conversion/FuncToLLVM/ConvertFuncToLLVM.h"
#include "mlir/Conversion/GPUToNVVM/GPUToNVVMPass.h"
#include "mlir/Conversion/LLVMCommon/ConversionTarget.h"
#include "mlir/Conversion/LLVMCommon/LoweringOptions.h"
#include "mlir/Conversion/LLVMCommon/TypeConverter.h"
#include "mlir/Conversion/MathToLLVM/MathToLLVM.h"
#include "mlir/Conversion/MemRefToLLVM/MemRefToLLVM.h"
#include "mlir/Conversion/NVGPUToNVVM/NVGPUToNVVM.h"
#include "mlir/Conversion/VectorToLLVM/ConvertVectorToLLVM.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/GPU/Transforms/Passes.h"
#include "mlir/Dialect/LLVMIR/NVVMDialect.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/MemRef/Transforms/Passes.h"
#include "mlir/Dialect/NVGPU/IR/NVGPUDialect.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Dialect/Vector/Transforms/VectorRewritePatterns.h"
#include "mlir/Dialect/Vector/Transforms/LoweringPatterns.h"
#include "mlir/Dialect/MemRef/Transforms/Transforms.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Transforms/Passes.h"

namespace mlir {

// A `dealloc` is converted into a call to `free` on the underlying data buffer.
// The memref descriptor being an SSA value, there is no need to clean it up
// in any way.
struct DropSharedMemoryDeallocOp : public OpRewritePattern<memref::DeallocOp> {
  using OpRewritePattern::OpRewritePattern;

  LogicalResult matchAndRewrite(memref::DeallocOp op,
                                PatternRewriter &rewriter) const override {
    auto addressSpace = op.getMemref()
                            .getType()
                            .cast<MemRefType>()
                            .getMemorySpace()
                            .dyn_cast_or_null<gpu::AddressSpaceAttr>();
    if (!addressSpace ||
        addressSpace.getValue() != gpu::GPUDialect::getWorkgroupAddressSpace())
      return failure();
    rewriter.eraseOp(op);
    return success();
  }
};

using MemorySpaceMapping =
    std::function<unsigned(gpu::AddressSpace gpuAddressSpace)>;
static IntegerAttr wrapNumericMemorySpace(MLIRContext *ctx, unsigned space) {
  return IntegerAttr::get(IntegerType::get(ctx, 64), space);
}

void populateGpuMemorySpaceAttributeConversions(
    TypeConverter &typeConverter, const MemorySpaceMapping &mapping) {
  typeConverter.addTypeAttributeConversion(
      [mapping](BaseMemRefType type, gpu::AddressSpaceAttr memorySpaceAttr) {
        gpu::AddressSpace memorySpace = memorySpaceAttr.getValue();
        unsigned addressSpace = mapping(memorySpace);
        return wrapNumericMemorySpace(memorySpaceAttr.getContext(),
                                      addressSpace);
      });
}

/// Scalarize math ops. It is needed to lower vector operation that don't have
/// vector support in CUDA and ROCM device library.
template <typename MathOpTy>
struct ScalarizeMathOp : public OpRewritePattern<MathOpTy> {
  using OpRewritePattern<MathOpTy>::OpRewritePattern;

  LogicalResult matchAndRewrite(MathOpTy mathOp,
                                PatternRewriter &rewriter) const override {
    auto vecType = mathOp.getType().template dyn_cast<VectorType>();
    if (!vecType)
      return failure();
    Location loc = mathOp.getLoc();
    Value newVector = rewriter.create<arith::ConstantOp>(
        loc, vecType, rewriter.getZeroAttr(vecType));

    for (int64_t element : llvm::seq(int64_t(0), vecType.getNumElements())) {
      llvm::SmallVector<int64_t> indices;
      int64_t projectIndex = element;
      for (int64_t dim : llvm::seq(int64_t(0), vecType.getRank())) {
        int64_t index = projectIndex % vecType.getDimSize(dim);
        projectIndex = projectIndex / vecType.getDimSize(dim);
        indices.push_back(index);
      }
      SmallVector<Value> newOperands;
      for (Value operand : mathOp->getOperands()) {
        newOperands.push_back(
            rewriter.create<vector::ExtractOp>(loc, operand, indices));
      }
      Value scalarOp = rewriter.create<MathOpTy>(loc, newOperands);
      newVector =
          rewriter.create<vector::InsertOp>(loc, scalarOp, newVector, indices);
    }
    rewriter.replaceOp(mathOp, newVector);
    return success();
  }
};

void populateScalarizeMathOps(RewritePatternSet &patterns) {
  patterns.add<ScalarizeMathOp<math::SqrtOp>, ScalarizeMathOp<math::AbsFOp>,
               ScalarizeMathOp<math::AtanOp>, ScalarizeMathOp<math::Atan2Op>,
               ScalarizeMathOp<math::CeilOp>, ScalarizeMathOp<math::CosOp>,
               ScalarizeMathOp<math::ExpOp>, ScalarizeMathOp<math::ExpM1Op>,
               ScalarizeMathOp<math::FloorOp>, ScalarizeMathOp<math::LogOp>,
               ScalarizeMathOp<math::Log1pOp>, ScalarizeMathOp<math::Log10Op>,
               ScalarizeMathOp<math::Log2Op>, ScalarizeMathOp<math::PowFOp>,
               ScalarizeMathOp<math::RsqrtOp>, ScalarizeMathOp<math::SinOp>,
               ScalarizeMathOp<math::SqrtOp>, ScalarizeMathOp<math::TanhOp>>(
      patterns.getContext());
}

struct ConvertSharedMemAllocOp : public OpRewritePattern<memref::AllocOp> {
  using OpRewritePattern<memref::AllocOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(memref::AllocOp allocOp,
                                PatternRewriter &rewriter) const override {
    auto addressSpace = allocOp.getType()
                            .getMemorySpace()
                            .dyn_cast_or_null<gpu::AddressSpaceAttr>();
    if (!addressSpace ||
        addressSpace.getValue() != gpu::GPUDialect::getWorkgroupAddressSpace())
      return failure();
    ArrayRef<int64_t> shape = allocOp.getType().getShape();
    if (llvm::any_of(shape,
                     [](int64_t dim) { return dim == ShapedType::kDynamic; })) {
      return failure();
    }

    uint64_t alignement;
    if (std::optional<uint64_t> alignementInfo = allocOp.getAlignment()) {
      alignement = alignementInfo.value();
    } else {
      // If no alignment specified align at least to the size of an element.
      Type elType = allocOp.getType().getElementType();
      if (auto shapeType = elType.dyn_cast<ShapedType>()) {
        // TODO(max): data layout
        // alignement = shapeType.getSizeInBits() / 8;
        alignement = elType.getIntOrFloatBitWidth() / 8;
      }
      else
        alignement = elType.getIntOrFloatBitWidth() / 8;
    }
    // In CUDA workgroup memory is represented by a global variable.
    MemRefType allocType = allocOp.getType();
    auto funcOp = allocOp->getParentOfType<func::FuncOp>();
    auto moduleOp = funcOp->getParentOfType<ModuleOp>();
    SymbolTable symbolTable(moduleOp);
    OpBuilder::InsertionGuard guard(rewriter);
    rewriter.setInsertionPoint(&moduleOp.front());
    auto global = rewriter.create<memref::GlobalOp>(
        funcOp.getLoc(), "__shared_memory__",
        /*sym_visibility=*/rewriter.getStringAttr("private"),
        /*type=*/allocType,
        /*initial_value=*/ElementsAttr(),
        /*constant=*/false,
        /*alignment=*/rewriter.getI64IntegerAttr(alignement));
    symbolTable.insert(global);

    rewriter.setInsertionPointToStart(&(*funcOp.getFunctionBody().begin()));
    rewriter.replaceOpWithNewOp<memref::GetGlobalOp>(allocOp, global.getType(),
                                                     global.getName());
    return success();
  }
};

void populateConvertSharedMemoryAllocOps(RewritePatternSet &patterns) {
  patterns.add<ConvertSharedMemAllocOp>(patterns.getContext());
}

void ConvertToDynamicSharedMemory(ModuleOp moduleOp) {
  SymbolTableCollection symbolTableCollection;
  // Collect all the adressOfOps to static shared memory globals.
  SmallVector<LLVM::AddressOfOp> addressOfOps;
  moduleOp.walk([&](LLVM::AddressOfOp addressOfOp) {
    // Check that the global associated with this addressOfOp has shared memory
    // space.
    if (addressOfOp.getGlobal(symbolTableCollection).getAddrSpace() == 3)
      addressOfOps.push_back(addressOfOp);
  });
  if (addressOfOps.size() == 0)
    return;
  OpBuilder builder(moduleOp);
  builder.setInsertionPoint(&moduleOp.front());
  auto type =
      LLVM::LLVMArrayType::get(IntegerType::get(builder.getContext(), 8), 0);
  LLVM::GlobalOp global = builder.create<LLVM::GlobalOp>(
      moduleOp.getLoc(), type, /*isConstant=*/false, LLVM::Linkage::External,
      "__dynamic_shared_memory__", Attribute(),
      /*alignment=*/16, /*addr_space=*/3);
  uint32_t numberOfBytes = 0;
  // Replace the addressOfOps with correctly offseted pointers to dynamic
  // shared memory.
  llvm::SmallDenseMap<LLVM::GlobalOp, uint32_t> globalMemoryOffsetMap;
  for (auto addressOfOp : addressOfOps) {
    uint32_t offset = 0;
    auto globalOp = addressOfOp.getGlobal(symbolTableCollection);
    if (globalMemoryOffsetMap.count(globalOp)) {
      offset = globalMemoryOffsetMap[globalOp];
    } else {
      offset = numberOfBytes;
      if (std::optional<uint64_t> alignment = globalOp.getAlignment()) {
        offset = llvm::alignTo(offset, *alignment);
      }
      globalMemoryOffsetMap[globalOp] = offset;
      auto thisarray = globalOp.getType();
      DataLayout dataLayout = DataLayout::closest(addressOfOp);
      numberOfBytes = offset + dataLayout.getTypeSizeInBits(thisarray) / 8;
    }
    auto loc = addressOfOp.getLoc();
    builder.setInsertionPoint(addressOfOp);
    LLVM::AddressOfOp globalPtr =
        builder.create<LLVM::AddressOfOp>(loc, global);
    Value zero = builder.create<LLVM::ConstantOp>(
        loc, IntegerType::get(builder.getContext(), 64),
        builder.getI64IntegerAttr(0));
    Value offsetValue = builder.create<LLVM::ConstantOp>(
        loc, IntegerType::get(builder.getContext(), 64),
        builder.getI64IntegerAttr(offset));
    Value shiftedPtr = builder.create<LLVM::GEPOp>(
        loc, globalPtr.getType(),
        LLVM::LLVMPointerType::get(globalOp.getContext()), globalPtr,
        ValueRange({zero, offsetValue}));
    addressOfOp.replaceAllUsesWith(shiftedPtr);
    addressOfOp.erase();
  }
}

/// A pass that replaces all occurrences of GPU device operations with their
/// corresponding NVVM equivalent.
///
/// This pass only handles device code and is not meant to be run on GPU host
/// code.
// struct ConvertToNVVMPass : public ConvertToNVVMBase<ConvertToNVVMPass> {
struct ConvertToNVVMPass
    : public PassWrapper<ConvertToNVVMPass, OperationPass<ModuleOp>> {

  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(ConvertToNVVMPass)
  ConvertToNVVMPass() = default;
  ConvertToNVVMPass(const ConvertToNVVMPass &pass) : PassWrapper(pass) {}

  [[nodiscard]] StringRef getArgument() const final {
    return "convert-to-nvvm";
  }
  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<LLVM::LLVMDialect, NVVM::NVVMDialect>();
  }
  void runOnOperation() override {
    ModuleOp m = getOperation();
    /// Customize the bitwidth used for the device side index computations.
    LowerToLLVMOptions options(m.getContext(), DataLayout(m));
    options.overrideIndexBitwidth(64);
    LLVMTypeConverter converter(m.getContext(), options);
    populateGpuMemorySpaceAttributeConversions(
        converter, [](gpu::AddressSpace space) -> unsigned {
          switch (space) {
          case gpu::AddressSpace::Global:
            return static_cast<unsigned>(
                NVVM::NVVMMemorySpace::kGlobalMemorySpace);
          case gpu::AddressSpace::Workgroup:
            return static_cast<unsigned>(
                NVVM::NVVMMemorySpace::kSharedMemorySpace);
          case gpu::AddressSpace::Private:
            return 0;
          }
          llvm_unreachable("unknown address space enum value");
          return 0;
        });
    // Lowering for MMAMatrixType.
    converter.addConversion([&](gpu::MMAMatrixType type) -> Type {
      return convertMMAToLLVMType(type);
    });
    // Convert dummy tokens.
    converter.addConversion([&](nvgpu::DeviceAsyncTokenType type) -> Type {
      return converter.convertType(IntegerType::get(type.getContext(), 32));
    });
    // Apply in-dialect lowering first. In-dialect lowering will replace ops
    // which need to be lowered further, which is not supported by a single
    // conversion pass.
    // Run Vector -> Vector transformations ahead of conversion to LLVM.
    {
      RewritePatternSet patterns(&getContext());
      patterns.insert<DropSharedMemoryDeallocOp>(&getContext());
      populateScalarizeMathOps(patterns);
      populateConvertSharedMemoryAllocOps(patterns);
      vector::populateVectorToVectorCanonicalizationPatterns(patterns);
      vector::populateVectorBroadcastLoweringPatterns(patterns);
      vector::populateVectorContractLoweringPatterns(
          patterns,
          vector::VectorTransformsOptions().setVectorTransformsOptions(
              vector::VectorContractLowering::OuterProduct));
      vector::populateVectorMaskOpLoweringPatterns(patterns);
      vector::populateVectorShapeCastLoweringPatterns(patterns);
      vector::populateVectorTransposeLoweringPatterns(
          patterns, vector::VectorTransformsOptions());
      vector::populateVectorTransferLoweringPatterns(patterns);
      if (failed(applyPatternsAndFoldGreedily(m, std::move(patterns)))) {
        return signalPassFailure();
      }
    }
    {
      RewritePatternSet patterns(&getContext());
      populateGpuRewritePatterns(patterns);
      if (failed(applyPatternsAndFoldGreedily(m, std::move(patterns)))) {
        return signalPassFailure();
      }
    }
    {
      RewritePatternSet llvmPatterns(&getContext());
      populateMathToLLVMConversionPatterns(converter, llvmPatterns);
      memref::populateExpandStridedMetadataPatterns(llvmPatterns);
      populateFinalizeMemRefToLLVMConversionPatterns(converter, llvmPatterns);
      populateFuncToLLVMConversionPatterns(converter, llvmPatterns);
      cf::populateControlFlowToLLVMConversionPatterns(converter, llvmPatterns);
      arith::populateArithToLLVMConversionPatterns(converter, llvmPatterns);
      populateVectorToLLVMConversionPatterns(converter, llvmPatterns);
      populateGpuToNVVMConversionPatterns(converter, llvmPatterns);
      populateNVGPUToNVVMConversionPatterns(converter, llvmPatterns);
      populateGpuWMMAToNVVMConversionPatterns(converter, llvmPatterns);
      LLVMConversionTarget target(getContext());
      populateFuncToLLVMFuncOpConversionPattern(converter, llvmPatterns);
//      configureGpuToNVVMConversionLegality(target);
      if (failed(applyPartialConversion(m, target, std::move(llvmPatterns)))) {
        signalPassFailure();
      }
    }
    ConvertToDynamicSharedMemory(m);
  }
};

} // namespace mlir

namespace nelli {

void registerConvertToNVVMPass() {
  mlir::PassRegistration<mlir::ConvertToNVVMPass>();
}

} // namespace nelli
