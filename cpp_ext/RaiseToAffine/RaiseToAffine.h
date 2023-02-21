//
// Created by maksim on 2/19/23.
//

#ifndef NELLI_RAISESCFTOAFFINE_H
#define NELLI_RAISESCFTOAFFINE_H

#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/Types.h"
#include <map>
#include <vector>

namespace nelli {
void registerRaiseSCFToAffinePass();
} // namespace nelli

#endif // NELLI_RAISESCFTOAFFINE_H
