//
// Created by mlevental on 1/20/23.
//

#include "mlir/Analysis/Presburger/IntegerRelation.h"
#include "mlir/Analysis/Presburger/Matrix.h"
#include "mlir/Analysis/SliceAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineStructures.h"
#include "mlir/Dialect/Affine/Analysis/LoopAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/Utils.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/IR/AffineValueMap.h"
#include "mlir/Dialect/Affine/Passes.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/IR/AffineExprVisitor.h"
#include "mlir/IR/AsmState.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/IntegerSet.h"
#include "mlir/IR/OperationSupport.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Interfaces/ViewLikeInterface.h"
#include "mlir/Parser/Parser.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Support/LogicalResult.h"
#include "tabulate.hpp"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include <iomanip>
#include <iostream>
#include <llvm/Support/Debug.h>
#include <regex>
#include <set>
#include <string>

#include "utils.h"

#ifndef LOOPY_AFFINE_ANALYSIS_H
#define LOOPY_AFFINE_ANALYSIS_H

using namespace llvm;
using namespace mlir;
using namespace presburger;
using namespace tabulate;

namespace loopy {
/// Returns the closest surrounding block common to `opA` and `opB`. `opA` and
/// `opB` should be in the same affine scope and thus such a block is guaranteed
/// to exist.
mlir::Block *getCommonBlock(mlir::Operation *opA, mlir::Operation *opB);

// Returns the number of outer loop common to 'src/dstDomain'.
// Loops common to 'src/dst' domains are added to 'commonLoops' if non-null.
std::vector<AffineForOp>
getCommonLoops(const FlatAffineValueConstraints &srcDomain,
               const FlatAffineValueConstraints &dstDomain);

/// Returns true if the ancestor operation of 'srcAccess' appears before the
/// ancestor operation of 'dstAccess' in their common ancestral block. The
/// operations for `srcAccess` and `dstAccess` are expected to be in the same
/// affine scope.
bool srcAppearsBeforeDstInAncestralBlock(const MemRefAccess &srcAccess,
                                         const MemRefAccess &dstAccess);

// Adds ordering constraints to 'dependenceDomain' based on number of loops
// common to 'src/dstDomain' and requested 'loopDepth'.
// Note that 'loopDepth' cannot exceed the number of common loops plus one.
// EX: Given a loop nest of depth 2 with IVs 'i' and 'j':
// *) If 'loopDepth == 1' then one constraint is added: i' >= i + 1
// *) If 'loopDepth == 2' then two constraints are added: i == i' and j' > j + 1
// *) If 'loopDepth == 3' then two constraints are added: i == i' and j == j'
void addOrderingConstraints(const FlatAffineValueConstraints &srcDomain,
                            const FlatAffineValueConstraints &dstDomain,
                            unsigned loopDepth,
                            FlatAffineValueConstraints *dependenceDomain);

// Computes distance and direction vectors in 'dependences', by adding
// variables to 'dependenceDomain' which represent the difference of the IVs,
// eliminating all other variables, and reading off distance vectors from
// equality constraints (if possible), and direction vectors from inequalities.
void computeDirectionVector(
    const FlatAffineValueConstraints &srcDomain,
    const FlatAffineValueConstraints &dstDomain, unsigned loopDepth,
    FlatAffineValueConstraints *dependenceDomain,
    SmallVector<DependenceComponent, 2> *dependenceComponents);

DependenceResult myCheckMemrefAccessDependence(
    const MemRefAccess &srcAccess, const MemRefAccess &dstAccess,
    unsigned loopDepth, FlatAffineValueConstraints *dependenceConstraints,
    SmallVector<DependenceComponent, 2> *dependenceComponents, bool allowRAR);

// Returns a result string which represents the direction vector (if there was
// a dependence), returns the string "false" otherwise.
std::string
getDirectionVectorStr(bool ret, unsigned numCommonLoops, unsigned loopNestDepth,
                      ArrayRef<DependenceComponent> dependenceComponents);

std::string showValueAsOperand(mlir::Value v);

std::string showOp(Operation *o);

static std::map<std::string, std::map<void *, std::string>> seen;

std::string makeDisambigName(mlir::Value v);

void printDependenceConstraints(FlatAffineValueConstraints dep,
                                const std::string &name = "");

void checkDependenceSrcDst(
    Operation *srcOpInst, Operation *dstOpInst,
    const std::function<DependenceResult(
        const MemRefAccess &, const MemRefAccess &, unsigned,
        FlatAffineValueConstraints *, SmallVector<DependenceComponent, 2> *,
        bool)> &checker);

void sanityCheckDependenceSrcDst(Operation *srcOpInst, Operation *dstOpInst);

void myCheckDependenceSrcDst(Operation *srcOpInst, Operation *dstOpInst);

} // namespace loopy
#endif // LOOPY_AFFINE_ANALYSIS_H
