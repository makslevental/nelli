// Copyright 2021 The IREE Authors
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#ifndef NELLI_GPUUTILS_H
#define NELLI_GPUUTILS_H

#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"

namespace mlir {
Value emitGPUGroupReduction(Location loc, OpBuilder &builder, Value input,
                            vector::CombiningKind kind, uint32_t size,
                            const int warpSize);

void createAsyncGroups(RewriterBase &rewriter, func::FuncOp funcOp,
                       bool useMMASync);

/// Packs vector of lower precision into a single 32-bit width element.
/// (i.e <2xf16> -> i32 and <4xi8> -> i32)
Value packVectorToSupportedWidth(Location loc, OpBuilder &builder, Value input);

/// Unpack single scalar element into a target vector type.
/// (i.e i32 -> vector<4xi8> or f32 -> vector<2xf16>)
Value unpackToVector(Location loc, OpBuilder &builder, Value packedInput,
                     VectorType targetVecType);

void doLayoutAnalysisAndDistribution(IRRewriter &rewriter,
                                     func::FuncOp funcOp);
} // namespace mlir

#endif // NELLI_GPUUTILS_H
