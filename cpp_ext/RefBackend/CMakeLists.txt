add_mlir_library(
  RefBackend
  RefBackend.cpp
  DISABLE_INSTALL
  LINK_LIBS
  PUBLIC
  MLIRFuncDialect
  MLIRMemRefDialect)
