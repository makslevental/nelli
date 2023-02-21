set -e -x

LLVM_INSTALL_DIR=$PWD/../llvm_install

#PIPELINE="\
#-convert-linalg-to-loops \
#-linalg-bufferize \
#-convert-scf-to-cf \
#-convert-linalg-to-loops \
#-linalg-bufferize \
#-arith-bufferize \
#-tensor-bufferize \
#-func-bufferize \
#-finalizing-bufferize \
#-convert-linalg-to-llvm \
#-expand-strided-metadata \
#-lower-affine \
#-convert-arith-to-llvm \
#-convert-scf-to-cf \
#-finalize-memref-to-llvm \
#-convert-func-to-llvm \
#-reconcile-unrealized-casts
#"

#$LLVM_INSTALL_DIR/bin/mlir-opt -mlir-print-ir-after-all -mlir-disable-threading $1 $PIPELINE
$LLVM_INSTALL_DIR/bin/mlir-opt $1 $PIPELINE
