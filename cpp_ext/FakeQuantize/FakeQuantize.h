//
// Created by maksim on 2/19/23.
//

#ifndef NELLI_FAKE_QUANTIZE_H
#define NELLI_FAKE_QUANTIZE_H

#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/Types.h"
#include <map>
#include <vector>

namespace nelli {
void registerLinalgFakeQuantizePass();
} // namespace nelli

#endif // NELLI_FAKE_QUANTIZE_H
