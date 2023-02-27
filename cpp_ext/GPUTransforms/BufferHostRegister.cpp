/*
Copyright 2020 The OneFlow Authors. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

#include "GPUTransforms.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Pass/Pass.h"
#include <string>

using namespace llvm;
using namespace mlir;

namespace {
struct BufferHostRegisterPass
    : public PassWrapper<BufferHostRegisterPass, OperationPass<func::FuncOp>> {

  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(BufferHostRegisterPass)

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<linalg::LinalgDialect>();
  }
  [[nodiscard]] StringRef getArgument() const final {
    return "buffer-host-register";
  }

  void runOnOperation() override {
    getOperation()->walk([&](memref::AllocOp alloc) {
      auto ranked_type = alloc.getResult().getType().cast<MemRefType>();
      Type unranked_type = UnrankedMemRefType::get(
          ranked_type.getElementType(), ranked_type.getMemorySpace());
      OpBuilder builder(alloc);
      builder.setInsertionPointAfter(alloc);
      Value casted =
          builder.create<memref::CastOp>(alloc->getLoc(), unranked_type, alloc);
      builder.create<gpu::HostRegisterOp>(alloc->getLoc(), casted);
    });
  }
};

} // namespace

namespace nelli {
void registerBufferHostRegisterPass() {
  PassRegistration<BufferHostRegisterPass>();
}
} // namespace nelli
