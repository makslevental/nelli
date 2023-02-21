//
// Created by maksim on 2/17/23.
//
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Linalg/Transforms/TilingInterfaceImpl.h"
#include "mlir/Dialect/Linalg/Transforms/Transforms.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Tensor/IR/TensorTilingInterfaceImpl.h"

#ifndef NELLI_LINALGTRANSFORMS_H
#define NELLI_LINALGTRANSFORMS_H

using namespace mlir;

namespace nelli {

void registerLinalgTransforms();

} // namespace nelli

#endif // NELLI_LINALGTRANSFORMS_H
