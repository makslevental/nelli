import ctypes
import platform
from pathlib import Path
from textwrap import dedent

import numpy as np
import pytest

from nelli.mlir._mlir import _mlir_libs

from nelli.mlir.utils import F32, F64, Index
from nelli.mlir._mlir.execution_engine import ExecutionEngine
from nelli.mlir._mlir.runtime import get_ranked_memref_descriptor

from nelli.mlir.memref import (
    MemRefValue as MemRef,
    cast,
    UnrankedMemRefValue as UnrankedMemRef,
)
from nelli.mlir.arith import constant
from nelli.mlir.func import mlir_func
from nelli.mlir.gpu import host_register
from nelli.mlir.refbackend import LLVMJITBackend, Pipeline
from nelli.poly.affine import ForOp
from nelli.utils import mlir_gc, shlib_ext
from nelli.utils import mlir_mod_ctx, find_ops
from util import check_correct

c_runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_c_runner_utils.{shlib_ext()}"
)
assert c_runner_utils_lib_path.exists()
runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_runner_utils.{shlib_ext()}"
)
assert runner_utils_lib_path.exists()

vulkan_wrapper_library_path = (
    Path(_mlir_libs.__file__).parent / f"libvulkan-runtime-wrappers.{shlib_ext()}"
)
assert vulkan_wrapper_library_path.exists()

shared_libs = [
    str(vulkan_wrapper_library_path),
    str(runner_utils_lib_path),
    str(c_runner_utils_lib_path),
]

if platform.system() == "Linux" and platform.processor() == "x86_64":
    cuda_wrapper_library_path = (
        Path(_mlir_libs.__file__).parent / f"libmlir_cuda_runtime.{shlib_ext()}"
    )
    assert cuda_wrapper_library_path.exists()
    shared_libs.append(str(cuda_wrapper_library_path))


class TestLoops:
    backend = LLVMJITBackend(shared_libs=shared_libs)

    def test_unroll(self):
        mlir_gc()
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=True)
            def single_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                for i in range(1, 10, 1):
                    v = mem[i, 0]
                    w = v * two
                    mem[i, 0] = w

        fors = find_ops(module, lambda op: op.name == "affine.for")
        assert len(fors) == 1
        for_op = ForOp(fors[0])

        def annotator(i, op):
            return None

        for_op.unroll_by_factor(5, annotator)

        # print(module)

        correct = dedent(
            """\
        #map = affine_map<(d0) -> (d0 + 1)>
        #map1 = affine_map<(d0) -> (d0 + 2)>
        #map2 = affine_map<(d0) -> (d0 + 3)>
        #map3 = affine_map<(d0) -> (d0 + 4)>
        module {
          func.func @single_loop(%arg0: index, %arg1: index) {
            %c1 = arith.constant 1 : index
            %cst = arith.constant 1.000000e+00 : f64
            %alloca = memref.alloca() : memref<10x10xf64>
            %c0 = arith.constant 0 : index
            %0 = memref.load %alloca[%c1, %c0] : memref<10x10xf64>
            %1 = arith.mulf %0, %cst : f64
            %c0_0 = arith.constant 0 : index
            memref.store %1, %alloca[%c1, %c0_0] : memref<10x10xf64>
            %2 = affine.apply #map(%c1)
            %c0_1 = arith.constant 0 : index
            %3 = memref.load %alloca[%2, %c0_1] : memref<10x10xf64>
            %4 = arith.mulf %3, %cst : f64
            %c0_2 = arith.constant 0 : index
            memref.store %4, %alloca[%2, %c0_2] : memref<10x10xf64>
            %5 = affine.apply #map1(%c1)
            %c0_3 = arith.constant 0 : index
            %6 = memref.load %alloca[%5, %c0_3] : memref<10x10xf64>
            %7 = arith.mulf %6, %cst : f64
            %c0_4 = arith.constant 0 : index
            memref.store %7, %alloca[%5, %c0_4] : memref<10x10xf64>
            %8 = affine.apply #map2(%c1)
            %c0_5 = arith.constant 0 : index
            %9 = memref.load %alloca[%8, %c0_5] : memref<10x10xf64>
            %10 = arith.mulf %9, %cst : f64
            %c0_6 = arith.constant 0 : index
            memref.store %10, %alloca[%8, %c0_6] : memref<10x10xf64>
            %11 = affine.apply #map3(%c1)
            %c0_7 = arith.constant 0 : index
            %12 = memref.load %alloca[%11, %c0_7] : memref<10x10xf64>
            %13 = arith.mulf %12, %cst : f64
            %c0_8 = arith.constant 0 : index
            memref.store %13, %alloca[%11, %c0_8] : memref<10x10xf64>
            affine.for %arg2 = 6 to 10 {
              %c0_9 = arith.constant 0 : index
              %14 = memref.load %alloca[%arg2, %c0_9] : memref<10x10xf64>
              %15 = arith.mulf %14, %cst : f64
              %c0_10 = arith.constant 0 : index
              memref.store %15, %alloca[%arg2, %c0_10] : memref<10x10xf64>
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)
        mlir_gc()

    def test_inner_unroll(self):
        mlir_gc()
        with mlir_mod_ctx() as module:

            @mlir_func(rewrite_ast_=True)
            def double_loop(M: Index, N: Index):
                two = constant(1.0)
                mem = MemRef.alloca([10, 10], F64)
                for i in range(1, 10, 1):
                    for j in range(1, 10, 1):
                        v = mem[i, j]
                        w = v * two
                        mem[i, j] = w

        fors = find_ops(module, lambda op: op.name == "affine.for")
        assert len(fors) == 2
        for_op = ForOp(fors[1])
        for_op.unroll_by_factor(5)

        # print(module)

        correct = dedent(
            """\
            #map = affine_map<(d0) -> (d0 + 1)>
            #map1 = affine_map<(d0) -> (d0 + 2)>
            #map2 = affine_map<(d0) -> (d0 + 3)>
            #map3 = affine_map<(d0) -> (d0 + 4)>
            module {
              func.func @double_loop(%arg0: index, %arg1: index) {
                %c1 = arith.constant 1 : index
                %cst = arith.constant 1.000000e+00 : f64
                %alloca = memref.alloca() : memref<10x10xf64>
                affine.for %arg2 = 1 to 10 {
                  %0 = memref.load %alloca[%arg2, %c1] : memref<10x10xf64>
                  %1 = arith.mulf %0, %cst : f64
                  memref.store %1, %alloca[%arg2, %c1] : memref<10x10xf64>
                  %2 = affine.apply #map(%c1)
                  %3 = memref.load %alloca[%arg2, %2] : memref<10x10xf64>
                  %4 = arith.mulf %3, %cst : f64
                  memref.store %4, %alloca[%arg2, %2] : memref<10x10xf64>
                  %5 = affine.apply #map1(%c1)
                  %6 = memref.load %alloca[%arg2, %5] : memref<10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  memref.store %7, %alloca[%arg2, %5] : memref<10x10xf64>
                  %8 = affine.apply #map2(%c1)
                  %9 = memref.load %alloca[%arg2, %8] : memref<10x10xf64>
                  %10 = arith.mulf %9, %cst : f64
                  memref.store %10, %alloca[%arg2, %8] : memref<10x10xf64>
                  %11 = affine.apply #map3(%c1)
                  %12 = memref.load %alloca[%arg2, %11] : memref<10x10xf64>
                  %13 = arith.mulf %12, %cst : f64
                  memref.store %13, %alloca[%arg2, %11] : memref<10x10xf64>
                  affine.for %arg3 = 6 to 10 {
                    %14 = memref.load %alloca[%arg2, %arg3] : memref<10x10xf64>
                    %15 = arith.mulf %14, %cst : f64
                    memref.store %15, %alloca[%arg2, %arg3] : memref<10x10xf64>
                  }
                }
                return
              }
            }
            """
        )
        check_correct(correct, module)
        mlir_gc()

    def test_skewing(self):
        mlir_gc()
        with mlir_mod_ctx() as module:

            @mlir_func
            def matmul(
                A: MemRef[(16, 16), F32],
                B: MemRef[(16, 16), F32],
                C: MemRef[(16, 16), F32],
            ):
                D = MemRef.alloca((32, 32), F32)
                E = MemRef.alloca((32, 32), F32)
                for i in range(0, 16):
                    for j in range(0, 16):
                        for k in range(0, 16):
                            a = A[i, k]
                            b = B[k, j]
                            C[i, j] += a * b
                            d = D[1, 1]
                            e = E[1, 1]
                            f = d + e

        for_ops = find_ops(module, lambda o: o.name == "affine.for")
        assert len(for_ops) == 3
        for_op = ForOp(for_ops[2])
        shifts = [1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4]
        for_op.skew(shifts)
        # module.operation.print(assume_verified=True, print_generic_op_form=True)
        correct = """\
        #map = affine_map<(d0) -> (d0 - 1)>
        #map1 = affine_map<(d0) -> (d0 - 4)>
        module {
          func.func @matmul(%arg0: memref<16x16xf32>, %arg1: memref<16x16xf32>, %arg2: memref<16x16xf32>) {
            %alloca = memref.alloca() : memref<32x32xf32>
            %alloca_0 = memref.alloca() : memref<32x32xf32>
            affine.for %arg3 = 0 to 16 {
              affine.for %arg4 = 0 to 16 {
                affine.for %arg5 = 1 to 4 {
                  %0 = affine.apply #map(%arg5)
                  %1 = memref.load %arg0[%arg3, %0] : memref<16x16xf32>
                  %2 = memref.load %arg1[%0, %arg4] : memref<16x16xf32>
                  %3 = memref.load %arg2[%arg3, %arg4] : memref<16x16xf32>
                  %4 = arith.mulf %1, %2 : f32
                  %5 = arith.addf %3, %4 : f32
                  memref.store %5, %arg2[%arg3, %arg4] : memref<16x16xf32>
                }
                affine.for %arg5 = 4 to 17 {
                  %0 = affine.apply #map(%arg5)
                  %1 = memref.load %arg0[%arg3, %0] : memref<16x16xf32>
                  %2 = memref.load %arg1[%0, %arg4] : memref<16x16xf32>
                  %3 = memref.load %arg2[%arg3, %arg4] : memref<16x16xf32>
                  %4 = arith.mulf %1, %2 : f32
                  %5 = arith.addf %3, %4 : f32
                  memref.store %5, %arg2[%arg3, %arg4] : memref<16x16xf32>
                  %6 = affine.apply #map1(%arg5)
                  %c1 = arith.constant 1 : index
                  %c1_1 = arith.constant 1 : index
                  %7 = memref.load %alloca[%c1, %c1_1] : memref<32x32xf32>
                  %c1_2 = arith.constant 1 : index
                  %c1_3 = arith.constant 1 : index
                  %8 = memref.load %alloca_0[%c1_2, %c1_3] : memref<32x32xf32>
                  %9 = arith.addf %7, %8 : f32
                }
                affine.for %arg5 = 17 to 20 {
                  %0 = affine.apply #map1(%arg5)
                  %c1 = arith.constant 1 : index
                  %c1_1 = arith.constant 1 : index
                  %1 = memref.load %alloca[%c1, %c1_1] : memref<32x32xf32>
                  %c1_2 = arith.constant 1 : index
                  %c1_3 = arith.constant 1 : index
                  %2 = memref.load %alloca_0[%c1_2, %c1_3] : memref<32x32xf32>
                  %3 = arith.addf %1, %2 : f32
                }
              }
            }
            return
          }
        }
        """
        check_correct(correct, module)

        module = self.backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline().bufferize().lower_to_llvm(),
        )

        A = np.random.randint(low=0, high=10, size=(16, 16)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(16, 16)).astype(np.float32)
        C = np.zeros_like(B).astype(np.float32)

        A_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(A)))
        B_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(B)))
        C_ptr = ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(C)))

        execution_engine = ExecutionEngine(module)
        execution_engine.invoke("matmul", A_ptr, B_ptr, C_ptr)
        c = A @ B
        # print(c, C)
        assert np.allclose(c, C)
        mlir_gc()

    @pytest.mark.xfail()
    def test_gpu(self):
        with mlir_mod_ctx() as module:
            M, N, K = 4, 16, 8
            unranked_memref = UnrankedMemRef[F32]

            @mlir_func
            def matmul(
                A: MemRef[(M, N), F32],
                B: MemRef[(N, K), F32],
                C: MemRef[(M, K), F32],
            ):
                host_register(cast(A, unranked_memref.mlir_type))
                host_register(cast(B, unranked_memref.mlir_type))
                host_register(cast(C, unranked_memref.mlir_type))

                for i in range(0, M):
                    for k in range(0, K):
                        for j in range(0, N):
                            a = A[i, j]
                            b = B[j, k]
                            C[i, k] += a * b

        module = self.backend.compile(
            module,
            kernel_name="matmul",
            pipeline=Pipeline()
            .bufferize()
            .FUNC()
            .convert_affine_for_to_gpu(gpu_block_dims=1, gpu_thread_dims=1)
            .lower_affine()
            .convert_scf_to_cf()
            .cse()
            .CNUF()
            .gpu_kernel_outlining()
            .GPU()
            .strip_debuginfo()
            .convert_gpu_to_nvvm()
            .gpu_to_cubin(chip="sm_70")
            .UPG()
            .gpu_to_llvm(),
        )
        invoker = self.backend.load(module)
        A = np.random.randint(low=0, high=10, size=(M, N)).astype(np.float32)
        B = np.random.randint(low=0, high=10, size=(N, K)).astype(np.float32)
        C = np.zeros((M, K)).astype(np.float32)
        invoker.matmul(A, B, C)
        assert np.allclose(A @ B, C)
