set -e -x

LLVM_INSTALL_DIR=/Users/mlevental/dev_projects/loopy/llvm_install

$LLVM_INSTALL_DIR/bin/mlir-tblgen --gen-op-defs \
  -I$LLVM_INSTALL_DIR/include \
  -no-warn-on-unused-template-args \
  CommonExtensionsOps.td \
  --write-if-changed -o CommonExtensionsOps.cpp.inc

$LLVM_INSTALL_DIR/bin/mlir-tblgen --gen-op-decls \
  -I$LLVM_INSTALL_DIR/include \
  -no-warn-on-unused-template-args \
  CommonExtensionsOps.td \
  --write-if-changed -o CommonExtensionsOps.h.inc

$LLVM_INSTALL_DIR/bin/mlir-tblgen -gen-python-op-bindings \
  -bind-dialect=transform \
  -dialect-extension=common \
  -I $LLVM_INSTALL_DIR/include \
  CommonExtensionsOps.td \
  -o /Users/mlevental/dev_projects/loopy/nelli/mlir/transform/_common.py
