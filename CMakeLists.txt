cmake_minimum_required(VERSION 3.13.4)

if (POLICY CMP0068)
    cmake_policy(SET CMP0068 NEW)
    set(CMAKE_BUILD_WITH_INSTALL_NAME_DIR ON)
endif ()

if (POLICY CMP0075)
    cmake_policy(SET CMP0075 NEW)
endif ()

if (POLICY CMP0077)
    cmake_policy(SET CMP0077 NEW)
endif ()

if (POLICY CMP0116)
    cmake_policy(SET CMP0116 NEW)
endif ()

project(PI LANGUAGES CXX C)

set(CMAKE_BUILD_WITH_INSTALL_NAME_DIR ON)

set(CMAKE_CXX_STANDARD 17 CACHE STRING "C++ standard to conform to")

if ("${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang")
    #    MESSAGE("Clang")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    execute_process(
            COMMAND ${Python3_EXECUTABLE} get_torch_mlir_pybind_v_abi.py
            WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/scripts
            ERROR_VARIABLE error
            OUTPUT_VARIABLE ABI_VERSION
    )
    if (NOT error STREQUAL "")
        message(STATUS "Torch-MLIR ABI Version ERROR: ${error}")
    endif ()
    message(STATUS "Torch-MLIR ABI Version: ${ABI_VERSION}")
    add_definitions("-fabi-version=${ABI_VERSION}")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")
    #    MESSAGE("Intel")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
    #    MESSAGE("MSVC")
endif ()

find_package(MLIR REQUIRED CONFIG)

message(STATUS "Using MLIRConfig.cmake in: ${MLIR_DIR}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

set(LLVM_RUNTIME_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/bin)
set(LLVM_LIBRARY_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/lib)
set(MLIR_BINARY_DIR ${CMAKE_BINARY_DIR})

list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(TableGen)
include(AddLLVM)
include(AddMLIR)
include(HandleLLVMOptions)

include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${MLIR_INCLUDE_DIRS})
link_directories(${LLVM_BUILD_LIBRARY_DIR})
add_definitions(${LLVM_DEFINITIONS})


add_executable(loopy main.cpp)
get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)

target_link_libraries(loopy
        ${dialect_libs}
        MLIRPresburger
        MLIRAffineAnalysis
        MLIRParser
        MLIRTransforms
        MLIRPass
        MLIRIR
        MLIRSupport
        LLVMSupport
        )