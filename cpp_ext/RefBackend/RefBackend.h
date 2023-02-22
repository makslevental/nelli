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
void registerMungeCallingConventionPass();
void registerMungeMemrefCopyPass();
void registerGeneralizeTensorPadPass();
} // namespace nelli

#endif // NELLI_REFBACKEND_H
