# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
# Also available under a BSD-style license. See LICENSE.

import ctypes
from enum import Enum
from typing import Optional

import numpy as np

from ..utils import find_ops

from ..nelli_mlir.execution_engine import ExecutionEngine

from ..nelli_mlir.runtime import (
    UnrankedMemRefDescriptor,
    get_ranked_memref_descriptor,
)
from ..nelli_mlir.ir import Module, UnitAttr

from .utils import run_pipeline_with_repro_report


def assert_arg_type_is_supported(ty):
    SUPPORTED = [
        np.float16,
        np.float32,
        np.float64,
        np.uint8,
        np.int8,
        np.int32,
        np.int64,
        np.bool_,
    ]
    assert (
        ty in SUPPORTED
    ), f"Only numpy arrays with dtypes in {SUPPORTED} are supported, but got {ty}"


memref_type_to_np_dtype = {
    "mrf16": np.float16,
    "mrf32": np.float32,
    "mrf64": np.float64,
    "mri1": np.bool_,
    "mri8": np.int8,
    "mri32": np.int32,
    "mri64": np.int64,
}
elemental_type_to_ctype = {
    "i1": ctypes.c_bool,
    "i8": ctypes.c_byte,
    "i64": ctypes.c_int,
    "f32": ctypes.c_float,
    "f64": ctypes.c_double,
}

CONSUME_RETURN_FUNC_PREFIX = "refbackend_consume_func_return_"


def get_return_funcs(module):
    return_prefix_len = len(CONSUME_RETURN_FUNC_PREFIX)
    return_funcs = []
    with module.context:
        for func in module.body:
            # Returns strings of the form `"refbackend.."` so `"` is deleted.
            func_name = str(func.attributes["sym_name"]).replace('"', "")
            if func_name[:return_prefix_len] == CONSUME_RETURN_FUNC_PREFIX:
                return_funcs.append(func_name)

    return return_funcs


def get_ctype_func(func_name):
    return_prefix_len = len(CONSUME_RETURN_FUNC_PREFIX)
    ret_types = func_name[return_prefix_len:].split("_")
    ctypes_arg = [None]
    for type in ret_types:
        if type in elemental_type_to_ctype:
            ctypes_arg.append(elemental_type_to_ctype[type])
        elif type in memref_type_to_np_dtype:
            ctypes_arg.append(ctypes.POINTER(UnrankedMemRefDescriptor))
        else:
            assert False, f"Not supported type: {type}"

    return ctypes.CFUNCTYPE(*ctypes_arg), ret_types


# https://stackoverflow.com/a/68198336/9045206
CData = ctypes._SimpleCData.__mro__[-2]


class LLVMJITBackendInvoker:
    def __init__(self, module, opt_level=2, shared_libs=None):
        if shared_libs is None:
            shared_libs = []
        self.ee = ExecutionEngine(module, opt_level=opt_level, shared_libs=shared_libs)
        self.result = None

        # return_funcs = get_return_funcs(module)
        #
        # for ret_func in return_funcs:
        #     ctype_wrapper, ret_types = get_ctype_func(ret_func)
        #
        #     def consume_return_funcs(*args):
        #         self.result = tuple(
        #             [
        #                 arg
        #                 if type in elemental_type_to_ctype
        #                 else unranked_memref_to_numpy(
        #                     arg, memref_type_to_np_dtype[type]
        #                 )
        #                 for arg, type in zip(args, ret_types)
        #             ]
        #         )
        #         if len(self.result) == 1:
        #             self.result = self.result[0]
        #
        #     self.ee.register_runtime(ret_func, ctype_wrapper(consume_return_funcs))

    def __getattr__(self, function_name: str):
        def invoke(*args):
            ffi_args = []
            for arg in args:
                if isinstance(arg, CData):
                    ffi_args.append(arg)
                else:
                    assert_arg_type_is_supported(arg.dtype)
                    ffi_args.append(
                        ctypes.pointer(
                            ctypes.pointer(get_ranked_memref_descriptor(arg))
                        )
                    )

            self.ee.invoke(function_name, *ffi_args)
            # result = self.result
            # assert result is not None, "Invocation didn't produce a result"
            # self.result = None
            # return result

        return invoke


BUFFERIZE = [
    "func.func(scf-bufferize)",
    "func.func(empty-tensor-to-alloc-tensor)",
    "func.func(linalg-bufferize)",
    "func-bufferize",
    "arith-bufferize",
    "func.func(tensor-bufferize)",
    "func.func(finalizing-bufferize)",
    "func.func(buffer-deallocation)",
]

LOWER_TO_LLVM = [
    "cse",
    "func.func(lower-affine)",
    "func.func(arith-expand)",
    "func.func(convert-math-to-llvm)",
    "convert-math-to-libm",
    "convert-linalg-to-llvm",
    "expand-strided-metadata",
    "convert-memref-to-llvm",
    "convert-scf-to-cf",
    "convert-cf-to-llvm",
    "cse",
    "lower-affine",
    "func.func(convert-arith-to-llvm)",
    "convert-func-to-llvm",
    "canonicalize",
    "convert-openmp-to-llvm",
    "cse",
    "reconcile-unrealized-casts",
]


class LinalgLowering(Enum):
    # scf.for
    Loops = "convert-linalg-to-loops"
    Affine = "convert-linalg-to-affine-loops"
    # scf.parallel
    Parallel = "convert-linalg-to-parallel-loops"


class LLVMJITBackend:
    def __init__(
        self,
        shared_libs: Optional[list[str]] = None,
    ):
        if shared_libs is None:
            shared_libs = []
        self.shared_libs = shared_libs

    def compile(
        self,
        module: Module,
        kernel_name="main",
        bufferize=True,
        lower_loops=True,
        lower_to_openmp=False,
        lower_to_llvm=True,
        linalg_lowering=LinalgLowering.Loops,
    ):
        def cb(op):
            try:
                return kernel_name == op.opview.sym_name.value
            except:
                return False

        pipeline = []
        if bufferize:
            pipeline += BUFFERIZE
        if lower_loops:
            pipeline += [f"func.func({linalg_lowering.value})"]
        if lower_to_openmp:
            pipeline += ["convert-scf-to-openmp", "func.func(lower-affine)"]
        if lower_to_llvm:
            kernel_func = find_ops(module, cb)
            assert len(kernel_func) == 1, f"kernel func {kernel_func} not found"
            kernel_func[0].attributes["llvm.emit_c_interface"] = UnitAttr.get()
            pipeline += LOWER_TO_LLVM

        pipeline_str = "builtin.module(" + ",".join(pipeline) + ")"
        run_pipeline_with_repro_report(
            module,
            pipeline_str,
            "Lowering Linalg-on-Tensors IR to LLVM with RefBackend",
            enable_ir_printing=False,
        )
        return module

    def load(self, module, opt_level=2) -> LLVMJITBackendInvoker:
        return LLVMJITBackendInvoker(module, opt_level, self.shared_libs)
