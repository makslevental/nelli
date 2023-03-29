// Copyright 2021 The IREE Authors
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#ifndef TRANSFORMS_LISTENERCSE_H
#define TRANSFORMS_LISTENERCSE_H

#include "mlir/IR/PatternMatch.h"
#include "mlir/Dialect/Transform/IR/TransformDialect.h"
#include "mlir/Dialect/Transform/IR/TransformInterfaces.h"
#include "mlir/IR/ImplicitLocOpBuilder.h"
#include "mlir/IR/OpDefinition.h"

namespace mlir {
class DominanceInfo;
class Operation;

LogicalResult eliminateCommonSubexpressions(Operation *op,
                                            DominanceInfo *domInfo,
                                            RewriterBase::Listener *listener);


class TrackingListener : public RewriterBase::Listener,
                         public transform::TransformState::Extension {
public:
  explicit TrackingListener(transform::TransformState &state)
      : transform::TransformState::Extension(state) {}

  ~TrackingListener() override {
#ifdef LLVM_ENABLE_ABI_BREAKING_CHECKS
    assert(errorStateChecked && "must check listener error state");
#endif // LLVM_ENABLE_ABI_BREAKING_CHECKS
  }

  DiagnosedSilenceableFailure check(Location loc) {
    if (failed(checkErrorState()))
      return emitDefiniteFailure(loc, "listener failed");
    return DiagnosedSilenceableFailure::success();
  }

  DiagnosedSilenceableFailure check(Location loc,
                                    DiagnosedSilenceableFailure &&diag) {
    if (failed(checkErrorState())) {
      auto definite = emitDefiniteFailure(loc, "listener failed");
      if (diag.isSilenceableFailure()) {
        definite.attachNote()
            << "was propagating silenceable error:" << diag.getMessage();
        (void)diag.silence();
      }
      return definite;
    }
    return std::move(diag);
  }

  void notifyOperationReplaced(Operation *op, ValueRange newValues) override;

  void notifyOperationRemoved(Operation *op) override;

  LogicalResult checkErrorState() const {
#ifdef LLVM_ENABLE_ABI_BREAKING_CHECKS
    errorStateChecked = true;
#endif // LLVM_ENABLE_ABI_BREAKING_CHECKS
    return failure(hadErrors);
  }

  /// Remove the mappings between the given operation and any handle that may be
  /// associated with it in the transform op.
  void removeMappings(Operation *op);

private:
  InFlightDiagnostic emitError(Operation *op, const llvm::Twine &message = {}) {
    mayFail(failure());
    return op->emitError(message);
  }

  void mayFail(LogicalResult result) {
    hadErrors |= result.failed();
#ifdef LLVM_ENABLE_ABI_BREAKING_CHECKS
    errorStateChecked = false;
#endif // LLVM_ENABLE_ABI_BREAKING_CHECKS
  }

  bool hadErrors = false;

#ifdef LLVM_ENABLE_ABI_BREAKING_CHECKS
  mutable bool errorStateChecked = false;
#endif // LLVM_ENABLE_ABI_BREAKING_CHECKS
};

} // namespace mlir

#endif // TRANSFORMS_LISTENERCSE_H
