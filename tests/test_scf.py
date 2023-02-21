import ctypes
from pathlib import Path
from textwrap import dedent

import numpy as np
from scipy import signal

from nelli import F32
from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir.dialects import linalg
from nelli.mlir.func import mlir_func
from nelli.mlir.memref import MemRefValue as MemRef
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import (
    LLVMJITBackend,
)
from nelli.utils import mlir_mod_ctx, shlib_ext
from util import check_correct

c_runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_c_runner_utils.{shlib_ext()}"
)
assert c_runner_utils_lib_path.exists()
runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_runner_utils.{shlib_ext()}"
)
assert runner_utils_lib_path.exists()

omp_lib_path = Path(_mlir_libs.__file__).parent / f"libomp.{shlib_ext()}"
assert omp_lib_path.exists()


class TestSCF:
    backend = LLVMJITBackend(
        shared_libs=[
            str(c_runner_utils_lib_path),
            str(runner_utils_lib_path),
            str(omp_lib_path),
        ]
    )

    def test_basic(self):
        with mlir_mod_ctx() as module:
            module = module.parse(
                dedent(
                    """\
            func.func @parallel_loop(
                %arg0 : index, %arg1 : index, %arg2 : index,
                %arg3 : index, %arg4 : index, %arg5 : index,
                %A: memref<?x?xf32>, %B: memref<?x?xf32>,
                %C: memref<?x?xf32>, %result: memref<?x?xf32>
            ) {
              scf.parallel (%i0, %i1) = (%arg0, %arg1) to (%arg2, %arg3) step (%arg4, %arg5) {
                %B_elem = memref.load %B[%i0, %i1] : memref<?x?xf32>
                %C_elem = memref.load %C[%i0, %i1] : memref<?x?xf32>
                %sum_elem = arith.addf %B_elem, %C_elem : f32
                memref.store %sum_elem, %result[%i0, %i1] : memref<?x?xf32>
              }
              return
            }
            """
                )
            )

        module = self.backend.compile(
            module,
            kernel_name="parallel_loop",
            pipeline=Pipeline()
            .func()
            .scf_parallel_loop_tiling(parallel_loop_tile_sizes=(1, 4)),
        )
        correct = dedent(
            """\
        #map = affine_map<(d0, d1, d2) -> (d0, d1 - d2)>
        module {
          func.func @parallel_loop(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: memref<?x?xf32>, %arg7: memref<?x?xf32>, %arg8: memref<?x?xf32>, %arg9: memref<?x?xf32>) {
            %c0 = arith.constant 0 : index
            %c1 = arith.constant 1 : index
            %c4 = arith.constant 4 : index
            %0 = arith.muli %arg4, %c1 : index
            %1 = arith.muli %arg5, %c4 : index
            scf.parallel (%arg10, %arg11) = (%arg0, %arg1) to (%arg2, %arg3) step (%0, %1) {
              %2 = affine.min #map(%0, %arg2, %arg10)
              %3 = affine.min #map(%1, %arg3, %arg11)
              scf.parallel (%arg12, %arg13) = (%c0, %c0) to (%2, %3) step (%arg4, %arg5) {
                %4 = arith.addi %arg12, %arg10 : index
                %5 = arith.addi %arg13, %arg11 : index
                %6 = memref.load %arg7[%4, %5] : memref<?x?xf32>
                %7 = memref.load %arg8[%4, %5] : memref<?x?xf32>
                %8 = arith.addf %6, %7 : f32
                memref.store %8, %arg9[%4, %5] : memref<?x?xf32>
                scf.yield
              }
              scf.yield
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_lower_tiled_parallel_to_omp(self):
        with mlir_mod_ctx() as module:
            module = module.parse(
                dedent(
                    """\
            func.func @parallel_loop(
                %arg0 : index, %arg1 : index, %arg2 : index,
                %arg3 : index, %arg4 : index, %arg5 : index,
                %A: memref<?x?xf32>, %B: memref<?x?xf32>,
                %C: memref<?x?xf32>, %result: memref<?x?xf32>
            ) {
              scf.parallel (%i0, %i1) = (%arg0, %arg1) to (%arg2, %arg3) step (%arg4, %arg5) {
                %B_elem = memref.load %B[%i0, %i1] : memref<?x?xf32>
                %C_elem = memref.load %C[%i0, %i1] : memref<?x?xf32>
                %sum_elem = arith.addf %B_elem, %C_elem : f32
                memref.store %sum_elem, %result[%i0, %i1] : memref<?x?xf32>
              }
              return
            }
            """
                )
            )

        module = self.backend.compile(
            module,
            kernel_name="parallel_loop",
            pipeline=Pipeline()
            .func()
            .scf_parallel_loop_tiling(parallel_loop_tile_sizes=(1, 4))
            .cnuf()
            .lower_to_openmp(),
        )
        correct = dedent(
            """\
        module {
          func.func @parallel_loop(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: memref<?x?xf32>, %arg7: memref<?x?xf32>, %arg8: memref<?x?xf32>, %arg9: memref<?x?xf32>) {
            %c0 = arith.constant 0 : index
            %c1 = arith.constant 1 : index
            %c4 = arith.constant 4 : index
            %0 = arith.muli %arg5, %c4 : index
            %1 = llvm.mlir.constant(1 : i64) : i64
            omp.parallel   {
              omp.wsloop   for  (%arg10, %arg11) : index = (%arg0, %arg1) to (%arg2, %arg3) step (%arg4, %0) {
                memref.alloca_scope  {
                  %c-1 = arith.constant -1 : index
                  %2 = arith.muli %arg10, %c-1 : index
                  %3 = arith.addi %arg2, %2 : index
                  %4 = arith.cmpi slt, %arg4, %3 : index
                  %5 = arith.select %4, %arg4, %3 : index
                  %c-1_0 = arith.constant -1 : index
                  %6 = arith.muli %arg11, %c-1_0 : index
                  %7 = arith.addi %arg3, %6 : index
                  %8 = arith.cmpi slt, %0, %7 : index
                  %9 = arith.select %8, %0, %7 : index
                  %10 = llvm.mlir.constant(1 : i64) : i64
                  omp.parallel   {
                    omp.wsloop   for  (%arg12, %arg13) : index = (%c0, %c0) to (%5, %9) step (%arg4, %arg5) {
                      memref.alloca_scope  {
                        %11 = arith.addi %arg12, %arg10 : index
                        %12 = arith.addi %arg13, %arg11 : index
                        %13 = memref.load %arg7[%11, %12] : memref<?x?xf32>
                        %14 = memref.load %arg8[%11, %12] : memref<?x?xf32>
                        %15 = arith.addf %13, %14 : f32
                        memref.store %15, %arg9[%11, %12] : memref<?x?xf32>
                      }
                      omp.yield
                    }
                    omp.terminator
                  }
                }
                omp.yield
              }
              omp.terminator
            }
            return
          }
        }
        """
        )
        check_correct(correct, module)

    def test_lower_tiled_parallel_to_omp_runtime(self):
        with mlir_mod_ctx() as module:
            module = module.parse(
                dedent(
                    """\
            func.func @parallel_loop(
                %arg0 : index, %arg1 : index, 
                %arg2 : index, %arg3 : index, 
                %arg4 : index, %arg5 : index,
                %B: memref<?x?xf32>, %C: memref<?x?xf32>, %result: memref<?x?xf32>
            ) {
              scf.parallel (%i0, %i1) = (%arg0, %arg1) to (%arg2, %arg3) step (%arg4, %arg5) {
                %B_elem = memref.load %B[%i0, %i1] : memref<?x?xf32>
                %C_elem = memref.load %C[%i0, %i1] : memref<?x?xf32>
                %sum_elem = arith.addf %B_elem, %C_elem : f32
                memref.store %sum_elem, %result[%i0, %i1] : memref<?x?xf32>
              }
              return
            }
            """
                )
            )

        module = self.backend.compile(
            module,
            kernel_name="parallel_loop",
            pipeline=Pipeline()
            .bufferize()
            .func()
            .scf_parallel_loop_tiling(parallel_loop_tile_sizes=(1, 4))
            .cnuf()
            .lower_to_openmp()
            .lower_to_llvm(),
        )
        invoker = self.backend.load(module)

        c_int_p = ctypes.c_int64 * 1
        B = np.random.randint(low=0, high=10, size=(10, 10)).astype(np.float32)
        C = np.random.randint(low=0, high=4, size=(10, 10)).astype(np.float32)
        output = np.zeros_like(C).astype(np.float32)
        zero = c_int_p(0)
        one = c_int_p(1)
        ten = c_int_p(10)
        invoker.parallel_loop(zero, zero, ten, ten, one, one, B, C, output)
        assert np.allclose(B + C, output)

    def test_linalg_running1(self):
        h = w = 12
        k = 3
        with mlir_mod_ctx() as module:

            @mlir_func
            def conv2d(
                input: MemRef[(1, 1, h, w), F32],
                kernel: MemRef[(1, 1, k, k), F32],
                output: MemRef[(1, 1, h - 2, w - 2), F32],
            ):
                linalg.conv_2d_nchw_fchw(input, kernel, outs=[output])
                return None

        module = self.backend.compile(
            module,
            kernel_name="conv2d",
            pipeline=Pipeline()
            .bufferize()
            .func()
            .convert_linalg_to_parallel_loops()
            .scf_parallel_loop_tiling(parallel_loop_tile_sizes=(1, 4))
            .cnuf()
            .lower_to_openmp()
            .lower_to_llvm(),
        )
        invoker = self.backend.load(module)
        input = np.random.randint(low=0, high=10, size=(1, 1, h, w)).astype(np.float32)
        kernel = np.random.randint(low=0, high=4, size=(1, 1, 3, 3)).astype(np.float32)
        output = np.zeros((1, 1, h - 2, w - 2)).astype(np.float32)
        invoker.conv2d(input, kernel, output)
        correct = signal.correlate(input.squeeze(), kernel.squeeze(), mode="valid")
        assert np.allclose(output.squeeze(), correct)
