add_mlir_library(LLVMGPUExtensions
        LLVMGPUExtensions.cpp
        LLVMGPUExtensionsOps.cpp.inc
        GPUUtils.cpp

        ADDITIONAL_HEADERS
        LLVMGPUExtensions.h
        LLVMGPUExtensionsOps.h.inc

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

        DialectsTransforms
        )