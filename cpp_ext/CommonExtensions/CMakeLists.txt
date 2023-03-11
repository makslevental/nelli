add_mlir_library(CommonExtensions
        CommonExtensions.cpp
        CommonExtensionsOps.cpp.inc

        ADDITIONAL_HEADERS
        CommonExtensions.h
        CommonExtensionsOps.h.inc

        DISABLE_INSTALL

        LINK_LIBS PUBLIC
        LLVMSupport
        MLIRAffineDialect
        MLIRAffineUtils
        MLIRAnalysis
        MLIRArithDialect
        MLIRArithUtils
        MLIRBufferizationDialect
        MLIRBufferizationTransforms
        MLIRGPUOps
        MLIRIR
        MLIRLinalgDialect
        MLIRLinalgTransformOps
        MLIRLinalgTransforms
        MLIRMemRefDialect
        MLIRMemRefTransforms
        MLIRPDLDialect
        MLIRPass
        MLIRSCFDialect
        MLIRSCFTransforms
        MLIRSCFUtils
        MLIRTensorDialect
        MLIRTensorTransforms
        MLIRTransformDialect
        MLIRTransforms
        MLIRVectorDialect
        MLIRVectorTransforms
        )