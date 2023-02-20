include_directories(${PROJECT_BINARY_DIR}/cpp_ext/Transform)

add_mlir_library(TransformDialectInterpreter
        TransformDialectInterpreter.cpp

        EXCLUDE_FROM_LIBMLIR

        LINK_LIBS PUBLIC
        MLIRIR
        MLIRPass
        MLIRPDLDialect
        MLIRTransformDialect
        MLIRTransformDialectTransforms
        )

