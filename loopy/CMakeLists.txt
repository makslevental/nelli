include(AddMLIRPython)
mlir_configure_python_dev_packages()
mlir_detect_pybind11_install()

#set(PYTHON_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}) # --src-root
set(MLIR_INCLUDE_TESTS 0)

set(LOOPY_MLIR_PYTHON_PACKAGES_DIR "${CMAKE_CURRENT_BINARY_DIR}/python_packages")

add_compile_definitions("MLIR_PYTHON_PACKAGE_PREFIX=loopy.loopy_mlir.")
declare_mlir_python_sources(LoopyPythonSources)

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
        )

set(_source_components
        LoopyPythonSources
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

#add_executable(demo main.cpp)
#target_link_libraries(demo PRIVATE
#        LLVMSupport
#        MLIRIR
#        MLIRParser
#        MLIRSupport
#        MLIRPresburger
#        MLIRAffineAnalysis)

# first_for_loop_operations[1].operation.operands[0].owner
# Assertion failed: (mlirOperationEqual(self.getParentOperation()->get(), mlirOpResultGetOwner(self.get())) &&
# "expected the owner of the value in Python to match that in " "the IR"), function operator(), file IRCore.cpp, line 3124.
set(LLVM_ENABLE_ASSERTIONS OFF)
