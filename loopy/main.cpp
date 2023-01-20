#include "main.h"
#include "affine_analysis.h"
#include "examples.h"
#include "mlir/Analysis/Presburger/Matrix.h"
#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineStructures.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/IR/AsmState.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/IntegerSet.h"
#include "mlir/IR/OperationSupport.h"
#include "mlir/Parser/Parser.h"
#include "mlir/Support/LogicalResult.h"
#include <iostream>
#include <string>

using namespace mlir;
using namespace presburger;

void runOnOperation(Operation *operation) {
  SmallVector<Operation *, 4> loadsAndStores;
  // Collect the loads and stores within the function.
  loadsAndStores.clear();
  operation->walk([&](Operation *op) {
    if (isa<AffineLoadOp, AffineStoreOp>(op)) {
      loadsAndStores.push_back(op);
    }
  });
  myCheckDependences(loadsAndStores);
}

void showAccessRelations(Operation *operation, MLIRContext &ctx) {
  AffineStoreOp storeOp;
  AffineLoadOp loadOp;
  operation->walk([&](Operation *op) {
    if (isa<AffineStoreOp>(op)) {
      storeOp = dyn_cast<AffineStoreOp>(op);
    }
    if (isa<AffineLoadOp>(op)) {
      loadOp = dyn_cast<AffineLoadOp>(op);
    }
  });
  myCheckDependences({storeOp, loadOp});

  //    FlatAffineRelation srcRel, dstRel;
  //    FlatAffineValueConstraints dependenceConstraints;
  //
  //    MemRefAccess srcAccess(storeOp);
  //    MemRefAccess dstAccess(loadOp);
  //
  //    SmallVector<DependenceComponent, 2> dependenceComponents;
  //    DependenceResult result = checkMemrefAccessDependence(
  //            srcAccess, dstAccess, 1, &dependenceConstraints,
  //            &dependenceComponents);
  //    dependenceConstraints.dump();

  //    srcAccess.getAccessRelation(srcRel);
  //    printDependenceConstraints(srcRel, "srcRel");
  //    FlatAffineValueConstraints srcDomain = srcRel.getDomainSet();
  //    printDependenceConstraints(srcDomain, "srcDomain");
  //
  //    dstAccess.getAccessRelation(dstRel);
  //    printDependenceConstraints(dstRel, "dstRel");
  //    FlatAffineValueConstraints dstDomain = dstRel.getDomainSet();
  //    printDependenceConstraints(dstDomain, "dstDomain");
  //
  //    unsigned numCommonLoops = getNumCommonLoops(srcDomain, dstDomain);
  //    std::cerr << "numCommonLoops " << numCommonLoops << "\n";
  //
  //    dstRel.inverse();
  //    printDependenceConstraints(dstRel, "dstRel.inverse");
  //    dstRel.compose(srcRel);
  //    printDependenceConstraints(dstRel, "dstRel.compose(srcRel)");
  //    dependenceConstraints = dstRel;
  //    printDependenceConstraints(dependenceConstraints,
  //    "dependenceConstraints");

  //    auto isEmpty = dependenceConstraints.isEmpty();
  //    std::cerr << "is empty " << isEmpty;
  //
  //    SmallVector<DependenceComponent, 2> dependenceComponents;
  //    if (!isEmpty)
  //        computeDirectionVector(srcDomain, dstDomain, 1,
  //                               &dependenceConstraints,
  //                               &dependenceComponents);
  //
  //    for (const auto &dep: dependenceComponents)
  //        dep.op->dump();

  //    addOrderingConstraints(srcDomain, dstDomain, 1,
  //                           &dependenceConstraints);
  //    std::cerr << "dependenceConstraints\n";
  //    dependenceConstraints.dump();

  //    auto space = dependenceConstraints.getSpace();
  //    space.resetIds<mlir::Value>();
  //
  //    // Attach identifiers to domain ids.
  //    space.setId<mlir::Value>(VarKind::Domain, 0, storeOp.getMemRef());
  //    space.setId<mlir::Value>(VarKind::Domain, 1, loadOp.getResult());
  //
  //    space.dump();
}

int main() {

  MLIRContext context;
  context.disableMultithreading(true);
  context.printOpOnDiagnostic(true);
  context.getDiagEngine().registerHandler([](mlir::Diagnostic &diag) {
    llvm::raw_ostream &os = llvm::errs();
    os << diag << '\n';
    os.flush();
    return mlir::success();
  });
  context.loadDialect<memref::MemRefDialect>();
  context.loadDialect<func::FuncDialect>();
  context.loadDialect<mlir::AffineDialect>();

  // Parse both modules into the same context so that we ensure the conflicting
  // resources have been loaded.
  OwningOpRef<ModuleOp> module2 =
      parseSourceString<ModuleOp>(checkMemrefAccessDependenceExample, &context);
  //    module2->dump();
  showAccessRelations(module2->getOperation(), context);
}