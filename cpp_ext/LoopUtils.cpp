//
// Created by maksim on 2/8/23.
//

#include "LoopUtils.h"
#include "mlir/Dialect/Affine/LoopUtils.h"
#include "mlir/IR/IRMapping.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/Support/Debug.h"

#define DEBUG_TYPE "nelli-loop-utils"

using namespace llvm;
using namespace mlir;
using namespace mlir::affine;

/// Generates an affine.for op with the specified lower and upper bounds
/// while generating the right IV remappings to realize shifts for operations in
/// its body. The operations that go into the loop body are specified in
/// opGroupQueue starting from the specified offset, and in that order. The
/// first element of the pair specifies the shift applied to that group of
/// operations; the shift is multiplied by the loop step before being applied.
/// Returns nullptr if the generated loop simplifies to a single iteration one.
static AffineForOp generateShiftedLoop(
    AffineMap lbMap, AffineMap ubMap,
    const std::vector<std::pair<uint64_t, ArrayRef<Operation *>>> &opGroupQueue,
    unsigned offset, AffineForOp srcForOp, OpBuilder b) {
  auto lbOperands = srcForOp.getLowerBoundOperands();
  auto ubOperands = srcForOp.getUpperBoundOperands();

  assert(lbMap.getNumInputs() == lbOperands.size());
  assert(ubMap.getNumInputs() == ubOperands.size());

  auto loopChunk = b.create<AffineForOp>(srcForOp.getLoc(), lbOperands, lbMap,
                                         ubOperands, ubMap, srcForOp.getStep());
  auto loopChunkIV = loopChunk.getInductionVar();
  auto srcIV = srcForOp.getInductionVar();

  IRMapping operandMap;

  auto bodyBuilder = OpBuilder::atBlockTerminator(loopChunk.getBody());
  for (const auto &it : llvm::drop_begin(opGroupQueue, offset)) {
    uint64_t shift = it.first;
    auto ops = it.second;
    // All 'same shift' operations get added with their operands being
    // remapped to results of cloned operations, and their IV used remapped.
    // Generate the remapping if the shift is not zero: remappedIV = newIV -
    // shift.
    if (!srcIV.use_empty() && shift != 0) {
      auto ivRemap = bodyBuilder.create<AffineApplyOp>(
          srcForOp.getLoc(),
          bodyBuilder.getSingleDimShiftAffineMap(
              -static_cast<int64_t>(srcForOp.getStep() * shift)),
          loopChunkIV);
      operandMap.map(srcIV, ivRemap);
    } else {
      operandMap.map(srcIV, loopChunkIV);
    }
    for (auto *op : ops) {
      bodyBuilder.clone(*op, operandMap);
      auto newOp = bodyBuilder.getBlock()->getOperations().end();
    }
  };
  if (succeeded(promoteIfSingleIteration(loopChunk)))
    return AffineForOp();
  return loopChunk;
}

// The skewing of operations with respect to one another can be used for
// example to allow overlap of asynchronous operations (such as DMA
// communication) with computation, or just relative shifting of operations
// for better register reuse, locality or parallelism. As such, the shifts are
// typically expected to be at most of the order of the number of operations.
// This method should not be used as a substitute for loop distribution/fission.
// This method uses an algorithm// in time linear in the number of operations
// in the body of the for loop - (using the 'sweep line' paradigm). This method
// asserts preservation of SSA dominance. A check for that as well as that for
// memory-based dependence preservation check rests with the users of this
// method.
LogicalResult nelli::affineForOpBodySkew(AffineForOp forOp,
                                         ArrayRef<uint64_t> shifts,
                                         bool unrollPrologueEpilogue) {
  assert(forOp.getBody()->getOperations().size() == shifts.size() &&
         "too few/many shifts");
  if (forOp.getBody()->begin() == std::prev(forOp.getBody()->end()))
    return success();

  // If the trip counts aren't constant, we would need versioning and
  // conditional guards (or context information to prevent such versioning). The
  // better way to pipeline for such loops is to first tile them and extract
  // constant trip count "full tiles" before applying this.
  auto mayBeConstTripCount = getConstantTripCount(forOp);
  if (!mayBeConstTripCount) {
    LLVM_DEBUG(forOp.emitRemark("non-constant trip count loop not handled"));
    return success();
  }
  uint64_t tripCount = *mayBeConstTripCount;

  /// Checks where SSA dominance would be violated if a for op's body
  /// operations are shifted by the specified shifts. This method checks if a
  /// 'def' and all its uses have the same shift factor.
  // TODO: extend this to check for memory-based dependence violation when we
  // have the support.
  assert(isOpwiseShiftValid(forOp, shifts) &&
         "shifts will lead to an invalid transformation\n");

  int64_t step = forOp.getStep();

  unsigned numChildOps = shifts.size();

  // Do a linear time (counting) sort for the shifts.
  uint64_t maxShift = *std::max_element(shifts.begin(), shifts.end());
  if (maxShift >= numChildOps) {
    // Large shifts are not the typical use case.
    forOp.emitWarning("not shifting because shifts are unrealistically large");
    return success();
  }

  // An array of operation groups sorted by shift amount; each group has all
  // operations with the same shift in the order in which they appear in the
  // body of the 'affine.for' op.
  std::vector<std::vector<Operation *>> sortedOpGroups(maxShift + 1);
  unsigned pos = 0;
  for (auto &op : forOp.getBody()->without_terminator()) {
    auto shift = shifts[pos++];
    sortedOpGroups[shift].push_back(&op);
  }

  // Unless the shifts have a specific pattern (which actually would be the
  // common use case), prologue and epilogue are not meaningfully defined.
  // Nevertheless, if 'unrollPrologueEpilogue' is set, we will treat the first
  // loop generated as the prologue and the last as epilogue and unroll these
  // fully.
  AffineForOp prologue, epilogue;

  // Do a sweep over the sorted shifts while storing open groups in a
  // vector, and generating loop portions as necessary during the sweep. A block
  // of operations is paired with its shift.
  std::vector<std::pair<uint64_t, ArrayRef<Operation *>>> opGroupQueue;

  auto origLbMap = forOp.getLowerBoundMap();
  uint64_t lbShift = 0;
  OpBuilder b(forOp);
  for (uint64_t d = 0, e = sortedOpGroups.size(); d < e; ++d) {
    // If nothing is shifted by d, continue.
    if (sortedOpGroups[d].empty())
      continue;
    if (!opGroupQueue.empty()) {
      assert(d > 0 &&
             "Queue expected to be empty when the first block is found");
      // The interval for which the loop needs to be generated here is:
      // [lbShift, min(lbShift + tripCount, d)) and the body of the
      // loop needs to have all operations in opQueue in that order.
      AffineForOp res;
      if (lbShift + tripCount * step < d * step) {
        res = generateShiftedLoop(
            b.getShiftedAffineMap(origLbMap, lbShift),
            b.getShiftedAffineMap(origLbMap, lbShift + tripCount * step),
            opGroupQueue, /*offset=*/0, forOp, b);
        // Entire loop for the queued op groups generated, empty it.
        opGroupQueue.clear();
        lbShift += tripCount * step;
      } else {
        res = generateShiftedLoop(b.getShiftedAffineMap(origLbMap, lbShift),
                                  b.getShiftedAffineMap(origLbMap, d),
                                  opGroupQueue, /*offset=*/0, forOp, b);
        lbShift = d * step;
      }

      if (res) {
        // Simplify/canonicalize the affine.for.
        RewritePatternSet patterns(res.getContext());
        AffineForOp::getCanonicalizationPatterns(patterns, res.getContext());
        bool erased;
        (void)applyOpPatternsAndFold({res}, std::move(patterns), /*config*/ {},
                                     /*changed*/ nullptr, &erased);

        if (!erased && !prologue)
          prologue = res;
        if (!erased)
          epilogue = res;
      }
    } else {
      // Start of first interval.
      lbShift = d * step;
    }
    // Augment the list of operations that get into the current open interval.
    opGroupQueue.emplace_back(d, sortedOpGroups[d]);
  }

  // Those operations groups left in the queue now need to be processed (FIFO)
  // and their loops completed.
  for (unsigned i = 0, e = opGroupQueue.size(); i < e; ++i) {
    uint64_t ubShift = (opGroupQueue[i].first + tripCount) * step;
    epilogue = generateShiftedLoop(b.getShiftedAffineMap(origLbMap, lbShift),
                                   b.getShiftedAffineMap(origLbMap, ubShift),
                                   opGroupQueue, /*offset=*/i, forOp, b);
    lbShift = ubShift;
    if (!prologue)
      prologue = epilogue;
  }

  // Erase the original for op.
  forOp.erase();

  if (unrollPrologueEpilogue && prologue)
    (void)loopUnrollFull(prologue);
  if (unrollPrologueEpilogue && !epilogue && epilogue != prologue)
    (void)loopUnrollFull(epilogue);

  return success();
}
