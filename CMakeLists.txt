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

project(loopy LANGUAGES CXX C)

set(CMAKE_BUILD_WITH_INSTALL_NAME_DIR ON)

set(CMAKE_CXX_STANDARD 17 CACHE STRING "C++ standard to conform to")

if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    set(MD5 0fc838d4399baf4533c0b2ee33a59fe6)
elseif (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    set(MD5 96c8e619850285c6dc2be3287843b48d)
else ()
    message(FATAL_ERROR "unknown system - no md5 hash")
endif ()

set(LLVM_INSTALL_DIR "" CACHE STRING "Path to LLVM install dir")
if (LLVM_INSTALL_DIR STREQUAL "")
    execute_process(COMMAND "${Python3_EXECUTABLE}" "${CMAKE_CURRENT_SOURCE_DIR}/setup.py" --llvm-url OUTPUT_VARIABLE LLVM_URL)
    include(FetchContent)
    FetchContent_Populate(
            MLIR
            URL "${LLVM_URL}"
            URL_HASH MD5=${MD5}
            SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/llvm_install"
    )
    list(APPEND CMAKE_PREFIX_PATH)
    set(LLVM_INSTALL_DIR "${CMAKE_CURRENT_SOURCE_DIR}/llvm_install")
endif ()
message(STATUS "LLVM_INSTALL_DIR: ${LLVM_INSTALL_DIR}")
list(APPEND CMAKE_PREFIX_PATH "${LLVM_INSTALL_DIR}")
find_package(MLIR REQUIRED CONFIG)

# TODO(max): this doesn't seem to have any effect; other assertions percolate up (but this own has disappeared?)
# even in release builds
# first_for_loop_operations[1].operation.operands[0].owner
# Assertion failed: (mlirOperationEqual(self.getParentOperation()->get(), mlirOpResultGetOwner(self.get())) &&
# "expected the owner of the value in Python to match that in " "the IR"), function operator(), file IRCore.cpp, line 3124.
#set(LLVM_ENABLE_ASSERTIONS OFF)
#set(LLVM_ENABLE_ABI_BREAKING_CHECKS OFF)

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

include(MLIRDetectPythonEnv)
set(MLIR_INCLUDE_TESTS 0)

add_subdirectory(cpp_ext)