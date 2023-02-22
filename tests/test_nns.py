from pathlib import Path

import numpy as np
import pytest

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir.runtime import unranked_memref_to_numpy
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import (
    LLVMJITBackend,
    elemental_type_to_ctype,
    memref_type_to_np_dtype,
)
from nelli.utils import mlir_mod_ctx, shlib_ext

c_runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_c_runner_utils.{shlib_ext()}"
)
assert c_runner_utils_lib_path.exists()
runner_utils_lib_path = (
    Path(_mlir_libs.__file__).parent / f"libmlir_runner_utils.{shlib_ext()}"
)
assert runner_utils_lib_path.exists()

from nelli.mlir._mlir import _mlir_libs

omp_lib_path = Path(_mlir_libs.__file__).parent / f"libomp.{shlib_ext()}"
assert omp_lib_path.exists()

here = Path(__file__).parent
RESNET18_SRC = open(here / "resnet18.mlir").read()
MOBILENET_V3_SMALL_SRC = open(here / "mobilenet_v3_small.mlir").read()
INCEPTION_V3_SRC = open(here / "inception_v3.mlir").read()


class TestNNs:
    backend = LLVMJITBackend(
        shared_libs=[str(c_runner_utils_lib_path), str(runner_utils_lib_path)]
    )

    def lower(self, module):
        return self.backend.compile(
            module,
            kernel_name="forward",
            pipeline=Pipeline()
            .FUNC()
            .refbackend_generalize_tensor_pad()
            .linalg_fuse_elementwise_ops()
            .CNUF()
            .bufferize()
            .FUNC()
            .refbackend_munge_memref_copy()
            .convert_linalg_to_loops()
            .lower_affine()
            .CNUF()
            .convert_scf_to_cf()
            .lower_to_openmp()
            .refbackend_munge_calling_conventions()
            .lower_to_llvm(),
            # enable_ir_printing=True
        )

    def test_resnet(self):
        with mlir_mod_ctx() as module:
            module = self.lower(module.parse(RESNET18_SRC))

        result = None

        def callback(*args):
            nonlocal result
            result = tuple(
                [
                    arg
                    if type in elemental_type_to_ctype
                    else unranked_memref_to_numpy(arg, memref_type_to_np_dtype[type])
                    for arg, type in zip(args, invoker.ret_types)
                ]
            )
            assert len(args) == 1
            result = result[0]

        invoker = self.backend.load(module, consume_return_func=callback)
        img = np.random.randn(1, 3, 64, 64).astype(np.float32)
        invoker.forward(img)
        assert np.unique(result)[0] != 0.5

    @pytest.mark.xfail(reason="last layer of net returning NaNs")
    def test_inception(self):
        with mlir_mod_ctx() as module:
            module = self.lower(module.parse(INCEPTION_V3_SRC))

        result = None

        def callback(*args):
            nonlocal result
            result = tuple(
                [
                    arg
                    if type in elemental_type_to_ctype
                    else unranked_memref_to_numpy(arg, memref_type_to_np_dtype[type])
                    for arg, type in zip(args, invoker.ret_types)
                ]
            )
            assert len(args) == 1
            result = result[0]

        invoker = self.backend.load(module, consume_return_func=callback)
        img = np.random.randint(low=0, high=10, size=(1, 3, 64, 64)).astype(np.float32)
        invoker.forward(img)
        assert np.unique(result)[0] != 0.5

    def test_mobilenet(self):
        with mlir_mod_ctx() as module:
            module = self.lower(module.parse(MOBILENET_V3_SMALL_SRC))

        result = None

        def callback(*args):
            nonlocal result
            result = tuple(
                [
                    arg
                    if type in elemental_type_to_ctype
                    else unranked_memref_to_numpy(arg, memref_type_to_np_dtype[type])
                    for arg, type in zip(args, invoker.ret_types)
                ]
            )
            assert len(args) == 1
            result = result[0]

        invoker = self.backend.load(module, consume_return_func=callback)
        img = np.random.randint(low=0, high=10, size=(1, 3, 64, 64)).astype(np.float32)
        invoker.forward(img)
        assert np.unique(result)[0] != 0.5
