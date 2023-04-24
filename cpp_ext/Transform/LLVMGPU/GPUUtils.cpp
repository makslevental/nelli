//
// Created by mlevental on 3/22/23.
//

#include "GPUUtils.h"

#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/NVGPU/IR/NVGPUDialect.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/IR/Matchers.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "llvm/Support/Debug.h"

#define DEBUG_TYPE "llvm-gpu-utils"
#define DBGS() (llvm::dbgs() << "[" DEBUG_TYPE "]: ")

static constexpr unsigned kShuffleBitWidth = 32;

namespace mlir {

// List of identity elements by operation.
// https://en.wikipedia.org/wiki/Identity_element
static Attribute getCombiningKindIdentity(OpBuilder &builder,
                                          vector::CombiningKind combiningKind,
                                          Type type) {
  switch (combiningKind) {
  case vector::CombiningKind::ADD:
    return builder.getZeroAttr(type);
  case vector::CombiningKind::MUL: {
    if (type.isIntOrIndex()) {
      return builder.getIntegerAttr(type, 1);
    }
    return builder.getFloatAttr(type, 1);
  }
  case vector::CombiningKind::MINUI:
  case vector::CombiningKind::MINSI:
    return builder.getIntegerAttr(type, std::numeric_limits<int64_t>::max());
  case vector::CombiningKind::MAXUI:
  case vector::CombiningKind::MAXSI:
    return builder.getIntegerAttr(type, std::numeric_limits<int64_t>::min());
  case vector::CombiningKind::AND:
    return builder.getIntegerAttr(type, 1);
  case vector::CombiningKind::OR:
  case vector::CombiningKind::XOR:
    return builder.getZeroAttr(type);
  case vector::CombiningKind::MINF: {
    auto posInfApFloat = APFloat::getInf(
        type.cast<FloatType>().getFloatSemantics(), /*Negative=*/false);
    return builder.getFloatAttr(type, posInfApFloat);
  }
  case vector::CombiningKind::MAXF: {
    auto negInfApFloat = APFloat::getInf(
        type.cast<FloatType>().getFloatSemantics(), /*Negative=*/true);
    return builder.getFloatAttr(type, negInfApFloat);
  }
  }
  return Attribute();
}

/// Compute the value on a single thread to get per lane reduction value.
/// If bit-width is not supported on shuffle operations, and a lower precision,
/// we represent them as a vector S.T we can pack them into a single 32-bit
/// width for shuffles.
static Value reduceToSupportedWidth(Location loc, OpBuilder &builder,
                                    Value input, vector::CombiningKind kind) {
  auto vecType = input.getType().cast<VectorType>();
  Type elementType = vecType.getElementType();
  int64_t vecSize = vecType.getDimSize(0);
  unsigned bitWidth = elementType.getIntOrFloatBitWidth();
  // Simply reduce if it's already 32 bits.
  if (bitWidth == kShuffleBitWidth) {
    return builder.create<vector::ReductionOp>(loc, kind, input);
  }
  assert(kShuffleBitWidth % bitWidth == 0 &&
         "Bitwidth needs to be able to be packed into shuffle-bitwidth.");
  int64_t unrollCount = kShuffleBitWidth / bitWidth;
  // Original size needs to be divisble by or less than unroll count to
  // determine slice size.
  assert(vecSize % unrollCount == 0 || vecSize < unrollCount);
  unsigned sliceSize = vecSize / unrollCount;
  VectorType unrolledLaneValType = VectorType::get({unrollCount}, elementType);
  Value perLaneReduction = builder.create<arith::ConstantOp>(
      loc, builder.getZeroAttr(unrolledLaneValType));
  if (vecSize % unrollCount == 0) {
    // Unroll reductions s.t we can pack into a supported 32-bitWidth format.
    for (int64_t i = 0; i < unrollCount; i++) {
      Value laneValSlice = builder.create<vector::ExtractStridedSliceOp>(
          loc, input,
          /*offsets=*/ArrayRef<int64_t>{sliceSize * i},
          /*sizes=*/ArrayRef<int64_t>{sliceSize},
          /*strides=*/ArrayRef<int64_t>{1});
      Value reductionSlice =
          builder.create<vector::ReductionOp>(loc, kind, laneValSlice);
      SmallVector<int64_t> perLaneUnrollId = {i};
      perLaneReduction = builder.create<vector::InsertOp>(
          loc, reductionSlice, perLaneReduction, perLaneUnrollId);
    }
  } else {
    // In cases where vecSize < unrollCount, we would pad the vector
    // with identity elements until it's total bit size is 32.
    Attribute identityAttr =
        getCombiningKindIdentity(builder, kind, elementType);
    identityAttr = DenseElementsAttr::get(unrolledLaneValType, identityAttr);
    Value identity =
        builder.create<arith::ConstantOp>(loc, cast<TypedAttr>(identityAttr));
    perLaneReduction = builder.create<vector::InsertStridedSliceOp>(
        loc, input, identity, /*offsets=*/ArrayRef<int64_t>{0},
        /*strides=*/ArrayRef<int64_t>{1});
  }
  return perLaneReduction;
}

/// Packs scalar element to it's vector equivalent.
/// (i.e f16 -> vector<1xf16> and f32 -> vector<1xf32>)
static Value promoteElementToVector(Location loc, OpBuilder &builder,
                                    Value input) {
  VectorType vectorTypeBroadcast = VectorType::get({1}, input.getType());
  Value vectorInput =
      builder.create<vector::BroadcastOp>(loc, vectorTypeBroadcast, input);
  return vectorInput;
}

/// Packs vector of lower precision into a single 32-bit width element.
/// (i.e <2xf16> -> i32 and <4xi8> -> i32)
Value packVectorToSupportedWidth(Location loc, OpBuilder &builder,
                                 Value input) {
  LLVM_DEBUG({
    auto vecType = input.getType().cast<VectorType>();
    Type elementType = vecType.getElementType();
    assert(vecType.getDimSize(0) * elementType.getIntOrFloatBitWidth() ==
               kShuffleBitWidth &&
           "vecSize * vecBitWidth needs to packable into 32-bitwidth.");
    assert(elementType.isIntOrFloat() &&
           "Only int and float packing is supported.");
  });
  VectorType packed32Type = VectorType::get({1}, builder.getI32Type());
  Value packedInputVec =
      builder.create<vector::BitCastOp>(loc, packed32Type, input);
  Value packedInput = builder.create<vector::ExtractOp>(loc, packedInputVec, 0);
  return packedInput;
}

/// Unpack single scalar element into a target vector type.
/// (i.e i32 -> vector<4xi8> or f32 -> vector<2xf16>)
Value unpackToVector(Location loc, OpBuilder &builder, Value packedInput,
                     VectorType targetVecType) {
  LLVM_DEBUG({
    Type packedType = packedInput.getType();
    assert(packedType.isIntOrFloat() && "Only ints and floats are unpackable.");
    Type elementType = targetVecType.getElementType();
    assert(targetVecType.getDimSize(0) * elementType.getIntOrFloatBitWidth() ==
               packedType.getIntOrFloatBitWidth() &&
           "packed width needs to be unpackable to vecSize * vecBitWidth.");
  });
  Value packedVector = promoteElementToVector(loc, builder, packedInput);
  Value unpackedVector =
      builder.create<vector::BitCastOp>(loc, targetVecType, packedVector);
  return unpackedVector;
}

/// Emit warp reduction code sequence for a given input.
static Value warpReduction(Location loc, OpBuilder &builder, Value input,
                           vector::CombiningKind kind, uint32_t warpSize,
                           uint32_t numLaneToReduce) {
  VectorType unpackedType = input.getType().dyn_cast<VectorType>();
  Value laneVal = input;
  assert(llvm::isPowerOf2_32(numLaneToReduce));
  // Parallel reduction using butterfly shuffles.
  for (uint64_t i = 1; i < numLaneToReduce; i <<= 1) {
    Value shuffleInput = laneVal;
    if (unpackedType) {
      shuffleInput = packVectorToSupportedWidth(loc, builder, laneVal);
    }
    Value shuffled = builder
                         .create<gpu::ShuffleOp>(loc, shuffleInput, i,
                                                 /*width=*/warpSize,
                                                 /*mode=*/gpu::ShuffleMode::XOR)
                         .getShuffleResult();
    if (unpackedType) {
      shuffled = unpackToVector(loc, builder, shuffled, unpackedType);
    }
    laneVal = makeArithReduction(builder, loc, kind, laneVal, shuffled);
  }
  // Broadcast the result to all the lanes.
  if (warpSize != numLaneToReduce) {
    if (unpackedType) {
      laneVal = packVectorToSupportedWidth(loc, builder, laneVal);
    }
    laneVal = builder
                  .create<gpu::ShuffleOp>(loc, laneVal, 0,
                                          /*width=*/warpSize,
                                          /*mode=*/gpu::ShuffleMode::IDX)
                  .getShuffleResult();
    if (unpackedType) {
      laneVal = unpackToVector(loc, builder, laneVal, unpackedType);
    }
  }
  return laneVal;
}

/// Emit identity variable.
static Value getCombiningIdentityValue(Location loc, OpBuilder &builder,
                                       vector::CombiningKind kind,
                                       Type identityType) {
  auto vectorType = identityType.dyn_cast<VectorType>();
  Type elementType = identityType;
  if (vectorType) {
    elementType = vectorType.getElementType();
  }
  Attribute identityAttr = getCombiningKindIdentity(builder, kind, elementType);
  if (vectorType) {
    identityAttr = DenseElementsAttr::get(vectorType, identityAttr);
  }
  assert(identityAttr && "Unknown identity value for the reduction");
  Value identity =
      builder.create<arith::ConstantOp>(loc, cast<TypedAttr>(identityAttr));
  return identity;
}

/// Emit reduction across a group for a given input.
Value emitGPUGroupReduction(Location loc, OpBuilder &builder, Value input,
                            vector::CombiningKind kind, uint32_t size,
                            const int warpSize) {
  assert(
      size % warpSize == 0 &&
      "Group reduction only support for sizes aligned on warp size for now.");
  // First reduce on a single thread to get per lane reduction value.
  Value laneVal = reduceToSupportedWidth(loc, builder, input, kind);
  laneVal = warpReduction(loc, builder, laneVal, kind, warpSize, warpSize);
  // if we have more than one warp, reduce across warps.
  if (size > warpSize) {
    uint32_t numWarp = size / warpSize;
    assert(numWarp <= warpSize &&
           "Only support 1 level, need to implement recursive/loop for this "
           "case.");
    auto addressSpaceAttr = gpu::AddressSpaceAttr::get(
        builder.getContext(), gpu::GPUDialect::getWorkgroupAddressSpace());
    MemRefType memrefType =
        MemRefType::get(numWarp, laneVal.getType(), MemRefLayoutAttrInterface{},
                        addressSpaceAttr);
    Value alloc = builder.create<memref::AllocOp>(loc, memrefType);
    Value threadX = builder.create<gpu::ThreadIdOp>(loc, builder.getIndexType(),
                                                    gpu::Dimension::x);
    Value cstWarpSize = builder.create<arith::ConstantIndexOp>(loc, warpSize);
    Value warpId = builder.create<arith::DivUIOp>(loc, threadX, cstWarpSize);
    Value laneId = builder.create<arith::RemUIOp>(loc, threadX, cstWarpSize);
    Value zero = builder.create<arith::ConstantIndexOp>(loc, 0);
    Value lane0 = builder.create<arith::CmpIOp>(loc, arith::CmpIPredicate::eq,
                                                laneId, zero);
    // Store the reduction for each warp.
    SmallVector<Value> indices = {warpId};
    builder.create<scf::IfOp>(loc, lane0, [&](OpBuilder &b, Location l) {
      b.create<memref::StoreOp>(l, laneVal, alloc, indices);
      b.create<scf::YieldOp>(l, std::nullopt);
    });
    builder.create<gpu::BarrierOp>(loc);
    // Further reduce the outputs from each warps with a single warp reduce.
    Value memrefSize = builder.create<arith::ConstantIndexOp>(loc, numWarp - 1);
    Value laneIdInBounds =
        builder.create<arith::MinUIOp>(loc, laneId, memrefSize);
    Value loadVal = builder.create<memref::LoadOp>(loc, alloc, laneIdInBounds);
    Value cstNumWarp = builder.create<arith::ConstantIndexOp>(loc, numWarp);
    if (!llvm::isPowerOf2_32(numWarp)) {
      // Pad with identity element if numel < warpSize for valid warp reduction.
      Value useIdentityElement = builder.create<arith::CmpIOp>(
          loc, arith::CmpIPredicate::sge, laneId, cstNumWarp);
      numWarp = llvm::PowerOf2Ceil(numWarp);
      Value identity =
          getCombiningIdentityValue(loc, builder, kind, loadVal.getType());
      loadVal = builder.create<arith::SelectOp>(loc, useIdentityElement,
                                                identity, loadVal);
    }
    laneVal = warpReduction(loc, builder, loadVal, kind, warpSize, numWarp);
  }
  // Handles cases for sub-32bit precision where output is still in vector form.
  if (laneVal.getType().isa<VectorType>()) {
    laneVal = builder.create<vector::ReductionOp>(loc, kind, laneVal);
  }
  return laneVal;
}

static bool isContiguousStore(Operation *write) {
  if (auto transferWrite = dyn_cast<vector::TransferWriteOp>(write)) {
    if (!transferWrite.getPermutationMap().isMinorIdentity() ||
        !transferWrite.isDimInBounds(0)) {
      return false;
    }
    return true;
  }
  if (isa<vector::StoreOp>(write)) {
    return true;
  }
  return false;
}

static bool isContiguousRead(Operation *read) {
  if (auto transferRead = dyn_cast<vector::TransferReadOp>(read)) {
    if (!transferRead.isDimInBounds(0) ||
        !transferRead.getPermutationMap().isMinorIdentity()) {
      return false;
    }
    return true;
  }
  if (isa<vector::LoadOp>(read)) {
    return true;
  }
  return false;
}

static Value getMemrefOperand(Operation *op) {
  if (auto transferWrite = dyn_cast<vector::TransferWriteOp>(op)) {
    return transferWrite.getSource();
  }
  if (auto transferRead = dyn_cast<vector::TransferReadOp>(op)) {
    return transferRead.getSource();
  }
  if (auto storeOp = dyn_cast<vector::StoreOp>(op)) {
    return storeOp.getBase();
  }
  if (auto loadOp = dyn_cast<vector::LoadOp>(op)) {
    return loadOp.getBase();
  }
  return Value();
}

static Value getValueStored(Operation *writeOp) {
  if (auto transferWrite = dyn_cast<vector::TransferWriteOp>(writeOp)) {
    return transferWrite.getValue();
  }
  if (auto storeOp = dyn_cast<vector::StoreOp>(writeOp)) {
    return storeOp.getValueToStore();
  }
  return Value();
}

static Operation::operand_range getIndices(Operation *op) {
  if (auto vectorReadOp = dyn_cast<vector::LoadOp>(op))
    return vectorReadOp.getIndices();
  if (auto vectorStoreOp = dyn_cast<vector::StoreOp>(op))
    return vectorStoreOp.getIndices();
  if (auto transferReadOp = dyn_cast<vector::TransferReadOp>(op))
    return transferReadOp.getIndices();
  if (auto transferWriteOp = dyn_cast<vector::TransferWriteOp>(op))
    return transferWriteOp.getIndices();
  llvm_unreachable("unsupported op type");
}

void createAsyncGroups(RewriterBase &rewriter, func::FuncOp funcOp,
                       bool useMMASync) {
  LLVM_DEBUG(DBGS() << "Start asyncGroups: useMMASync=" << useMMASync << "\n");
  llvm::SmallSetVector<Operation *, 16> copyToSharedMem;
  // Look for all the copy that can be converted to async copy ops.
  funcOp.walk([&](Operation *writeOp) {
    if (!isContiguousStore(writeOp)) {
      return WalkResult::advance();
    }
    LLVM_DEBUG(DBGS() << "--candidate writeOp: " << writeOp << "\n");
    Value vectorVal = getValueStored(writeOp);
    if (vectorVal.getType().cast<VectorType>().getRank() != 1) {
      LLVM_DEBUG(
          DBGS()
          << "----writeOp is not an inbounds 1-D minor identity -> Skip \n");
      return WalkResult::advance();
    }
    Value memrefOperand = getMemrefOperand(writeOp);
    auto addressSpaceAttr = memrefOperand.getType()
                                .cast<MemRefType>()
                                .getMemorySpace()
                                .dyn_cast_or_null<gpu::AddressSpaceAttr>();
    if (!addressSpaceAttr || addressSpaceAttr.getValue() !=
                                 gpu::GPUDialect::getWorkgroupAddressSpace()) {
      LLVM_DEBUG(DBGS() << "----address space is not workgroup -> Skip \n");
      return WalkResult::advance();
    }
    Operation *readOp = vectorVal.getDefiningOp();
    if (readOp == nullptr || !isContiguousRead(readOp)) {
      LLVM_DEBUG(DBGS() << "----no readOp defining the writeOp -> Skip \n");
      return WalkResult::advance();
    }

    VectorType vecType = vectorVal.getType().cast<VectorType>();
    if (!((vecType.getElementType().isF32() && vecType.getNumElements() <= 4) ||
          (vecType.getElementType().isF16() &&
           vecType.getNumElements() <= 8))) {
      LLVM_DEBUG(
          DBGS() << "----readOp is not (<=4)xf32 or (<=8)xf16 -> Skip \n");
      return WalkResult::advance();
    }

    LLVM_DEBUG(DBGS() << "--writeOp can be made async -> SUCCESS\n");
    copyToSharedMem.insert(writeOp);
    return WalkResult::advance();
  });

  while (!copyToSharedMem.empty()) {
    SmallVector<Operation *> group;
    Operation *writeOp = *copyToSharedMem.begin();
    // Start a group with the first write.
    copyToSharedMem.remove(writeOp);
    group.push_back(writeOp);
    Operation *nextNode = writeOp;
    // Look in the next nodes for more copies to add to the same group.
    while ((nextNode = nextNode->getNextNode())) {
      // Ignore ops without side effects
      auto memInterface = dyn_cast<MemoryEffectOpInterface>(nextNode);
      if (memInterface && memInterface.hasNoEffect() &&
          !nextNode->hasTrait<OpTrait::HasRecursiveMemoryEffects>())
        continue;
      // ignore read from a different address space.
      if (isa<vector::TransferReadOp, vector::LoadOp>(nextNode)) {
        Operation *readOp = nextNode;
        Value memrefOperand = getMemrefOperand(readOp);
        auto addressSpaceAttr = memrefOperand.getType()
                                    .cast<MemRefType>()
                                    .getMemorySpace()
                                    .dyn_cast_or_null<gpu::AddressSpaceAttr>();
        if (!addressSpaceAttr ||
            addressSpaceAttr.getValue() !=
                gpu::GPUDialect::getWorkgroupAddressSpace()) {
          continue;
        }
      }
      if (copyToSharedMem.count(nextNode)) {
        // found another copy, add it to the group.
        copyToSharedMem.remove(nextNode);
        group.push_back(nextNode);
        continue;
      }
      // If the op is something else stop the accumulating op in the group.
      break;
    }
    // emit the group.
    SmallVector<Value> tokens;
    for (Operation *writeOp : group) {
      rewriter.setInsertionPoint(writeOp);
      Value vectorVal = getValueStored(writeOp);
      Operation *readOp = vectorVal.getDefiningOp();
      Value storeBase = getMemrefOperand(writeOp);
      Value loadBase = getMemrefOperand(readOp);
      Value token = rewriter.create<nvgpu::DeviceAsyncCopyOp>(
          writeOp->getLoc(),
          nvgpu::DeviceAsyncTokenType::get(funcOp.getContext()), storeBase,
          getIndices(writeOp), loadBase, getIndices(readOp),
          rewriter.getIndexAttr(
              vectorVal.getType().cast<VectorType>().getNumElements()),
          Value(),
          /*bypassL1=*/useMMASync ? rewriter.getUnitAttr() : UnitAttr());
      tokens.push_back(token);
    }
    // Create the group and wait for it right after.
    Value groupToken = rewriter.create<nvgpu::DeviceAsyncCreateGroupOp>(
        funcOp.getLoc(), nvgpu::DeviceAsyncTokenType::get(funcOp.getContext()),
        tokens);
    rewriter.create<nvgpu::DeviceAsyncWaitOp>(funcOp.getLoc(), groupToken,
                                              nullptr);
    // Clean up old stores.
    for (Operation *writeOp : group)
      rewriter.eraseOp(writeOp);
  }
}

} // namespace mlir