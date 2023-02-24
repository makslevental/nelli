//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
// Also available under a BSD-style license. See LICENSE.
//

#include "RefBackend.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Linalg/Transforms/Transforms.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Transform/IR/TransformUtils.h"
#include "mlir/Dialect/Utils/StructuredOpsUtils.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Pass/PassRegistry.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Support/Debug.h"
#include <iostream>
#include <numeric>

#define DEBUG_TYPE "refbackend"

using namespace llvm;
using namespace mlir;

static bool isArgMemRefTypeValid(mlir::Type type) {
  if (auto memRefType = type.dyn_cast<MemRefType>()) {
    mlir::Type elemTy = memRefType.getElementType();
    if (elemTy.isa<Float16Type, Float32Type, Float64Type>()) {
      return true;
    } else if (auto integerTy = elemTy.dyn_cast<IntegerType>()) {
      if (integerTy.isSignlessInteger(64))
        return true;
      if (integerTy.isSignlessInteger(32))
        return true;
      if (integerTy.isSignlessInteger(8))
        return true;
      if (integerTy.isSignedInteger(8))
        return true;
      if (integerTy.isSignlessInteger(1))
        return true;
    }
  }
  return false;
}

// Helper function to get the type string for one return value like i32, f64,
// mri32 etc. The strings from multiple return values are concatenated to get
// the consumeFuncReturnFunc name.
static std::string getTypeToken(mlir::Type type) {
  if (type.isSignlessInteger())
    return ("i" + Twine(type.getIntOrFloatBitWidth())).str();
  else if (type.isa<mlir::FloatType>())
    return ("f" + Twine(type.getIntOrFloatBitWidth())).str();
  else if (auto memRefType = type.dyn_cast<mlir::UnrankedMemRefType>())
    return "mr" + getTypeToken(memRefType.getElementType());

  llvm_unreachable(
      "Type token should handle all types: memref, float and int type");
}

void addEmitCInterfaceAttr(func::FuncOp func) {
  func->setAttr("llvm.emit_c_interface", UnitAttr::get(func.getContext()));
}

static mlir::Type getAbiTypeForMemRef(mlir::Type type) {
  return UnrankedMemRefType::get(type.cast<MemRefType>().getElementType(), 0);
}

// Systematically derive the consumeFuncReturnFunc name from return value types.
static std::string
getConsumeReturnFunctionNameForReturnTypes(mlir::TypeRange types) {
  SmallVector<std::string> tokens = {"refbackend_consume_func_return"};
  for (auto type : types)
    tokens.push_back(getTypeToken(type));

  return std::accumulate(tokens.begin(), tokens.end(), std::string(),
                         [](std::string &a, std::string &b) {
                           return a.empty() ? b : (a + "_" + b);
                         });
}

// Replace the original returnOp with a call to consumeFuncReturnFunc and add
// the op to the `toErase` vector.
static void replaceReturnWithCall(mlir::OpBuilder b, mlir::func::ReturnOp op,
                                  StringRef funcName, mlir::TypeRange retTypes,
                                  SmallVectorImpl<mlir::Value> &vals,
                                  SmallVectorImpl<Operation *> &toErase) {
  b.create<mlir::func::CallOp>(op.getLoc(), funcName, TypeRange({}), vals);
  b.create<mlir::func::ReturnOp>(op.getLoc());
  toErase.push_back(op);
}

LogicalResult mungeFunction(func::FuncOp func,
                            std::map<std::string, std::vector<mlir::Type>>
                                &invokedConsumeFuncReturnFuncs) {
  // Only need to call mungeFunction for functions callable from outside of the
  // module.
  if (func.isPrivate())
    return success();
  // Add `llvm.emit_c_interface`.
  // This allows ExecutionEngine to resolve the symbol properly.
  addEmitCInterfaceAttr(func);

  // Rewrite the function as follows:
  // - replace all memref arguments with unranked memref
  // - replace all returns with a call to a function, which is going to be
  //   supplied by the code setting up the ExecutionEngine to process the
  //   result. Additionally, ensure that all results are passed as unranked
  //   memrefs.
  // - replace the function signature accordingly (unranked inputs, no returns).
  OpBuilder b(func.getBody());

  SmallVector<mlir::Type> newArgTypes;
  for (auto arg : func.getArguments()) {
    auto type = arg.getType();
    if (!isArgMemRefTypeValid(type)) {
      return emitError(arg.getLoc())
          .append("argument must be a memref of f32, f64, i32, i64, i8, i1 but "
                  "got ",
                  type);
    }
    auto cast = b.create<memref::CastOp>(arg.getLoc(), type, arg);
    arg.replaceAllUsesExcept(cast, cast);
    arg.setType(getAbiTypeForMemRef(type));
    newArgTypes.push_back(arg.getType());
  }

  SmallVector<Operation *> toErase;
  func.walk([&](func::ReturnOp op) {
    auto types = op.getOperandTypes();
    b.setInsertionPoint(op);
    // Memref Types.
    std::vector<mlir::Type> retTypes;
    SmallVector<mlir::Value> retVals;
    for (auto en : llvm::enumerate(types)) {
      mlir::Type retType = en.value();
      mlir::Value retVal = op.getOperand(en.index());
      if (auto memrefReturnType = retType.dyn_cast<MemRefType>()) {
        auto elemType = memrefReturnType.getElementType();
        retType = UnrankedMemRefType::get(elemType, 0);
        // Cast to unranked memref type before sending it as a function
        // argument.
        retVal = b.create<memref::CastOp>(
            op.getLoc(), getAbiTypeForMemRef(types[en.index()]), retVal);
      }
      retTypes.push_back(retType);
      retVals.push_back(retVal);
    }

    std::string funcName = getConsumeReturnFunctionNameForReturnTypes(retTypes);

    auto invokedFuncsEnd = invokedConsumeFuncReturnFuncs.end();
    if (invokedConsumeFuncReturnFuncs.find(funcName) == invokedFuncsEnd)
      invokedConsumeFuncReturnFuncs.insert({funcName, retTypes});
    replaceReturnWithCall(b, op, funcName, retTypes, retVals, toErase);
  });
  func.setType(FunctionType::get(func.getContext(), newArgTypes, {}));
  for (Operation *op : toErase)
    op->erase();
  return success();
}

namespace {
struct MungeCallingConventionsPass
    : public PassWrapper<MungeCallingConventionsPass,
                         OperationPass<mlir::ModuleOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(MungeCallingConventionsPass)

  MungeCallingConventionsPass() = default;
  MungeCallingConventionsPass(const MungeCallingConventionsPass &pass)
      : PassWrapper(pass) {}
  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<memref::MemRefDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "refbackend-munge-calling-conventions";
  }

  void runOnOperation() override {
    auto module = getOperation();
    OpBuilder b(module.getBodyRegion());
    std::map<std::string, std::vector<mlir::Type>>
        invokedConsumeFuncReturnFuncs;
    for (auto func : module.getOps<func::FuncOp>()) {
      if (failed(mungeFunction(func, invokedConsumeFuncReturnFuncs)))
        return signalPassFailure();
    }

    // Create FuncOp for consumeFuncReturnFuncs that are used.
    for (auto &p : invokedConsumeFuncReturnFuncs) {
      auto consumeFuncReturnFunc = b.create<func::FuncOp>(
          module.getLoc(), p.first,
          FunctionType::get(module.getContext(), p.second, {}));
      consumeFuncReturnFunc.setPrivate();
      addEmitCInterfaceAttr(consumeFuncReturnFunc);
    }
  }
};
} // namespace

namespace nelli {
void registerMungeCallingConventionPass() {
  PassRegistration<MungeCallingConventionsPass>();
}
} // namespace nelli

Operation *createLinalgCopyOp(OpBuilder &b, Location loc, mlir::Value from,
                              mlir::Value to) {
  auto memrefTypeFrom = from.getType().cast<MemRefType>();
  auto memrefTypeTo = to.getType().cast<MemRefType>();
  (void)memrefTypeFrom;
  assert(memrefTypeFrom && memrefTypeTo &&
         memrefTypeFrom.getRank() == memrefTypeTo.getRank());
  AffineMap id =
      AffineMap::getMultiDimIdentityMap(memrefTypeTo.getRank(), b.getContext());
  SmallVector<utils::IteratorType> iteratorTypes(memrefTypeTo.getRank(),
                                                 utils::IteratorType::parallel);
  return b.create<linalg::GenericOp>(
      loc,
      /*inputs=*/from,
      /*outputs=*/to,
      /*indexingMaps=*/llvm::ArrayRef({id, id}),
      /*iteratorTypes=*/iteratorTypes,
      [](OpBuilder &b, Location loc, ValueRange args) {
        b.create<linalg::YieldOp>(loc, args.front());
      });
}

namespace {
class MemrefCopyOpToLinalg : public OpRewritePattern<memref::CopyOp> {
  using OpRewritePattern<memref::CopyOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(memref::CopyOp copyOp,
                                PatternRewriter &rewriter) const override {
    Operation *linalgCopy = createLinalgCopyOp(
        rewriter, copyOp.getLoc(), copyOp.getSource(), copyOp.getTarget());
    rewriter.replaceOp(copyOp, linalgCopy->getResults());
    return success();
  }
};

// class MungeMemrefCopy : public MungeMemrefCopyBase<MungeMemrefCopy> {
struct MungeMemrefCopy
    : public PassWrapper<MungeMemrefCopy, OperationPass<func::FuncOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(MungeMemrefCopy)

  MungeMemrefCopy() = default;
  MungeMemrefCopy(const MungeMemrefCopy &pass) : PassWrapper(pass) {}
  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<memref::MemRefDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "refbackend-munge-memref-copy";
  }

  void runOnOperation() override {
    MLIRContext *context = &getContext();
    RewritePatternSet patterns(&getContext());
    patterns.insert<MemrefCopyOpToLinalg>(context);
    if (failed(applyPatternsAndFoldGreedily(getOperation(),
                                            std::move(patterns)))) {
      return signalPassFailure();
    }
  }
};
} // namespace

namespace nelli {
void registerMungeMemrefCopyPass() { PassRegistration<MungeMemrefCopy>(); }
} // namespace nelli

namespace {

class ReifyTensorPadShape : public OpRewritePattern<tensor::PadOp> {
  using OpRewritePattern<tensor::PadOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(tensor::PadOp padOp,
                                PatternRewriter &rewriter) const override {
    auto inputType = padOp.getSource().getType();
    auto resultType = padOp.getResultType();
    SmallVector<int64_t> staticSizes;
    for (const auto &it : llvm::enumerate(padOp.getLow())) {
      auto dim = it.index();
      if (inputType.isDynamicDim(dim))
        continue;

      auto inputSize = inputType.getDimSize(dim);
      auto low = it.value();
      auto high = padOp.getHigh()[dim];
      auto ownerLow = dyn_cast<arith::ConstantIndexOp>(low.getDefiningOp());
      auto ownerHigh = dyn_cast<arith::ConstantIndexOp>(high.getDefiningOp());
      if (ownerLow && ownerHigh) {
        auto staticLow = getAsOpFoldResult(low)
                             .get<Attribute>()
                             .cast<IntegerAttr>()
                             .getInt();
        auto staticHigh = getAsOpFoldResult(high)
                              .get<Attribute>()
                              .cast<IntegerAttr>()
                              .getInt();
        staticSizes.push_back(inputSize + staticLow + staticHigh);
      }
    }
    if (staticSizes.empty()) {
      assert(resultType.hasStaticShape());
      if (!padOp->hasAttr("refined")) {
        LLVM_DEBUG(llvm::dbgs()
                   << "couldn't find \"refined\" attr" << padOp << "\n");
        return failure();
      }
      return success();
    }
    auto reifiedResultType =
        RankedTensorType::get(staticSizes, resultType.getElementType());
    auto newPadOp = rewriter.replaceOpWithNewOp<tensor::PadOp>(
        padOp, reifiedResultType, padOp.getSource(), padOp.getMixedLowPad(),
        padOp.getMixedHighPad(), padOp.getConstantPaddingValue());
    newPadOp->setAttr("refined", UnitAttr::get(getContext()));
    return success();
  }
};

class GeneralizeTensorPad
    : public PassWrapper<GeneralizeTensorPad, OperationPass<func::FuncOp>> {
  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<linalg::LinalgDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "refbackend-generalize-tensor-pad";
  }

  void runOnOperation() override {
    MLIRContext *context = &getContext();
    RewritePatternSet patterns(&getContext());
    RewritePatternSet padOpPatterns(&getContext());
    padOpPatterns.insert<ReifyTensorPadShape>(context);
    /// Return success if the iterative process converged and no more patterns
    /// can be matched in the result operation regions.
    // TODO(max): this isn't the right way to do this? because
    // it reruns over rewritten tensor pad ops
    GreedyRewriteConfig config;
    config.strictMode = GreedyRewriteStrictness::ExistingOps;
    if (failed(applyPatternsAndFoldGreedily(
            getOperation(), std::move(padOpPatterns), config))) {
      return signalPassFailure();
    }
  }
};
} // namespace

namespace nelli {
void registerGeneralizeTensorPadPass() {
  PassRegistration<GeneralizeTensorPad>();
}
} // namespace nelli
