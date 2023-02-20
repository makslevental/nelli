//
// Created by maksim on 2/19/23.
//

#ifndef NELLI_REFBACKEND_H
#define NELLI_REFBACKEND_H

#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/Types.h"
#include <map>
#include <vector>

namespace nelli {
mlir::LogicalResult mungeFunction(mlir::func::FuncOp func,
                                  std::map<std::string, std::vector<mlir::Type>>
                                      &invokedConsumeFuncReturnFuncs);
void addEmitCInterfaceAttr(mlir::func::FuncOp func);
} // namespace nelli

#endif // NELLI_REFBACKEND_H
