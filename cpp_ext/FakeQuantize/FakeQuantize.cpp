//===----------------------------------------------------------------------===//
//
// Copyright 2020-2021 The ScaleHLS Authors.
//
//===----------------------------------------------------------------------===//

#include "FakeQuantize.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/Support/Debug.h"
#include <iostream>

#define DEBUG_TYPE "linalg-fake-quantize"

using namespace mlir;

namespace {
template <typename FloatOpType, typename IntOpType>
struct ArithFloatToInt : public OpRewritePattern<FloatOpType> {
  using OpRewritePattern<FloatOpType>::OpRewritePattern;

  LogicalResult matchAndRewrite(FloatOpType floatOp,
                                PatternRewriter &rewriter) const override {
    SmallVector<NamedAttribute> attrs;
    for (auto item : floatOp->getAttrDictionary())
      attrs.push_back(item);
    rewriter.replaceOpWithNewOp<IntOpType>(floatOp, floatOp->getResultTypes(),
                                           floatOp->getOperands(), attrs);
    return success();
  }
};
} // namespace

namespace {
struct CmpFloatToInt : public OpRewritePattern<arith::CmpFOp> {
  using OpRewritePattern<arith::CmpFOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(arith::CmpFOp cmpFloat,
                                PatternRewriter &rewriter) const override {
    arith::CmpIPredicate predicate;
    switch (cmpFloat.getPredicate()) {
    case arith::CmpFPredicate::UEQ:
      predicate = arith::CmpIPredicate::eq;
      break;
    case arith::CmpFPredicate::UGE:
      predicate = arith::CmpIPredicate::uge;
      break;
    case arith::CmpFPredicate::UGT:
      predicate = arith::CmpIPredicate::ugt;
      break;
    case arith::CmpFPredicate::ULE:
      predicate = arith::CmpIPredicate::ule;
      break;
    case arith::CmpFPredicate::ULT:
      predicate = arith::CmpIPredicate::ult;
      break;
    case arith::CmpFPredicate::UNE:
      predicate = arith::CmpIPredicate::ne;
      break;
    default:
      return cmpFloat.emitOpError("unsupport compare predicate");
      break;
    }
    rewriter.replaceOpWithNewOp<arith::CmpIOp>(
        cmpFloat, predicate, cmpFloat.getLhs(), cmpFloat.getRhs());
    return success();
  }
};

template <typename OpType>
class QuantizeSingleOperandFloat : public OpRewritePattern<OpType> {
  using OpRewritePattern<OpType>::OpRewritePattern;

  LogicalResult matchAndRewrite(OpType op,
                                PatternRewriter &rewriter) const override {

    auto operand = op.getOperand();
    auto ctx = rewriter.getContext();
    if (operand.getType().isInteger(16)) {
      auto bitcastRes =
          rewriter
              .create<arith::BitcastOp>(operand.getLoc(), Float16Type::get(ctx),
                                        operand)
              .getResult();
      auto sqrtRes =
          rewriter.create<OpType>(op.getLoc(), bitcastRes).getResult();
      rewriter.replaceOpWithNewOp<arith::BitcastOp>(
          op, IntegerType::get(ctx, 16), sqrtRes);
    } else if (operand.getType().isInteger(32)) {
      auto bitcastRes =
          rewriter
              .create<arith::BitcastOp>(operand.getLoc(), Float32Type::get(ctx),
                                        operand)
              .getResult();
      auto sqrtRes =
          rewriter.create<OpType>(op.getLoc(), bitcastRes).getResult();
      rewriter.replaceOpWithNewOp<arith::BitcastOp>(
          op, IntegerType::get(ctx, 32), sqrtRes);
    } else if (operand.getType().isInteger(64)) {
      auto bitcastRes =
          rewriter
              .create<arith::BitcastOp>(operand.getLoc(), Float64Type::get(ctx),
                                        operand)
              .getResult();
      auto sqrtRes =
          rewriter.create<OpType>(op.getLoc(), bitcastRes).getResult();
      rewriter.replaceOpWithNewOp<arith::BitcastOp>(
          op, IntegerType::get(ctx, 64), sqrtRes);
    } else {
      // TODO(max): this re-entered because sqrt ops are reinserted
      LLVM_DEBUG(llvm::dbgs() << "operand: " << operand << "\n");
      return success();
    }
    return success();
  }
};

} // namespace

namespace {
struct LinalgFakeQuantize
    : public PassWrapper<LinalgFakeQuantize, OperationPass<func::FuncOp>> {

  LinalgFakeQuantize() = default;
  LinalgFakeQuantize(const LinalgFakeQuantize &pass) : PassWrapper(pass) {}

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<linalg::LinalgDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "linalg-fake-quantize";
  }

  Option<uint64_t> quantBits{
      *this, "bits", llvm::cl::desc("the number of bits for quantization"),
      llvm::cl::init(16)};

  /// Get the quantized type from float scalar or tensor type.
  Type getQuantizeType(Type type) {
    auto integerType =
        IntegerType::get(type.getContext(), quantBits.getValue());
    if (type.isa<FloatType>())
      return integerType;
    if (type.isa<IntegerType, IndexType>())
      return type;

    if (auto tensorType = type.dyn_cast<RankedTensorType>()) {
      if (tensorType.getElementType().isa<FloatType>())
        return RankedTensorType::get(tensorType.getShape(), integerType);
      if (tensorType.getElementType().isa<IntegerType, IndexType>())
        return type;
    }
    return Type();
  }

  template <typename ValueType>
  DenseIntElementsAttr generateRandomValues(Type quanType, unsigned size) {
    unsigned maxValue = std::pow(2, quantBits.getValue());
    SmallVector<ValueType, 64> values;
    for (unsigned i = 0; i < size; ++i) {
    }
    values.push_back(std::rand() % maxValue);
    return DenseIntElementsAttr::get(quanType, values);
  }

  void runOnOperation() override {
    auto func = getOperation();
    auto context = func.getContext();
    auto builder = OpBuilder(context);
    std::srand(time(0));

    auto result = func.walk([&](Block *block) {
      // Convert the type of block arguments.
      for (auto arg : block->getArguments()) {
        if (auto quantType = getQuantizeType(arg.getType()))
          arg.setType(quantType);
        else {
          std::cerr << "couldn't convert block args\n";
          return WalkResult::interrupt();
        }
      }

      // Convert the type of each result of each operation.
      for (auto &op : block->getOperations()) {
        for (auto result : op.getResults()) {
          if (auto quantType = getQuantizeType(result.getType()))
            result.setType(quantType);
          else {
            std::cerr << "couldn't convert op result\n";
            return WalkResult::interrupt();
          }
        }

        // Convert the type of constant values.
        if (auto constant = dyn_cast<arith::ConstantOp>(op)) {
          auto quanType = getQuantizeType(constant.getValue().getType());
          assert(quanType == constant.getType() && "invalid quantization type");
          if (quanType == constant.getValue().getType())
            continue;

          // Convert tensor typed constant values. At this point, we have known
          // that the tensor has floating-point elements.
          if (constant.getValue().getType().isa<RankedTensorType>()) {
            DenseIntElementsAttr attr = builder.getI64TensorAttr({1});
            constant.setValueAttr(attr);
          } else {
            auto attr = IntegerAttr::get(quanType, 1);
            constant.setValueAttr(attr);
          }
        }
      }
      return WalkResult::advance();
    });

    if (result.wasInterrupted()) {
      emitError(func.getLoc(), "failed to quantize the module");
      return signalPassFailure();
    }

    // As we have updated the type of all values in the function, we can safely
    // convert the function type as well.
    func.walk([&](func::FuncOp func) {
      func.setType(builder.getFunctionType(
          func.front().getArgumentTypes(),
          func.back().getTerminator()->getOperandTypes()));
    });

    // Convert arithmetic ops.
    mlir::RewritePatternSet patterns(context);
    patterns.add<CmpFloatToInt>(context);
    patterns.add<ArithFloatToInt<arith::AddFOp, arith::AddIOp>>(context);
    patterns.add<ArithFloatToInt<arith::DivFOp, arith::DivUIOp>>(context);
    patterns.add<ArithFloatToInt<arith::ExtFOp, arith::ExtUIOp>>(context);
    patterns.add<ArithFloatToInt<arith::MaxFOp, arith::MaxUIOp>>(context);
    patterns.add<ArithFloatToInt<arith::MinFOp, arith::MinUIOp>>(context);
    patterns.add<ArithFloatToInt<arith::MulFOp, arith::MulIOp>>(context);
    patterns.add<ArithFloatToInt<arith::RemFOp, arith::RemUIOp>>(context);
    patterns.add<ArithFloatToInt<arith::SubFOp, arith::SubIOp>>(context);
    patterns.add<ArithFloatToInt<arith::TruncFOp, arith::TruncIOp>>(context);
    patterns.add<ArithFloatToInt<math::AbsFOp, math::AbsIOp>>(context);
    patterns.add<QuantizeSingleOperandFloat<math::SqrtOp>>(context);
    patterns.add<QuantizeSingleOperandFloat<math::RsqrtOp>>(context);
    patterns.add<QuantizeSingleOperandFloat<math::ErfOp>>(context);
    patterns.add<QuantizeSingleOperandFloat<arith::NegFOp>>(context);
    patterns.add<QuantizeSingleOperandFloat<math::ExpOp>>(context);
    GreedyRewriteConfig config;
    config.strictMode = GreedyRewriteStrictness::ExistingOps;
    (void)applyPatternsAndFoldGreedily(func, std::move(patterns), config);
  }
};
} // namespace

namespace nelli {
void registerLinalgFakeQuantizePass() {
  PassRegistration<LinalgFakeQuantize>();
}
} // namespace nelli
