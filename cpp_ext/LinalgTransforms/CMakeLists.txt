add_mlir_library(LinalgTransforms
        LinalgTransforms.cpp

        EXCLUDE_FROM_LIBMLIR

        LINK_LIBS PUBLIC
        MLIRAffineDialect
        MLIRArithDialect
        MLIRArithTransforms
        MLIRBufferizationDialect
        MLIRBufferizationTransforms
        MLIRGPUTransforms
        MLIRLinalgDialect
        MLIRLinalgTransforms
        MLIRLLVMToLLVMIRTranslation
        MLIRMemRefDialect
        MLIRParser
        MLIRPass
        MLIRSCFDialect
        MLIRSCFTransforms
        MLIRTensorDialect
        MLIRTensorTransforms
        MLIRTransformUtils
        MLIRVectorDialect
        MLIRVectorToSCF
        MLIRVectorTransforms
        )
