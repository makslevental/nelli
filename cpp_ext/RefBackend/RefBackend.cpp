//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
// Also available under a BSD-style license. See LICENSE.
//

#include "RefBackend.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Pass/PassRegistry.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/IR/Value.h"
#include <numeric>

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
    return "refback-munge-calling-conventions";
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
