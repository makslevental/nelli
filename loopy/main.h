//
// Created by maksim on 1/18/23.
//

#ifndef PI_MAIN_H
#define PI_MAIN_H

#include "affine_analysis.h"
#include "mlir/Analysis/Presburger/Matrix.h"
#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineStructures.h"
#include "mlir/Dialect/Affine/Analysis/Utils.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/IR/AffineValueMap.h"
#include "mlir/Dialect/Affine/Passes.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/IR/AsmState.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/IntegerSet.h"
#include "mlir/IR/OperationSupport.h"
#include "mlir/Parser/Parser.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Support/LogicalResult.h"
#include "tabulate.hpp"
#include <iomanip>
#include <iostream>
#include <llvm/Support/Debug.h>
#include <string>

using namespace mlir;
using namespace presburger;
using namespace tabulate;

std::string printValue(Value v) {
  std::string Str;
  llvm::raw_string_ostream OS(Str);
  auto parent = v.getParentRegion()->getParentOfType<func::FuncOp>();
  AsmState state(parent, OpPrintingFlags().printGenericOpForm());
  v.printAsOperand(OS, state);
  return Str;
}

void printDependenceConstraints(FlatAffineValueConstraints dep,
                                const std::string &name = "") {
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
  using Row_t =
      std::vector<variant<std::string, const char *, string_view, Table>>;
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
      row.emplace_back(std::to_string(dep.atEq(i, j)));
    }
    row.emplace_back("=");
    row.emplace_back("0");
    table.add_row(row);
  }
  for (unsigned i = 0, e = dep.getNumInequalities(); i < e; ++i) {
    Row_t row;
    for (unsigned j = 0, f = dep.getNumCols(); j < f; ++j) {
      row.emplace_back(std::to_string(dep.atIneq(i, j)));
    }
    row.emplace_back(">=");
    row.emplace_back("0");
    table.add_row(row);
  }
  table.format().hide_border();
  table.format().font_align(FontAlign::right);
  std::cerr << table << "\n";
}

// For each access in 'loadsAndStores', runs a dependence check between this
// "source" access and all subsequent "destination" accesses in
// 'loadsAndStores'. Emits the result of the dependence check as a note with
// the source access.
static void myCheckDependences(ArrayRef<Operation *> loadsAndStores) {
  for (unsigned i = 0, e = loadsAndStores.size(); i < e; ++i) {
    auto *srcOpInst = loadsAndStores[i];
    MemRefAccess srcAccess(srcOpInst);
    for (unsigned j = 0; j < e; ++j) {
      auto *dstOpInst = loadsAndStores[j];
      MemRefAccess dstAccess(dstOpInst);

      unsigned numCommonLoops =
          getNumCommonSurroundingLoops(*srcOpInst, *dstOpInst);
      std::cerr << "numCommonLoops: " << numCommonLoops << "\n";
      for (unsigned d = 1; d <= numCommonLoops + 1; ++d) {
        std::cerr << "checking " << i << " to " << j << " at depth " << d << "\n";
        FlatAffineValueConstraints dependenceConstraints;
        SmallVector<DependenceComponent, 2> dependenceComponents;
        DependenceResult result = myCheckMemrefAccessDependence(
            srcAccess, dstAccess, d, &dependenceConstraints,
            &dependenceComponents, true);
        if (result.value == DependenceResult::Failure) {
          srcOpInst->emitError("dependence check failed");
        } else {
          bool ret = hasDependence(result);
          // TODO: Print dependence type (i.e. RAW, etc) and print
          // distance vectors as: ([2, 3], [0, 10]). Also, shorten distance
          // vectors from ([1, 1], [3, 3]) to (1, 3).
          srcOpInst->emitRemark("dependence from ")
              << i << " to " << j << " at depth " << d << " = "
              << getDirectionVectorStr(ret, numCommonLoops, d,
                                       dependenceComponents);
          if (ret)
            printDependenceConstraints(dependenceConstraints);
        }
      }
    }
  }
}

#endif // PI_MAIN_H
