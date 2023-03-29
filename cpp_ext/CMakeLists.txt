include(AddMLIRPython)
mlir_configure_python_dev_packages()
mlir_detect_pybind11_install()

set(NELLI_MLIR_PYTHON_PACKAGES_DIR "${CMAKE_CURRENT_BINARY_DIR}/python_packages")

add_compile_definitions("MLIR_PYTHON_PACKAGE_PREFIX=nelli.mlir._mlir.")
declare_mlir_python_sources(NelliPythonSources)

# TODO(max): figure out how to prevent cpps from being "installed"
#get_property(MLIR_D_LIBS GLOBAL PROPERTY MLIR_DIALECT_LIBS)
#get_property(MLIR_C_LIBS GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
#get_property(MLIR_T_LIBS GLOBAL PROPERTY MLIR_TRANSLATION_LIBS)
include_directories(.)

add_subdirectory(TilingInterface)
add_subdirectory(RefBackend)
add_subdirectory(Transform)
add_subdirectory(RaiseToAffine)
add_subdirectory(LinalgTransforms)
add_subdirectory(FakeQuantize)
add_subdirectory(GPUTransforms)
add_subdirectory(PDLByteCodeInterpreter)

declare_mlir_python_extension(NelliPythonSources.Extension
        MODULE_NAME _nelli_mlir
        ADD_TO_PARENT NelliPythonSources
        SOURCES
        NelliExtension.cpp
        LoopUtils.cpp
        AffineAnalysis.cpp

        PRIVATE_LINK_LIBS
        MLIRPresburger
        MLIRAffineAnalysis
        MLIRSparseTensorPipelines

        TilingInterfacePasses
        RefBackend
        TransformDialectInterpreter
        RaiseToAffine
        LinalgTransforms
        FakeQuantize
        GPUTransforms
        PDLByteCodeInterpreter
        )

#add_subdirectory(openmp_translation)

declare_mlir_python_extension(NelliPythonSources.SiteInitialize
        MODULE_NAME _site_initialize_0
        ADD_TO_PARENT NelliPythonSources
        SOURCES
        SiteInitialize.cpp

        PRIVATE_LINK_LIBS
        LLVMSupport
        MLIRIR
        )
target_link_libraries(NelliPythonSources.SiteInitialize
        INTERFACE
        MLIROpenMPToLLVMIRTranslation
        CommonExtensions
        StructuredTransformOpsExt
        LLVMGPUExtensions
        )

get_target_property(mlir_python_sources MLIRPythonExtension.Core INTERFACE_SOURCES)
list(GET mlir_python_sources 0 HEADER)
get_filename_component(header_dir ${HEADER} DIRECTORY)
#list(FILTER mlir_python_sources INCLUDE REGEX "(IRAffine|IRAttributes|IRCore|IRInterfaces|IRModule|IRTypes|Pass|PybindUtils)\\.cpp")
list(FILTER mlir_python_sources INCLUDE REGEX "(PybindUtils)\\.cpp")
target_sources(NelliPythonSources.Extension INTERFACE ${mlir_python_sources})
target_include_directories(NelliPythonSources.Extension INTERFACE ${header_dir})

execute_process(COMMAND python ${CMAKE_SOURCE_DIR}/scripts/regex_mlir_bindings.py ${header_dir}/IRModule.h)
execute_process(COMMAND python ${CMAKE_SOURCE_DIR}/scripts/regex_mlir_bindings.py ${header_dir}/IRCore.cpp)
execute_process(COMMAND python ${CMAKE_SOURCE_DIR}/scripts/regex_mlir_bindings.py ${header_dir}/IRAffine.cpp)

set(_source_components
        MLIRPythonSources
        MLIRPythonExtension.Core
        MLIRPythonExtension.RegisterEverything
        NelliPythonSources
        )

add_mlir_python_common_capi_library(NelliMLIRAggregateCAPI
        INSTALL_COMPONENT NelliMLIRPythonModules
        INSTALL_DESTINATION _mlir/_mlir_libs
        OUTPUT_DIRECTORY "${NELLI_MLIR_PYTHON_PACKAGES_DIR}/nelli/mlir/_mlir/_mlir_libs"
        RELATIVE_INSTALL_ROOT "../../../../.."
        DECLARED_SOURCES ${_source_components}
        )

add_mlir_python_modules(NelliPythonModules
        ROOT_PREFIX "${NELLI_MLIR_PYTHON_PACKAGES_DIR}/nelli/mlir/_mlir"
        INSTALL_PREFIX "_mlir"
        DECLARED_SOURCES ${_source_components}
        COMMON_CAPI_LINK_LIBS
        NelliMLIRAggregateCAPI
        )


file(READ "${MLIR_INCLUDE_DIRS}/mlir/Bindings/Python/PybindAdaptors.h" filedata)
file(WRITE "${MLIR_INCLUDE_DIRS}/mlir/Bindings/Python/PybindAdaptors.h.bkup" "${filedata}")
string(REPLACE "template <typename T>
struct type_caster<llvm::Optional<T>> : optional_caster<llvm::Optional<T>> {}" "// typecaster" output "${filedata}")
file(WRITE "${MLIR_INCLUDE_DIRS}/mlir/Bindings/Python/PybindAdaptors.h" "${output}")
