# Exclude tests from libMLIR.so
add_mlir_library(
  PDLByteCodeInterpreter
  PDLByteCodeInterpreter.cpp
  EXCLUDE_FROM_LIBMLIR
  LINK_LIBS
  PUBLIC
  MLIRIR
  MLIRPass
  MLIRSupport
  MLIRTransformUtils)
