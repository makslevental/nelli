#include_directories(${PROJECT_BINARY_DIR}/cpp_ext/Transform)
add_subdirectory(CommonExtensions)

add_mlir_library(ListenerCSE
        ListenerCSE.cpp

        PARTIAL_SOURCES_INTENDED

        DEPENDS
        mlir-headers
        )

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



