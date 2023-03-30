//
// Created by maksim on 2/19/23.
//

#ifndef NELLI_LLVMGPUVectorLoweringPass_H
#define NELLI_LLVMGPUVectorLoweringPass_H

#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/Types.h"
#include <map>
#include <vector>

namespace nelli {
void registerLLVMGPUVectorLoweringPass();
void registerConvertToNVVMPass();
} // namespace nelli

#endif // NELLI_LLVMGPUVectorLoweringPass_H
