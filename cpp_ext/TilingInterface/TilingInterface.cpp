//===- TilingInterface.cpp -  tiling using `TilingInterface` -----===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include <iostream>
#include <optional>
#include <utility>

#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/SCF/Transforms/TileUsingInterface.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Tensor/IR/TensorTilingInterfaceImpl.h"
#include "mlir/Interfaces/TilingInterface.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/ADT/TypeSwitch.h"

#include "TilingInterface.h"

using namespace mlir;

namespace {

/// Marker used as attribute name in generated Linalg rewriting transformations.
const StringLiteral kLinalgTransformMarker = "__internal_linalg_transform__";

/// Helper class to control application of linalg transformation patterns.
/// Control comes in 2 forms:
///   1. attribute matching and setting behavior using the attribute named
///      `kLinalgTransformMarker`. This can be used to build a state machine
///      using attributes and incrementally applying patterns to advance states.
///   2. filter function, which is a simple lambda on the Operation* that
///      returns a LogicalResult.
struct LinalgTransformationFilter {
  using FilterFunction = std::function<LogicalResult(Operation *)>;

  explicit LinalgTransformationFilter(
      ArrayRef<StringAttr> matchDisjunction = {},
      std::optional<StringAttr> replacement = std::nullopt);

  explicit LinalgTransformationFilter(
      const FilterFunction &f, ArrayRef<StringAttr> matchDisjunction = {},
      std::optional<StringAttr> replacement = std::nullopt);

  LinalgTransformationFilter(LinalgTransformationFilter &&) = default;
  LinalgTransformationFilter(const LinalgTransformationFilter &) = default;
  LogicalResult checkAndNotify(PatternRewriter &rewriter, Operation *op) const;
  void replaceLinalgTransformationFilter(PatternRewriter &rewriter,
                                         Operation *op) const;

  LinalgTransformationFilter &addFilter(const FilterFunction &f) {
    if (f)
      filters.push_back(f);
    return *this;
  }

  template <typename... OpTypes> LinalgTransformationFilter &addOpFilter() {
    return addFilter(
        [](Operation *op) { return success(isa<OpTypes...>(op)); });
  }

  LinalgTransformationFilter &addOpNameFilter(StringRef opName) {
    return addFilter([opName](Operation *op) {
      return success(op->getName().getStringRef() == opName);
    });
  }

  LinalgTransformationFilter &setMatchByDefault() {
    matchByDefault = true;
    return *this;
  }

private:
  SmallVector<FilterFunction> filters;
  SmallVector<StringAttr> matchDisjunction;
  std::optional<StringAttr> replacement;
  /// When set to true, if the attribute is not set, it will be treated as
  /// a match. Default is false.
  bool matchByDefault;
};

LinalgTransformationFilter::LinalgTransformationFilter(
    ArrayRef<StringAttr> matchDisjunction,
    std::optional<StringAttr> replacement)
    : matchDisjunction(matchDisjunction.begin(), matchDisjunction.end()),
      replacement(replacement), matchByDefault(false) {}

LogicalResult
LinalgTransformationFilter::checkAndNotify(PatternRewriter &rewriter,
                                           Operation *op) const {
  if (llvm::any_of(filters,
                   [&](const FilterFunction &f) { return failed(f(op)); }))
    return failure();

  auto attr = op->template getAttrOfType<StringAttr>(kLinalgTransformMarker);

  if (!attr) {
    // 1. Has no filter case and matchDisjunction is empty.
    if (matchDisjunction.empty() || matchByDefault)
      return success();

    // 2. Has no filter but was expecting a filter.
    return rewriter.notifyMatchFailure(op, [&](Diagnostic &diag) {
      diag << " does not have any filter from list: ";
      interleaveComma(matchDisjunction, diag);
    });
  }

  // 4. Match explicit filter.
  for (auto filter : matchDisjunction)
    if (attr.getValue() == filter)
      return success();

  // 5. Fail to match.
  return rewriter.notifyMatchFailure(op, [&](Diagnostic &diag) {
    diag << " does not have any filter from list: ";
    interleaveComma(matchDisjunction, diag);
  });
}

void LinalgTransformationFilter::replaceLinalgTransformationFilter(
    PatternRewriter &rewriter, Operation *op) const {
  if (replacement.has_value())
    op->setAttr(kLinalgTransformMarker, *replacement);
  else
    op->removeAttr(rewriter.getStringAttr(kLinalgTransformMarker));
}

/// Pattern for `TileUsingSCFForOp` pattern (that tiles operations using
/// the `TilingInterface` with `scf.for` ops for iterating over the tiles) while
/// using a `filter` to avoid recursive application.
struct TileUsingSCFForOp : public OpInterfaceRewritePattern<TilingInterface> {
  TileUsingSCFForOp(
      MLIRContext *context, scf::SCFTilingOptions options,
      LinalgTransformationFilter filter = LinalgTransformationFilter(),
      PatternBenefit benefit = 1)
      : OpInterfaceRewritePattern<TilingInterface>(context, benefit),
        options(std::move(options)), filter(std::move(filter)) {}

  /// Construct a generic pattern applied to `opName`.
  TileUsingSCFForOp(
      StringRef opName, MLIRContext *context, scf::SCFTilingOptions options,
      LinalgTransformationFilter filter = LinalgTransformationFilter(),
      PatternBenefit benefit = 1)
      : OpInterfaceRewritePattern<TilingInterface>(context, benefit),
        options(std::move(options)), filter(std::move(filter)) {}

  LogicalResult matchAndRewrite(TilingInterface op,
                                PatternRewriter &rewriter) const override {
    if (failed(filter.checkAndNotify(rewriter, op)))
      return failure();

    FailureOr<scf::SCFTilingResult> tilingResult =
        scf::tileUsingSCFForOp(rewriter, op, options);
    if (failed(tilingResult))
      return rewriter.notifyMatchFailure(op, "failed to tile operation");

    if (op->getNumResults()) {
      rewriter.replaceOp(op, tilingResult->replacements);
    } else {
      rewriter.eraseOp(op);
    }

    for (auto *tiledOp : tilingResult->tiledOps)
      filter.replaceLinalgTransformationFilter(rewriter, tiledOp);
    return success();
  }

private:
  scf::SCFTilingOptions options;
  LinalgTransformationFilter filter;
};

/// Pattern for `TileConsumerAndFuseProducersUsingSCFForOp` pattern
/// (that tiles and fuses operations using the `TilingInterface` with `scf.for`
/// ops for iterating over the tiles) while using a `filter` to avoid recursive
/// application.
struct TileConsumerAndFuseProducersGreedilyUsingSCFForOp
    : public OpInterfaceRewritePattern<TilingInterface> {
  TileConsumerAndFuseProducersGreedilyUsingSCFForOp(
      MLIRContext *context, scf::SCFTileAndFuseOptions options,
      LinalgTransformationFilter filter = LinalgTransformationFilter(),
      PatternBenefit benefit = 1)
      : OpInterfaceRewritePattern<TilingInterface>(context, benefit),
        options(std::move(options)), filter(std::move(filter)) {}

  /// Construct a generic pattern applied to `opName`.
  TileConsumerAndFuseProducersGreedilyUsingSCFForOp(
      StringRef opName, MLIRContext *context,
      scf::SCFTileAndFuseOptions options,
      LinalgTransformationFilter filter = LinalgTransformationFilter(),
      PatternBenefit benefit = 1)
      : OpInterfaceRewritePattern<TilingInterface>(context, benefit),
        options(std::move(options)), filter(std::move(filter)) {}

  LogicalResult matchAndRewrite(TilingInterface op,
                                PatternRewriter &rewriter) const override {
    if (failed(filter.checkAndNotify(rewriter, op)))
      return failure();

    FailureOr<scf::SCFTileAndFuseResult> tileAndFuseResult =
        scf::tileConsumerAndFuseProducerGreedilyUsingSCFForOp(rewriter, op,
                                                              options);
    if (failed(tileAndFuseResult)) {
      return failure();
    }
    // Replace the tiled op with replacements.
    SmallVector<Value> replacements(op->getNumResults());
    for (const auto &result : llvm::enumerate(op->getResults())) {
      replacements[result.index()] =
          tileAndFuseResult->replacements.lookup(result.value());
    }
    rewriter.replaceOp(op, replacements);

    filter.replaceLinalgTransformationFilter(
        rewriter, tileAndFuseResult->tiledAndFusedOps.front());
    return success();
  }

private:
  scf::SCFTileAndFuseOptions options;
  LinalgTransformationFilter filter;
};

/// Pattern to tile a consumer and fuse producer with it
/// while reconstructing the value of the fused producer
/// from within the loop nest to replace any external
/// uses of the producer. In general yielding the producer
/// this way requires a guarantee that the slice of the producer
/// is not computed redundantly within the tiled loops. An analysis that
/// figures it out has shown to be very complex. So this is left as a caller
/// side determination. In this pattern it is assumed that the tile sizes
/// are selected such that all producers when fused into the tiled loops do no
/// have redundant computation.
struct TileConsumerFuseAndYieldProducerUsingSCFForOp
    : public OpInterfaceRewritePattern<TilingInterface> {

  TileConsumerFuseAndYieldProducerUsingSCFForOp(
      MLIRContext *context, scf::SCFTilingOptions options,
      LinalgTransformationFilter filter = LinalgTransformationFilter(),
      PatternBenefit benefit = 1)
      : OpInterfaceRewritePattern<TilingInterface>(context, benefit),
        options(std::move(options)), filter(std::move(filter)) {}

  LogicalResult matchAndRewrite(TilingInterface rootOp,
                                PatternRewriter &rewriter) const override {
    if (failed(filter.checkAndNotify(rewriter, rootOp)))
      return failure();

    // Collect list of operations that can be tiled and fused.
    llvm::SmallDenseSet<Operation *> tiledAndFusedOps =
        collectTiledAndFusedOps(rootOp);
    auto isIgnoredUser = [&](Operation *user, scf::ForOp outerMostTiledLoop) {
      return tiledAndFusedOps.count(user) || isa<tensor::DimOp>(user) ||
             outerMostTiledLoop->isAncestor(user);
    };

    // The rest of this method is similar to
    // scf::tileConsumerAndFuseProducerGreedilyUsingSCFForOp, except that also
    // yields replacements for values of the fused producer.

    // 1. Tile the consumer.
    SmallVector<OpResult> yieldedValuesToOrigValues;
    FailureOr<scf::SCFTilingResult> tilingResult =
        scf::tileUsingSCFForOp(rewriter, rootOp, options);
    if (failed(tilingResult)) {
      return rewriter.notifyMatchFailure(rootOp,
                                         "failed to tile base operation");
    }
    yieldedValuesToOrigValues.append(rootOp->result_begin(),
                                     rootOp->result_end());

    // 2. Tiling each operation results in generation of slices. The source of
    // these slices could be producers that can be fused into the tiled loops by
    // computing the slices of these producers in-place. This results in more
    // slices created for operands of the "fused producer". This open up more
    // opportunities for fusion. Use a worklist to fuse greedily.
    auto addCandidateSlices =
        [](Operation *fusedOp, std::deque<tensor::ExtractSliceOp> &candidates) {
          for (Value operand : fusedOp->getOperands())
            if (auto sliceOp = operand.getDefiningOp<tensor::ExtractSliceOp>())
              candidates.push_back(sliceOp);
        };

    std::deque<tensor::ExtractSliceOp> candidates;
    addCandidateSlices(tilingResult->tiledOps.back(), candidates);
    OpBuilder::InsertionGuard g(rewriter);
    while (!candidates.empty()) {
      // Traverse the slices in BFS fashion.
      tensor::ExtractSliceOp candidateSliceOp = candidates.front();
      candidates.pop_front();

      // Materialize the slice of the producer in place.
      std::optional<scf::SCFFuseProducerOfSliceResult> fusedProducer =
          tileAndFuseProducerOfSlice(rewriter, candidateSliceOp,
                                     tilingResult->loops);
      if (!fusedProducer)
        continue;

      // Check if the fused producer has other uses that require the value
      // to be yielded from within the tiled loop.
      OpResult untiledProducer = fusedProducer->origProducer;
      if (llvm::any_of(untiledProducer.getUsers(), [&](Operation *user) {
            return !isIgnoredUser(user, tilingResult->loops.front());
          })) {
        yieldReplacementForFusedProducer(rewriter, candidateSliceOp,
                                         fusedProducer.value(),
                                         tilingResult->loops);
        yieldedValuesToOrigValues.push_back(untiledProducer);
      }

      // Add more fusion candidates to the worklist.
      if (auto fusedProducerOp =
              fusedProducer->tiledAndFusedProducer.getDefiningOp())
        addCandidateSlices(fusedProducerOp, candidates);
    }

    scf::ForOp outermostLoop = tilingResult->loops.front();
    for (auto [index, origVal] : llvm::enumerate(yieldedValuesToOrigValues)) {
      Value replacement = outermostLoop.getResult(index);
      rewriter.replaceUseIf(origVal, replacement, [&](OpOperand &use) {
        return !isIgnoredUser(use.getOwner(), outermostLoop);
      });
    }
    rewriter.eraseOp(rootOp);
    filter.replaceLinalgTransformationFilter(rewriter,
                                             tilingResult->tiledOps.back());
    return success();
  }

private:
  /// Starting from `op` walk all operands backwards to find all
  /// potentially fusable operations, i.e. operations that implement
  /// the `TilingInterface`.
  llvm::SmallDenseSet<Operation *>
  collectTiledAndFusedOps(Operation *op) const {
    SmallVector<Operation *> worklist;
    llvm::SmallDenseSet<Operation *> producers;
    worklist.push_back(op);
    producers.insert(op);
    while (!worklist.empty()) {
      Operation *current = worklist.pop_back_val();
      for (OpOperand &operand : current->getOpOperands()) {
        Operation *producer = operand.get().getDefiningOp();
        if (!producer || !isa<TilingInterface>(producer) ||
            producers.count(producer))
          continue;
        worklist.push_back(producer);
        producers.insert(producer);
      }
    }
    return producers;
  }

  scf::SCFTilingOptions options;
  LinalgTransformationFilter filter;
};

/// Pattern to lower operations that implement the `TilingInterface` to
/// loops/scalar IR using `scf.for`.
struct LowerToLoopsUsingSCFForOp
    : public OpInterfaceRewritePattern<TilingInterface> {
  using OpInterfaceRewritePattern<TilingInterface>::OpInterfaceRewritePattern;

  /// `matchAndRewrite` implementation that returns the significant transformed
  /// pieces of IR.
  LogicalResult matchAndRewrite(TilingInterface op,
                                PatternRewriter &rewriter) const override {
    FailureOr<SmallVector<scf::ForOp>> loops =
        scf::lowerToLoopsUsingSCFForOp(rewriter, op);
    if (failed(loops))
      return rewriter.notifyMatchFailure(op, "failed to lower to loops");
    rewriter.eraseOp(op);
    return loops;
  }
};

} // namespace

void addPatternForTiling(MLIRContext *context, RewritePatternSet &patterns,
                         ArrayRef<int64_t> tileSizes,
                         ArrayRef<int64_t> interchange,
                         mlir::Pass::Option<std::string> &filterName) {
  scf::SCFTilingOptions tilingOptions;
  tilingOptions.setTileSizes(tileSizes).setInterchange(interchange);
  if (!filterName.empty()) {
    LinalgTransformationFilter filter(StringAttr::get(context, filterName),
                                      StringAttr::get(context, "tiled"));
    patterns.add<TileUsingSCFForOp>(context, tilingOptions, filter);
  } else
    patterns.add<TileUsingSCFForOp>(context, tilingOptions);
}

void addPatternForTileFuseAndYield(
    MLIRContext *context, RewritePatternSet &patterns,
    ArrayRef<int64_t> tileSizes, ArrayRef<int64_t> interchange,
    mlir::Pass::Option<std::string> &filterName) {
  scf::SCFTilingOptions tilingOptions;
  tilingOptions.setTileSizes(tileSizes).setInterchange(interchange);
  if (!filterName.empty()) {
    LinalgTransformationFilter filter(StringAttr::get(context, filterName),
                                      StringAttr::get(context, "tiled"));
    patterns.add<TileConsumerFuseAndYieldProducerUsingSCFForOp>(
        context, tilingOptions, filter);
  } else
    patterns.add<TileConsumerFuseAndYieldProducerUsingSCFForOp>(context,
                                                                tilingOptions);
}

void addPatternForTileAndFuse(MLIRContext *context, RewritePatternSet &patterns,
                              ArrayRef<int64_t> tileSizes,
                              ArrayRef<int64_t> interchange,
                              mlir::Pass::Option<std::string> &filterName) {
  scf::SCFTileAndFuseOptions tileAndFuseOptions;
  tileAndFuseOptions.tilingOptions.setTileSizes(tileSizes).setInterchange(
      interchange);
  if (!filterName.empty()) {
    LinalgTransformationFilter filter(StringAttr::get(context, filterName),
                                      StringAttr::get(context, "tiled"));
    patterns.add<TileConsumerAndFuseProducersGreedilyUsingSCFForOp>(
        context, tileAndFuseOptions, filter);
  } else
    patterns.add<TileConsumerAndFuseProducersGreedilyUsingSCFForOp>(
        context, tileAndFuseOptions);
}

struct TilingInterfacePass
    : public PassWrapper<TilingInterfacePass, OperationPass<func::FuncOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(TilingInterfacePass)

  TilingInterfacePass() = default;
  TilingInterfacePass(const TilingInterfacePass &pass) : PassWrapper(pass) {}
  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<AffineDialect, linalg::LinalgDialect, memref::MemRefDialect,
                    scf::SCFDialect, tensor::TensorDialect>();
    linalg::registerTilingInterfaceExternalModels(registry);
    tensor::registerTilingInterfaceExternalModels(registry);
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "tiling-interface";
  }
  [[nodiscard]] StringRef getDescription() const final {
    return "Tile using TilingInterface";
  }

  Option<std::string> strategy{*this, "strategy",
                               llvm::cl::desc("An example list option"),
                               llvm::cl::Required};

  Option<std::string> filterName{
      *this,
      "filter-name",
      llvm::cl::desc("Kernel to apply to"),
  };
  ListOption<int64_t> tileSizes{*this, "tile-sizes",
                                llvm::cl::desc("Factors to tile loops by"),
                                llvm::cl::Required};

  ListOption<int64_t> interchange{*this, "interchange",
                                  llvm::cl::desc("Loops to interchange"),
                                  llvm::cl::Required};

  void runOnOperation() override {
    MLIRContext *context = &getContext();
    auto op = getOperation();
    if (!strategy.hasValue()) {
      op.emitError() << "missing strategy value";
      return signalPassFailure();
    }
    if (!tileSizes.hasValue()) {
      op.emitError() << "missing tile sizes";
      return signalPassFailure();
    }

    RewritePatternSet tilingPatterns(context);
    auto strategy_ = strategy.getValue();
    if (strategy_ == "tile") {
      addPatternForTiling(context, tilingPatterns, tileSizes, interchange,
                          filterName);
    } else if (strategy_ == "tile-consumer-fuse-and-yield-producer") {
      addPatternForTileFuseAndYield(context, tilingPatterns, tileSizes,
                                    interchange, filterName);
    } else if (strategy_ == "tile-consumer-and-fuse-producer") {
      addPatternForTileAndFuse(context, tilingPatterns, tileSizes, interchange,
                               filterName);
    } else {
      op.emitError() << "unsupported strategy_ " << strategy_;
      return signalPassFailure();
    }

    if (failed(applyPatternsAndFoldGreedily(op, std::move(tilingPatterns))))
      return signalPassFailure();
  }
};

namespace nelli {
void registerTilingInterfacePass() { PassRegistration<TilingInterfacePass>(); }
} // namespace nelli
