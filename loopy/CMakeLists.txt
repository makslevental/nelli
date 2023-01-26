include(AddMLIRPython)
mlir_configure_python_dev_packages()
mlir_detect_pybind11_install()

set(LOOPY_MLIR_PYTHON_PACKAGES_DIR "${CMAKE_CURRENT_BINARY_DIR}/python_packages")

add_compile_definitions("MLIR_PYTHON_PACKAGE_PREFIX=loopy.loopy_mlir.")
declare_mlir_python_sources(LoopyPythonSources)

# TODO(max): figure out how to prevent cpps from being "installed"
get_property(MLIR_D_LIBS GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(MLIR_C_LIBS GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
get_property(MLIR_T_LIBS GLOBAL PROPERTY MLIR_TRANSLATION_LIBS)
declare_mlir_python_extension(LoopyPythonSources.Extension
        MODULE_NAME _loopyMlir
        ADD_TO_PARENT LoopyPythonSources
        SOURCES
        LoopyExtension.cpp

        PRIVATE_LINK_LIBS
        MLIRIR
        LLVMSupport
        MLIRIR
        MLIRPresburger
        MLIRAffineAnalysis
#        ${MLIR_D_LIBS}
#        ${MLIR_C_LIBS}
#        ${MLIR_T_LIBS}
#        MLIRCAPIRegisterEverything
#        MLIRIR
#        LLVMSupport
#        MLIRPresburger
#        MLIRAffineAnalysis
        MLIRPythonExtension.Core
#
#        MLIRCAPIConversion
#        MLIRCAPIDebug
#        MLIRCAPIIR
#        MLIRCAPIInterfaces
#        MLIRCAPIRegisterEverything
#        MLIRCAPITransforms
#
#        MLIRCAPIAsync
#        MLIRCAPIControlFlow
#        MLIRCAPIFunc
#        MLIRCAPIGPU
#        MLIRCAPILLVM
#        MLIRCAPILinalg
#        MLIRCAPIMLProgram
#        MLIRCAPIPDL
#        MLIRCAPIQuant
#        MLIRCAPISCF
#        MLIRCAPIShape
#        MLIRCAPISparseTensor
#        MLIRCAPITensor
#        MLIRCAPITransformDialect
        )
#add_dependencies(LoopyPythonSources.Extension MLIRPythonExtension.Core)
#target_include_directories(LoopyPythonSources.Extension INTERFACE $<TARGET_PROPERTY:MLIRPythonExtension.Core,INCLUDE_DIRECTORIES>)

set(_source_components
        LoopyPythonSources
#        MLIRPythonSources.Core
#        MLIRPythonSources.Dialects.func
        MLIRPythonSources
        MLIRPythonExtension.Core
        MLIRPythonExtension.RegisterEverything
        )

add_mlir_python_common_capi_library(LoopyMLIRAggregateCAPI
        INSTALL_COMPONENT LoopyMLIRPythonModules
        INSTALL_DESTINATION loopy_mlir/_mlir_libs
        OUTPUT_DIRECTORY "${LOOPY_MLIR_PYTHON_PACKAGES_DIR}/loopy/loopy_mlir/_mlir_libs"
        RELATIVE_INSTALL_ROOT "../../../.."
        DECLARED_SOURCES ${_source_components}
        )

add_mlir_python_modules(LoopyPythonModules
        ROOT_PREFIX "${LOOPY_MLIR_PYTHON_PACKAGES_DIR}/loopy/loopy_mlir"
        INSTALL_PREFIX "loopy_mlir"
        DECLARED_SOURCES ${_source_components}
        COMMON_CAPI_LINK_LIBS
        LoopyMLIRAggregateCAPI
        )

get_target_property(mlir_python_sources MLIRPythonExtension.Core INTERFACE_SOURCES)
list(LENGTH mlir_python_sources len)
list(FILTER mlir_python_sources INCLUDE REGEX "[a-z]+\\.h")
list(GET mlir_python_sources 0 HEADER)
get_filename_component(header_dir ${HEADER} DIRECTORY)
target_include_directories(LoopyPythonSources.Extension INTERFACE ${header_dir})

file(READ ${header_dir}/PybindUtils.h filedata)
file(WRITE ${header_dir}/PybindUtils.bkup.h "${filedata}")
string(REPLACE "template <typename T>
struct type_caster<llvm::Optional<T>> : optional_caster<llvm::Optional<T>> {}" "// typecaster" output "${filedata}")
file(WRITE ${header_dir}/PybindUtils.h "${output}")