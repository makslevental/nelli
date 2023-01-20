//
// Created by mlevental on 1/20/23.
//

#include "main.h"
#include "mlir/Analysis/Presburger/IntegerRelation.h"
#include "mlir/Analysis/SliceAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/LoopAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/Utils.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/IR/AffineValueMap.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/AffineExprVisitor.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/IntegerSet.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Interfaces/ViewLikeInterface.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include <iostream>

#ifndef LOOPY_AFFINE_ANALYSIS_H
#define LOOPY_AFFINE_ANALYSIS_H

#define LLVM_DEBUG(x)

using namespace llvm;
using namespace mlir;

/// Returns the closest surrounding block common to `opA` and `opB`. `opA` and
/// `opB` should be in the same affine scope and thus such a block is guaranteed
/// to exist.
static mlir::Block *getCommonBlock(mlir::Operation *opA, mlir::Operation *opB) {
  // Get the chain of ancestor blocks for the given `MemRefAccess` instance. The
  // chain extends up to and includnig an op that starts an affine scope.
  auto getChainOfAncestorBlocks =
      [&](mlir::Operation *op, SmallVectorImpl<mlir::Block *> &ancestorBlocks) {
        mlir::Block *currBlock = op->getBlock();
        // Loop terminates when the currBlock is nullptr or its parent operation
        // holds an affine scope.
        while (
            currBlock &&
            !currBlock->getParentOp()->hasTrait<mlir::OpTrait::AffineScope>()) {
          ancestorBlocks.push_back(currBlock);
          currBlock = currBlock->getParentOp()->getBlock();
        }
        assert(currBlock &&
               "parent op starting an affine scope is always expected");
        ancestorBlocks.push_back(currBlock);
      };

  // Find the closest common block including those in AffineIf.
  SmallVector<mlir::Block *, 4> srcAncestorBlocks, dstAncestorBlocks;
  getChainOfAncestorBlocks(opA, srcAncestorBlocks);
  getChainOfAncestorBlocks(opB, dstAncestorBlocks);

  Block *commonBlock = nullptr;
  for (int i = srcAncestorBlocks.size() - 1, j = dstAncestorBlocks.size() - 1;
       i >= 0 && j >= 0 && srcAncestorBlocks[i] == dstAncestorBlocks[j];
       i--, j--)
    commonBlock = srcAncestorBlocks[i];
  // This is guaranteed since both ops are from the same affine scope.
  assert(commonBlock && "ops expected to have a common surrounding block");
  return commonBlock;
}

// Returns the number of outer loop common to 'src/dstDomain'.
// Loops common to 'src/dst' domains are added to 'commonLoops' if non-null.
static unsigned
getNumCommonLoops(const FlatAffineValueConstraints &srcDomain,
                  const FlatAffineValueConstraints &dstDomain,
                  SmallVectorImpl<AffineForOp> *commonLoops = nullptr) {
  // Find the number of common loops shared by src and dst accesses.
  unsigned minNumLoops =
      std::min(srcDomain.getNumDimVars(), dstDomain.getNumDimVars());
  unsigned numCommonLoops = 0;
  for (unsigned i = 0; i < minNumLoops; ++i) {
    if (!isForInductionVar(srcDomain.getValue(i)) ||
        !isForInductionVar(dstDomain.getValue(i)) ||
        srcDomain.getValue(i) != dstDomain.getValue(i))
      break;
    if (commonLoops != nullptr)
      commonLoops->push_back(getForInductionVarOwner(srcDomain.getValue(i)));
    ++numCommonLoops;
  }
  if (commonLoops != nullptr)
    assert(commonLoops->size() == numCommonLoops);
  return numCommonLoops;
}

/// Returns true if the ancestor operation of 'srcAccess' appears before the
/// ancestor operation of 'dstAccess' in their common ancestral block. The
/// operations for `srcAccess` and `dstAccess` are expected to be in the same
/// affine scope.
static bool srcAppearsBeforeDstInAncestralBlock(const MemRefAccess &srcAccess,
                                                const MemRefAccess &dstAccess) {
  // Get Block common to 'srcAccess.opInst' and 'dstAccess.opInst'.
  auto *commonBlock = getCommonBlock(srcAccess.opInst, dstAccess.opInst);
  // Check the dominance relationship between the respective ancestors of the
  // src and dst in the Block of the innermost among the common loops.
  auto *srcInst = commonBlock->findAncestorOpInBlock(*srcAccess.opInst);
  assert(srcInst && "src access op must lie in common block");
  auto *dstInst = commonBlock->findAncestorOpInBlock(*dstAccess.opInst);
  assert(dstInst && "dest access op must lie in common block");

  // Determine whether dstInst comes after srcInst.
  return srcInst->isBeforeInBlock(dstInst);
}

// Adds ordering constraints to 'dependenceDomain' based on number of loops
// common to 'src/dstDomain' and requested 'loopDepth'.
// Note that 'loopDepth' cannot exceed the number of common loops plus one.
// EX: Given a loop nest of depth 2 with IVs 'i' and 'j':
// *) If 'loopDepth == 1' then one constraint is added: i' >= i + 1
// *) If 'loopDepth == 2' then two constraints are added: i == i' and j' > j + 1
// *) If 'loopDepth == 3' then two constraints are added: i == i' and j == j'
static void
addOrderingConstraints(const FlatAffineValueConstraints &srcDomain,
                       const FlatAffineValueConstraints &dstDomain,
                       unsigned loopDepth,
                       FlatAffineValueConstraints *dependenceDomain) {
  unsigned numCols = dependenceDomain->getNumCols();
  SmallVector<int64_t, 4> eq(numCols);
  unsigned numSrcDims = srcDomain.getNumDimVars();
  unsigned numCommonLoops = getNumCommonLoops(srcDomain, dstDomain);
  unsigned numCommonLoopConstraints = std::min(numCommonLoops, loopDepth);
  for (unsigned i = 0; i < numCommonLoopConstraints; ++i) {
    std::fill(eq.begin(), eq.end(), 0);
    eq[i] = -1;
    eq[i + numSrcDims] = 1;
    if (i == loopDepth - 1) {
      eq[numCols - 1] = -1;
      dependenceDomain->addInequality(eq);
    } else {
      dependenceDomain->addEquality(eq);
    }
  }
}

// Computes distance and direction vectors in 'dependences', by adding
// variables to 'dependenceDomain' which represent the difference of the IVs,
// eliminating all other variables, and reading off distance vectors from
// equality constraints (if possible), and direction vectors from inequalities.
static void computeDirectionVector(
    const FlatAffineValueConstraints &srcDomain,
    const FlatAffineValueConstraints &dstDomain, unsigned loopDepth,
    FlatAffineValueConstraints *dependenceDomain,
    SmallVector<DependenceComponent, 2> *dependenceComponents) {
  // Find the number of common loops shared by src and dst accesses.
  SmallVector<AffineForOp, 4> commonLoops;
  unsigned numCommonLoops =
      getNumCommonLoops(srcDomain, dstDomain, &commonLoops);
  if (numCommonLoops == 0)
    return;
  // Compute direction vectors for requested loop depth.
  unsigned numIdsToEliminate = dependenceDomain->getNumVars();
  // Add new variables to 'dependenceDomain' to represent the direction
  // constraints for each shared loop.
  dependenceDomain->insertDimVar(/*pos=*/0, /*num=*/numCommonLoops);

  // Add equality constraints for each common loop, setting newly introduced
  // variable at column 'j' to the 'dst' IV minus the 'src IV.
  SmallVector<int64_t, 4> eq;
  eq.resize(dependenceDomain->getNumCols());
  unsigned numSrcDims = srcDomain.getNumDimVars();
  // Constraint variables format:
  // [num-common-loops][num-src-dim-ids][num-dst-dim-ids][num-symbols][constant]
  for (unsigned j = 0; j < numCommonLoops; ++j) {
    std::fill(eq.begin(), eq.end(), 0);
    eq[j] = 1;
    eq[j + numCommonLoops] = 1;
    eq[j + numCommonLoops + numSrcDims] = -1;
    dependenceDomain->addEquality(eq);
  }

  // Eliminate all variables other than the direction variables just added.
  dependenceDomain->projectOut(numCommonLoops, numIdsToEliminate);

  // Scan each common loop variable column and set direction vectors based
  // on eliminated constraint system.
  dependenceComponents->resize(numCommonLoops);
  for (unsigned j = 0; j < numCommonLoops; ++j) {
    (*dependenceComponents)[j].op = commonLoops[j].getOperation();
    auto lbConst = dependenceDomain->getConstantBound(
        mlir::presburger::IntegerPolyhedron::LB, j);
    (*dependenceComponents)[j].lb =
        lbConst.value_or(std::numeric_limits<int64_t>::min());
    auto ubConst = dependenceDomain->getConstantBound(
        mlir::presburger::IntegerPolyhedron::UB, j);
    (*dependenceComponents)[j].ub =
        ubConst.value_or(std::numeric_limits<int64_t>::max());
  }
}

DependenceResult myCheckMemrefAccessDependence(
    const MemRefAccess &srcAccess, const MemRefAccess &dstAccess,
    unsigned loopDepth, FlatAffineValueConstraints *dependenceConstraints,
    SmallVector<DependenceComponent, 2> *dependenceComponents, bool allowRAR) {
  LLVM_DEBUG(llvm::dbgs() << "Checking for dependence at depth: "
                          << Twine(loopDepth) << " between:\n";);
  LLVM_DEBUG(srcAccess.opInst->dump(););
  LLVM_DEBUG(dstAccess.opInst->dump(););

  // Return 'NoDependence' if these accesses do not access the same memref.
  if (srcAccess.memref != dstAccess.memref)
    return DependenceResult::NoDependence;

  // TODO: Support affine.parallel which does not specify the ordering.
  auto srcParent = srcAccess.opInst->getParentOfType<AffineParallelOp>();
  auto dstParent = dstAccess.opInst->getParentOfType<AffineParallelOp>();
  if (srcParent || dstParent)
    return DependenceResult::Failure;

  // Return 'NoDependence' if one of these accesses is not an
  // AffineWriteOpInterface.
  if (!allowRAR && !isa<AffineWriteOpInterface>(srcAccess.opInst) &&
      !isa<AffineWriteOpInterface>(dstAccess.opInst))
    return DependenceResult::NoDependence;

  // We can't analyze further if the ops lie in different affine scopes.
  if (getAffineScope(srcAccess.opInst) != getAffineScope(dstAccess.opInst))
    return DependenceResult::Failure;

  // Create access relation from each MemRefAccess.
  FlatAffineRelation srcRel, dstRel;
  if (failed(srcAccess.getAccessRelation(srcRel)))
    return DependenceResult::Failure;
  if (failed(dstAccess.getAccessRelation(dstRel)))
    return DependenceResult::Failure;

  FlatAffineValueConstraints srcDomain = srcRel.getDomainSet();
  FlatAffineValueConstraints dstDomain = dstRel.getDomainSet();

  // Return 'NoDependence' if loopDepth > numCommonLoops and if the ancestor
  // operation of 'srcAccess' does not properly dominate the ancestor
  // operation of 'dstAccess' in the same common operation block.
  // Note: this check is skipped if 'allowRAR' is true, because because RAR
  // deps can exist irrespective of lexicographic ordering b/w src and dst.
  unsigned numCommonLoops = getNumCommonLoops(srcDomain, dstDomain);
  assert(loopDepth <= numCommonLoops + 1);
  if (!allowRAR && loopDepth > numCommonLoops &&
      !srcAppearsBeforeDstInAncestralBlock(srcAccess, dstAccess)) {
    return DependenceResult::NoDependence;
  }

  // Compute the dependence relation by composing `srcRel` with the inverse of
  // `dstRel`. Doing this builds a relation between iteration domain of
  // `srcAccess` to the iteration domain of `dstAccess` which access the same
  // memory locations.
  dstRel.inverse();
  dstRel.compose(srcRel);
  *dependenceConstraints = dstRel;

  // Add 'src' happens before 'dst' ordering constraints.
  addOrderingConstraints(srcDomain, dstDomain, loopDepth,
                         dependenceConstraints);

  // Return 'NoDependence' if the solution space is empty: no dependence.
  if (dependenceConstraints->isEmpty())
    return DependenceResult::NoDependence;

  // Compute dependence direction vector and return true.
  if (dependenceComponents != nullptr)
    computeDirectionVector(srcDomain, dstDomain, loopDepth,
                           dependenceConstraints, dependenceComponents);

  LLVM_DEBUG(llvm::dbgs() << "Dependence polyhedron:\n");
  LLVM_DEBUG(dependenceConstraints->dump());
  return DependenceResult::HasDependence;
}

// Returns a result string which represents the direction vector (if there was
// a dependence), returns the string "false" otherwise.
static std::string
getDirectionVectorStr(bool ret, unsigned numCommonLoops, unsigned loopNestDepth,
                      ArrayRef<DependenceComponent> dependenceComponents) {
  if (!ret)
    return "false";
  if (dependenceComponents.empty() || loopNestDepth > numCommonLoops)
    return "true";
  std::string result;
  for (const auto &dependenceComponent : dependenceComponents) {
    std::string lbStr = "-inf";
    if (dependenceComponent.lb.has_value() &&
        *dependenceComponent.lb != std::numeric_limits<int64_t>::min())
      lbStr = std::to_string(*dependenceComponent.lb);

    std::string ubStr = "+inf";
    if (dependenceComponent.ub.has_value() &&
        *dependenceComponent.ub != std::numeric_limits<int64_t>::max())
      ubStr = std::to_string(*dependenceComponent.ub);

    result += "[" + lbStr + ", " + ubStr + "]";
  }
  return result;
}

#endif // LOOPY_AFFINE_ANALYSIS_H
