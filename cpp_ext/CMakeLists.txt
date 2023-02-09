include(AddMLIRPython)
mlir_configure_python_dev_packages()
mlir_detect_pybind11_install()

set(LOOPY_MLIR_PYTHON_PACKAGES_DIR "${CMAKE_CURRENT_BINARY_DIR}/python_packages")

add_compile_definitions("MLIR_PYTHON_PACKAGE_PREFIX=loopy.loopy_mlir.")
declare_mlir_python_sources(LoopyPythonSources)

# TODO(max): figure out how to prevent cpps from being "installed"
#get_property(MLIR_D_LIBS GLOBAL PROPERTY MLIR_DIALECT_LIBS)
#get_property(MLIR_C_LIBS GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
#get_property(MLIR_T_LIBS GLOBAL PROPERTY MLIR_TRANSLATION_LIBS)
declare_mlir_python_extension(LoopyPythonSources.Extension
        MODULE_NAME _loopy_mlir
        ADD_TO_PARENT LoopyPythonSources
        SOURCES
        LoopyExtension.cpp
        LoopUtils.cpp
        AffineAnalysis.cpp

        PRIVATE_LINK_LIBS
        MLIRIR
        LLVMSupport
        MLIRIR
        MLIRPresburger
        MLIRAffineAnalysis
        )

get_target_property(mlir_python_sources MLIRPythonExtension.Core INTERFACE_SOURCES)
list(GET mlir_python_sources 0 HEADER)
get_filename_component(header_dir ${HEADER} DIRECTORY)
#list(FILTER mlir_python_sources INCLUDE REGEX "(IRAffine|IRAttributes|IRCore|IRInterfaces|IRModule|IRTypes|Pass|PybindUtils)\\.cpp")
list(FILTER mlir_python_sources INCLUDE REGEX "(PybindUtils)\\.cpp")
target_sources(LoopyPythonSources.Extension INTERFACE ${mlir_python_sources})
target_include_directories(LoopyPythonSources.Extension INTERFACE ${header_dir})

execute_process(COMMAND python ${CMAKE_SOURCE_DIR}/scripts/regex_mlir_bindings.py ${header_dir}/IRModule.h)
execute_process(COMMAND python ${CMAKE_SOURCE_DIR}/scripts/regex_mlir_bindings.py ${header_dir}/IRCore.cpp)
execute_process(COMMAND python ${CMAKE_SOURCE_DIR}/scripts/regex_mlir_bindings.py ${header_dir}/IRAffine.cpp)

set(_source_components
        MLIRPythonSources
        MLIRPythonExtension.Core
        MLIRPythonExtension.RegisterEverything
        LoopyPythonSources
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


file(READ "${MLIR_INCLUDE_DIRS}/mlir/Bindings/Python/PybindAdaptors.h" filedata)
file(WRITE "${MLIR_INCLUDE_DIRS}/mlir/Bindings/Python/PybindAdaptors.h.bkup" "${filedata}")
string(REPLACE "template <typename T>
struct type_caster<llvm::Optional<T>> : optional_caster<llvm::Optional<T>> {}" "// typecaster" output "${filedata}")
file(WRITE "${MLIR_INCLUDE_DIRS}/mlir/Bindings/Python/PybindAdaptors.h" "${output}")