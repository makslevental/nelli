//
// Created by maksim on 1/18/23.
//

#ifndef PI_MAIN_H
#define PI_MAIN_H


#include "mlir/Analysis/Presburger/Matrix.h"
#include "mlir/IR/AsmState.h"
#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineStructures.h"
#include "mlir/Dialect/Affine/Analysis/Utils.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/IR/AffineValueMap.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/OperationSupport.h"
#include "mlir/Parser/Parser.h"
#include "mlir/Support/LogicalResult.h"
#include "mlir/Dialect/Affine/Passes.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Dialect/Affine/Analysis/AffineStructures.h"
#include "mlir/IR/IntegerSet.h"
#include "tabulate.hpp"
#include <iostream>
#include <string>
#include <iomanip>
#include <llvm/Support/Debug.h>

using namespace mlir;
using namespace presburger;
using namespace tabulate;

// Returns a result string which represents the direction vector (if there was
// a dependence), returns the string "false" otherwise.
static std::string
getDirectionVectorStr(unsigned numCommonLoops, unsigned loopNestDepth,
                      ArrayRef<DependenceComponent> dependenceComponents) {
    if (dependenceComponents.empty() || loopNestDepth > numCommonLoops) {
        return "true";
    }
    std::string result;
    for (const auto &dependenceComponent: dependenceComponents) {
        std::string lbStr = "-inf";
        if (dependenceComponent.lb.has_value() &&
            *dependenceComponent.lb != std::numeric_limits<int64_t>::min())
            lbStr = std::to_string(*dependenceComponent.lb);

        std::string ubStr = "+inf";
        if (dependenceComponent.ub.has_value() &&
            *dependenceComponent.ub != std::numeric_limits<int64_t>::max())
            ubStr = std::to_string(*dependenceComponent.ub);

        if (!result.empty()) {
            if (lbStr == ubStr)
                result += ", " + lbStr;
            else
                result += ", [" + lbStr + ", " + ubStr + "]";
        } else {
            if (lbStr == ubStr)
                result += lbStr;
            else
                result += "[" + lbStr + ", " + ubStr + "]";
        }
    }
    return "(" + result + ")";
}

// For each access in 'loadsAndStores', runs a dependence check between this
// "source" access and all subsequent "destination" accesses in
// 'loadsAndStores'. Emits the result of the dependence check as a note with
// the source access.
static void checkDependences(ArrayRef<Operation *> loadsAndStores) {
    for (unsigned i = 0, e = loadsAndStores.size(); i < e; ++i) {
        auto *srcOpInst = loadsAndStores[i];
        MemRefAccess srcAccess(srcOpInst);
        for (unsigned j = 0; j < e; ++j) {
            auto *dstOpInst = loadsAndStores[j];
            MemRefAccess dstAccess(dstOpInst);

            unsigned numCommonLoops =
                    getNumCommonSurroundingLoops(*srcOpInst, *dstOpInst);
            for (unsigned d = 1; d <= numCommonLoops + 1; ++d) {
                FlatAffineValueConstraints dependenceConstraints;
                SmallVector<DependenceComponent, 2> dependenceComponents;
                DependenceResult result = checkMemrefAccessDependence(
                        srcAccess, dstAccess, d, &dependenceConstraints,
                        &dependenceComponents);
                if (result.value == DependenceResult::Failure) {
                    srcOpInst->emitError("dependence check failed");
                } else {
                    bool ret = hasDependence(result);
                    if (ret)
                        srcOpInst->emitRemark("dependence from ") << i << " to " << j
                                                                  << " at depth " << d << " = "
                                                                  << getDirectionVectorStr(numCommonLoops,
                                                                                           d,
                                                                                           dependenceComponents)
                                                                  << "\n" << srcOpInst->getResult(0)
                                                                  << "\n" << dstOpInst->getResult(0) << "\n";
                }
            }
        }
    }
}

/// Returns true if `val` is an induction of an affine.parallel op.
static bool isAffineParallelInductionVar(Value val) {
    auto ivArg = val.dyn_cast<BlockArgument>();
    if (!ivArg)
        return false;
    return isa<AffineParallelOp>(ivArg.getOwner()->getParentOp());
}

static unsigned
getNumCommonLoops(const FlatAffineValueConstraints &srcDomain,
                  const FlatAffineValueConstraints &dstDomain,
                  SmallVectorImpl<AffineForOp> *commonLoops = nullptr) {
    // Find the number of common loops shared by src and dst accesses.
    unsigned minNumLoops =
            std::min(srcDomain.getNumDimVars(), dstDomain.getNumDimVars());
    unsigned numCommonLoops = 0;
    for (unsigned i = 0; i < minNumLoops; ++i) {
        if ((!isAffineForInductionVar(srcDomain.getValue(i)) &&
             !isAffineParallelInductionVar(srcDomain.getValue(i))) ||
            (!isAffineForInductionVar(dstDomain.getValue(i)) &&
             !isAffineParallelInductionVar(dstDomain.getValue(i))) ||
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

std::string printValue(Value v) {
    std::string Str;
    llvm::raw_string_ostream OS(Str);
    auto parent = v.getParentRegion()->getParentOfType<func::FuncOp>();
    AsmState state(parent, OpPrintingFlags().printGenericOpForm());
    v.printAsOperand(OS, state);
    return Str;
}

void printDependenceConstraints(FlatAffineValueConstraints dep, const std::string &name = "") {
    std::cerr << name << "\n";
//    dep.dump();
    std::string str;
    llvm::raw_string_ostream os(str);
    Table table;
    auto nd = dep.getNumDomainVars();
    auto nr = dep.getNumRangeVars();
    auto ns = dep.getNumSymbolVars();
    auto nl = dep.getNumLocalVars();
    auto ne = dep.getNumEqualities();
    using Row_t = std::vector<variant<std::string, const char *, string_view, Table>>;
    Row_t varTypes;
    for (int i = 0; i < nd; ++i)
        varTypes.emplace_back("domain");
    for (int i = 0; i < nr; ++i)
        varTypes.emplace_back("range");
    for (int i = 0; i < ns; ++i)
        varTypes.emplace_back("symbol");
    for (int i = 0; i < nl; ++i)
        varTypes.emplace_back("local");
    varTypes.emplace_back("");
    varTypes.emplace_back("");
    varTypes.emplace_back("");
    table.add_row(varTypes);

    Row_t value_names;
    for (unsigned i = 0; i < dep.getNumDimAndSymbolVars(); ++i) {
        if (dep.hasValue(i))
            value_names.emplace_back(printValue(dep.getValue(i)));
        else
            value_names.emplace_back("none");
    }
    if (dep.getNumDimAndSymbolVars() < dep.getNumCols())
        for (int i = dep.getNumDimAndSymbolVars(); i < dep.getNumCols() - 1; ++i) {
            value_names.emplace_back("none");
        }
    value_names.emplace_back("const");
    value_names.emplace_back("");
    value_names.emplace_back("");
    table.add_row(value_names);

    for (unsigned i = 0, e = dep.getNumEqualities(); i < e; ++i) {
        Row_t row;
        for (unsigned j = 0, f = dep.getNumCols(); j < f; ++j) {
            row.emplace_back(std::to_string(int64FromMPInt(dep.atEq(i, j))));
        }
        row.emplace_back("=");
        row.emplace_back("0");
        table.add_row(row);
    }
    for (unsigned i = 0, e = dep.getNumInequalities(); i < e; ++i) {
        Row_t row;
        for (unsigned j = 0, f = dep.getNumCols(); j < f; ++j) {
            row.emplace_back(std::to_string(int64FromMPInt(dep.atIneq(i, j))));
        }
        row.emplace_back(">=");
        row.emplace_back("0");
        table.add_row(row);
    }
    table.format().hide_border();
    table.format().font_align(FontAlign::right);
    std::cerr << table << "\n";
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
        auto lbConst =
                dependenceDomain->getConstantBound64(IntegerPolyhedron::LB, j);
        (*dependenceComponents)[j].lb =
                lbConst.value_or(std::numeric_limits<int64_t>::min());
        auto ubConst =
                dependenceDomain->getConstantBound64(IntegerPolyhedron::UB, j);
        (*dependenceComponents)[j].ub =
                ubConst.value_or(std::numeric_limits<int64_t>::max());
    }
}

//bool hasInvalidConstraint(IntegerRelation intRel) {
//    auto check = [&](bool isEq) -> bool {
//        unsigned numCols = intRel.getNumCols();
//        unsigned numRows = isEq ? intRel.getNumEqualities() : intRel.getNumInequalities();
//        for (unsigned i = 0, e = numRows; i < e; ++i) {
//            unsigned j;
//            for (j = 0; j < numCols - 1; ++j) {
//                MPInt v = isEq ? intRel.atEq(i, j) : intRel.atIneq(i, j);
//                // Skip rows with non-zero variable coefficients.
//                if (v != 0)
//                    break;
//            }
//            if (j < numCols - 1) {
//                continue;
//            }
//            // Check validity of constant term at 'numCols - 1' w.r.t 'isEq'.
//            // Example invalid constraints include: '1 == 0' or '-1 >= 0'
//            MPInt v = isEq ? intRel.atEq(i, numCols - 1) : intRel.atIneq(i, numCols - 1);
//            if ((isEq && v != 0) || (!isEq && v < 0)) {
//                return true;
//            }
//        }
//        return false;
//    };
//    if (check(/*isEq=*/true))
//        return true;
//    return check(/*isEq=*/false);
//}
//
//
///// Eliminate variable from constraint at `rowIdx` based on coefficient at
///// pivotRow, pivotCol. Columns in range [elimColStart, pivotCol) will not be
///// updated as they have already been eliminated.
//static void eliminateFromConstraint(IntegerRelation *constraints,
//                                    unsigned rowIdx, unsigned pivotRow,
//                                    unsigned pivotCol, unsigned elimColStart,
//                                    bool isEq) {
//    // Skip if equality 'rowIdx' if same as 'pivotRow'.
//    if (isEq && rowIdx == pivotRow)
//        return;
//    auto at = [&](unsigned i, unsigned j) -> MPInt {
//        return isEq ? constraints->atEq(i, j) : constraints->atIneq(i, j);
//    };
//    MPInt leadCoeff = at(rowIdx, pivotCol);
//    // Skip if leading coefficient at 'rowIdx' is already zero.
//    if (leadCoeff == 0)
//        return;
//    MPInt pivotCoeff = constraints->atEq(pivotRow, pivotCol);
//    int sign = (leadCoeff * pivotCoeff > 0) ? -1 : 1;
//    MPInt lcm = presburger::lcm(pivotCoeff, leadCoeff);
//    MPInt pivotMultiplier = sign * (lcm / abs(pivotCoeff));
//    MPInt rowMultiplier = lcm / abs(leadCoeff);
//
//    unsigned numCols = constraints->getNumCols();
//    for (unsigned j = 0; j < numCols; ++j) {
//        // Skip updating column 'j' if it was just eliminated.
//        if (j >= elimColStart && j < pivotCol)
//            continue;
//        MPInt v = pivotMultiplier * constraints->atEq(pivotRow, j) +
//                  rowMultiplier * at(rowIdx, j);
//        isEq ? constraints->atEq(rowIdx, j) = v
//             : constraints->atIneq(rowIdx, j) = v;
//    }
//}
//
///// Removes local variables using equalities. Each equality is checked if it
///// can be reduced to the form: `e = affine-expr`, where `e` is a local
///// variable and `affine-expr` is an affine expression not containing `e`.
///// If an equality satisfies this form, the local variable is replaced in
///// each constraint and then removed. The equality used to replace this local
///// variable is also removed.
//void removeRedundantLocalVars(IntegerRelation(intRel)) {
//    // Normalize the equality constraints to reduce coefficients of local
//    // variables to 1 wherever possible.
//    for (unsigned i = 0, e = intRel.getNumEqualities(); i < e; ++i)
//        intRel.equalities.normalizeRow(i);
//
//    while (true) {
//        unsigned i, e, j, f;
//        for (i = 0, e = intRel.getNumEqualities(); i < e; ++i) {
//            // Find a local variable to eliminate using ith equality.
//            for (j = intRel.getNumDimAndSymbolVars(), f = intRel.getNumVars(); j < f; ++j)
//                if (abs(intRel.atEq(i, j)) == 1)
//                    break;
//
//            // Local variable can be eliminated using ith equality.
//            if (j < f)
//                break;
//        }
//
//        // No equality can be used to eliminate a local variable.
//        if (i == e)
//            break;
//
//        // Use the ith equality to simplify other equalities. If any changes
//        // are made to an equality constraint, it is normalized by GCD.
//        for (unsigned k = 0, t = intRel.getNumEqualities(); k < t; ++k) {
//            if (intRel.atEq(k, j) != 0) {
//                eliminateFromConstraint(&intRel, k, i, j, j, /*isEq=*/true);
//                intRel.equalities.normalizeRow(k);
//            }
//        }
//
//        // Use the ith equality to simplify inequalities.
//        for (unsigned k = 0, t = intRel.getNumInequalities(); k < t; ++k)
//            eliminateFromConstraint(&intRel, k, i, j, j, /*isEq=*/false);
//
//        // Remove the ith equality and the found local variable.
//        intRel.removeVar(j);
//        intRel.removeEquality(i);
//    }
//}
//
///// Returns the position of the variable that has the minimum <number of lower
///// bounds> times <number of upper bounds> from the specified range of
///// variables [start, end). It is often best to eliminate in the increasing
///// order of these counts when doing Fourier-Motzkin elimination since FM adds
///// that many new constraints.
//static unsigned getBestVarToEliminate(const IntegerRelation &cst,
//                                      unsigned start, unsigned end) {
//    assert(start < cst.getNumVars() && end < cst.getNumVars() + 1);
//
//    auto getProductOfNumLowerUpperBounds = [&](unsigned pos) {
//        unsigned numLb = 0;
//        unsigned numUb = 0;
//        for (unsigned r = 0, e = cst.getNumInequalities(); r < e; r++) {
//            if (cst.atIneq(r, pos) > 0) {
//                ++numLb;
//            } else if (cst.atIneq(r, pos) < 0) {
//                ++numUb;
//            }
//        }
//        return numLb * numUb;
//    };
//
//    unsigned minLoc = start;
//    unsigned min = getProductOfNumLowerUpperBounds(start);
//    for (unsigned c = start + 1; c < end; c++) {
//        unsigned numLbUbProduct = getProductOfNumLowerUpperBounds(c);
//        if (numLbUbProduct < min) {
//            min = numLbUbProduct;
//            minLoc = c;
//        }
//    }
//    return minLoc;
//}
//
//// Checks for emptiness of the set by eliminating variables successively and
//// using the GCD test (on all equality constraints) and checking for trivially
//// invalid constraints. Returns 'true' if the constraint system is found to be
//// empty; false otherwise.
//bool isEmpty(IntegerRelation intRel) {
//    if (intRel.isEmptyByGCDTest() || hasInvalidConstraint(intRel))
//        return true;
//
//    IntegerRelation tmpCst(intRel);
//
//    // First, eliminate as many local variables as possible using equalities.
//    tmpCst.removeRedundantLocalVars();
//    if (tmpCst.isEmptyByGCDTest() || tmpCst.hasInvalidConstraint())
//        return true;
//
//    // Eliminate as many variables as possible using Gaussian elimination.
//    unsigned currentPos = 0;
//    while (currentPos < tmpCst.getNumVars()) {
//        tmpCst.gaussianEliminateVars(currentPos, tmpCst.getNumVars());
//        ++currentPos;
//        // We check emptiness through trivial checks after eliminating each ID to
//        // detect emptiness early. Since the checks isEmptyByGCDTest() and
//        // hasInvalidConstraint() are linear time and single sweep on the constraint
//        // buffer, this appears reasonable - but can optimize in the future.
//        if (tmpCst.hasInvalidConstraint() || tmpCst.isEmptyByGCDTest())
//            return true;
//    }
//
//    // Eliminate the remaining using FM.
//    for (unsigned i = 0, e = tmpCst.getNumVars(); i < e; i++) {
//        tmpCst.fourierMotzkinEliminate(
//                getBestVarToEliminate(tmpCst, 0, tmpCst.getNumVars()));
//        // Check for a constraint explosion. This rarely happens in practice, but
//        // this check exists as a safeguard against improperly constructed
//        // constraint systems or artificially created arbitrarily complex systems
//        // that aren't the intended use case for IntegerRelation. This is
//        // needed since FM has a worst case exponential complexity in theory.
//        auto kExplosionFactor = 32;
//        if (tmpCst.getNumConstraints() >= kExplosionFactor * intRel.getNumVars()) {
//            llvm::dbgs() << "FM constraint explosion detected\n";
//            return false;
//        }
//
//        // FM wouldn't have modified the equalities in any way. So no need to again
//        // run GCD test. Check for trivial invalid constraints.
//        if (tmpCst.hasInvalidConstraint())
//            return true;
//    }
//    return false;
//}

#endif //PI_MAIN_H
