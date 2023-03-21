set -e -x

#sed -i.bak 's/"iree./"/g' CommonExtensionsOps.td
#sed -i.bak 's/iree_compiler::IREE::transform_dialect/transform/g' CommonExtensionsOps.td
#sed -i.bak 's/additional_iree_patterns/additional_patterns/g' CommonExtensionsOps.td
#sed -i.bak 's/IREEBufferizeOp/TransformBufferizeOp/g' CommonExtensionsOps.td
#sed -i.bak 's/ for IREE//g' CommonExtensionsOps.td
#sed -i.bak 's/IREEEliminateEmptyTensorsOp/TransformEliminateEmptyTensorsOp/g' CommonExtensionsOps.td
#sed -i.bak 's/#endif \/\/ IREE_COMPILER_CODEGEN_COMMON_TRANSFORMEXTENSIONS_COMMONEXTENSIONS//g' CommonExtensionsOps.td

sed -i.bak 's/Iree//g' CommonExtensions.cpp
sed -i.bak 's/Iree//g' CommonExtensions.cpp
sed -i.bak 's/iree\/compiler\/Codegen\/Common\/TransformExtensions\///g' CommonExtensions.cpp
sed -i.bak 's/iree_compiler::IREE::transform_dialect/transform/g' CommonExtensions.cpp
sed -i.bak 's/mlir::iree_compiler::registerTransformDialectCommonExtension/mlir::registerTransformDialectCommonExtension/g' CommonExtensions.cpp
sed -i.bak 's/#include "iree.*//g' CommonExtensions.cpp
sed -i.bak 's/using namespace mlir::iree_compiler.*//g' CommonExtensions.cpp
sed -i.bak 's/transform_dialect/transform/g' CommonExtensions.cpp
sed -i.bak 's/IREEBufferizeOp/TransformBufferizeOp/g' CommonExtensions.cpp
sed -i.bak 's/mlir::iree_compiler::createLinalgCopyOp/mlir::createLinalgCopyOp/g' CommonExtensions.cpp
sed -i.bak 's/runIREEOneShotBufferize/runOneShotBufferize/g' CommonExtensions.cpp
sed -i.bak 's/addIREEPostBufferizationPasses/addTransformPostBufferizationPasses/g' CommonExtensions.cpp
sed -i.bak 's/, HAL::ExecutableOp, HAL::ExecutableVariantOp/\/*, HAL::ExecutableOp, HAL::ExecutableVariantOp*\//g' CommonExtensions.cpp
sed -i.bak 's/IREEEliminateEmptyTensorsOp/TransformEliminateEmptyTensorsOp/' CommonExtensions.cpp
