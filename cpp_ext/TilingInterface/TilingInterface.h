//
// Created by maksim on 2/17/23.
//

#ifndef NELLI_TILINGINTERFACE_H
#define NELLI_TILINGINTERFACE_H

namespace mlir::nelli {

///  pass for ing the use of `TilingInterface`.
struct TilingInterfacePass
    : public PassWrapper<TilingInterfacePass, OperationPass<func::FuncOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(TilingInterfacePass)

  TilingInterfacePass() = default;
  TilingInterfacePass(const TilingInterfacePass &pass) : PassWrapper(pass) {}
  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<AffineDialect, linalg::LinalgDialect, memref::MemRefDialect,
                    scf::SCFDialect, tensor::TensorDialect>();
    linalg::registerTilingInterfaceExternalModels(registry);
    tensor::registerTilingInterfaceExternalModels(registry);
  }
  StringRef getArgument() const final { return "-tiling-interface"; }
  StringRef getDescription() const final {
    return "tiling using TilingInterface";
  }

  Option<bool> tiling{
      *this, "tile-using-scf-for",
      llvm::cl::desc("tiling using TilingInterface with scf.for operations"),
      llvm::cl::init(false)};

  Option<bool> tileConsumerFuseAndYieldProducer{
      *this, "tile-consumer-fuse-and-yield-producer-using-scf-for",
      llvm::cl::desc(
          "tile and fuse transformation while yielding fused producer "
          "replacements using TilingInterface with scf.for operations"),
      llvm::cl::init(false)};

  Option<bool> tileConsumerAndFuseProducer{
      *this, "tile-consumer-and-fuse-producer-using-scf-for",
      llvm::cl::desc("tile and fuse transformation using TilingInterface "
                     "with scf.for operations"),
      llvm::cl::init(false)};

  Option<bool> loweringToScalar{
      *this, "lower-to-scalar-using-scf-for",
      llvm::cl::desc("lowering to scalar implementation using "
                     "TilingInterface with scf.for operations"),
      llvm::cl::init(false)};

  void runOnOperation() override;

private:
  void addPatterns(MLIRContext *context, RewritePatternSet &patterns);
};

void registerTilingInterface();
} // namespace mlir::nelli

#endif // NELLI_TILINGINTERFACE_H
