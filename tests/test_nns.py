from pathlib import Path

import numpy as np

from nelli.mlir._mlir import _mlir_libs
from nelli.mlir._mlir.runtime import unranked_memref_to_numpy
from nelli.mlir.passes import Pipeline
from nelli.mlir.refbackend import (
    LLVMJITBackend,
    elemental_type_to_ctype,
    memref_type_to_np_dtype,
)
from nelli.mlir.transform import sequence, match, tile_linalg_to_scf_for
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

read_model_ir = lambda model_name: open(
    Path(__file__).parent / f"pytorch_nns/{model_name}.mlir"
).read()

BATCH_SIZE = 1
CHANNEL = 3
IMAGE_HEIGHT = 32
IMAGE_WIDTH = 32

example_32 = lambda: np.random.randn(BATCH_SIZE, CHANNEL, IMAGE_HEIGHT, IMAGE_WIDTH)
example_64 = lambda: np.random.randn(
    BATCH_SIZE, CHANNEL, 2 * IMAGE_HEIGHT, 2 * IMAGE_WIDTH
)
example_128 = lambda: np.random.randn(
    BATCH_SIZE, CHANNEL, 4 * IMAGE_HEIGHT, 4 * IMAGE_WIDTH
)
example_224 = lambda: np.random.randn(
    BATCH_SIZE, CHANNEL, 7 * IMAGE_HEIGHT, 7 * IMAGE_WIDTH
)
example_299 = lambda: np.random.randn(BATCH_SIZE, CHANNEL, 299, 299)


def basic_tile(target, *extra_args):
    m = match(target, ["linalg.matmul"])
    tiled = tile_linalg_to_scf_for(m, sizes=[2, 2])


class TestNNs:
    backend = LLVMJITBackend(
        shared_libs=[
            str(c_runner_utils_lib_path),
            str(runner_utils_lib_path),
            str(omp_lib_path),
        ]
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
            .CNUF()
            .transform_dialect_interpreter()
            .transform_dialect_erase_schedule()
            .FUNC()
            .convert_linalg_to_parallel_loops()
            .CNUF()
            .lower_to_openmp()
            .refbackend_munge_calling_conventions()
            .lower_to_llvm(),
            # enable_ir_printing=True
        )

    def alexnet(self):
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

        result = None
        with mlir_mod_ctx(read_model_ir("alexnet")) as module:
            sequence(basic_tile)

        module = self.lower(module)
        invoker = self.backend.load(module, consume_return_func=callback)
        invoker.forward(example_224().astype(np.float32))
        assert result is not None and not np.isnan(result).any()

    def convnext(self):
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

        for model in [
            # "convnext_base",
            "convnext_tiny",
            "convnext_small",
            # "convnext_large",
        ]:
            result = None
            with mlir_mod_ctx(read_model_ir(model)) as module:
                sequence(basic_tile)

            module = self.lower(module)
            invoker = self.backend.load(module, consume_return_func=callback)
            invoker.forward(example_32().astype(np.float32))
            assert result is not None and not np.isnan(result).any()

    def efficientnet(self):
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

        for model in [
            "efficientnet_b0",
            # "efficientnet_b1",
            # "efficientnet_b2",
            # "efficientnet_b3",
            # "efficientnet_b4",
            # "efficientnet_b5",
            # "efficientnet_b6",
            # "efficientnet_b7",
            # "efficientnet_v2_s",
            # "efficientnet_v2_m",
            # "efficientnet_v2_l",
        ]:
            result = None
            with mlir_mod_ctx(read_model_ir(model)) as module:
                sequence(basic_tile)

            module = self.lower(module)
            invoker = self.backend.load(module, consume_return_func=callback)
            invoker.forward(example_32().astype(np.float32))
            assert result is not None and not np.isnan(result).any()

    def googlenet(self):
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

        with mlir_mod_ctx(read_model_ir("googlenet")) as module:
            sequence(basic_tile)

        module = self.lower(module)
        invoker = self.backend.load(module, consume_return_func=callback)
        invoker.forward(example_32().astype(np.float32))
        assert result is not None and not np.isnan(result).any()

    def inception(self):
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

        with mlir_mod_ctx(read_model_ir("inception_v3")) as module:
            sequence(basic_tile)

        module = self.lower(module)
        invoker = self.backend.load(module, consume_return_func=callback)
        invoker.forward(example_299().astype(np.float32))
        assert result is not None and not np.isnan(result).any()

    def mnasnet(self):
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

        for model in [
            "mnasnet0_5",
            # "mnasnet0_75",
            # "mnasnet1_0",
            # "mnasnet1_3",
        ]:
            result = None
            with mlir_mod_ctx(read_model_ir(model)) as module:
                sequence(basic_tile)

            module = self.lower(module)
            invoker = self.backend.load(module, consume_return_func=callback)
            invoker.forward(example_32().astype(np.float32))
            assert result is not None and not np.isnan(result).any()

    def mobilenet(self):
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

        for model in [
            "mobilenet_v2",
            "mobilenet_v3_small",
            # "mobilenet_v3_large"
        ]:
            result = None
            with mlir_mod_ctx(read_model_ir(model)) as module:
                sequence(basic_tile)

            module = self.lower(module)
            invoker = self.backend.load(module, consume_return_func=callback)
            invoker.forward(example_32().astype(np.float32))
            assert result is not None and not np.isnan(result).any()

    def resnet(self):
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

        for model in [
            "resnet18",
            "resnet34",
            "resnet50",
            # "resnet101",
            # "resnet152",
            # "wide_resnet50_2",
            # "wide_resnet101_2",
        ]:
            result = None
            with mlir_mod_ctx(read_model_ir(model)) as module:
                sequence(basic_tile)

            module = self.lower(module)
            invoker = self.backend.load(module, consume_return_func=callback)
            invoker.forward(example_32().astype(np.float32))
            assert result is not None and not np.isnan(result).any()

    def squeezenet(self):
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

        for model in [
            "squeezenet1_0",
            # "squeezenet1_1"
        ]:
            result = None
            with mlir_mod_ctx(read_model_ir(model)) as module:
                sequence(basic_tile)

            module = self.lower(module)
            invoker = self.backend.load(module, consume_return_func=callback)
            invoker.forward(example_32().astype(np.float32))
            assert result is not None and not np.isnan(result).any()

    def vgg(self):
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

        for model in [
            "vgg11",
            "vgg11_bn",
            "vgg13",
            # "vgg13_bn",
            # "vgg16",
            # "vgg16_bn",
            # "vgg19",
            # "vgg19_bn",
        ]:
            result = None
            with mlir_mod_ctx(read_model_ir(model)) as module:
                sequence(basic_tile)

            module = self.lower(module)
            invoker = self.backend.load(module, consume_return_func=callback)
            invoker.forward(example_224().astype(np.float32))
            assert result is not None and not np.isnan(result).any()

    def test_quantize(self):
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

        for model in [
            "convnext_tiny",
            "efficientnet_b0",
            "googlenet",
            "mnasnet0_5",
            "mobilenet_v2",
            "resnet18",
            "squeezenet1_0",
        ]:
            with mlir_mod_ctx(read_model_ir(model)) as module:
                sequence(basic_tile)

            module = self.backend.compile(
                module,
                kernel_name="forward",
                pipeline=Pipeline().FUNC().linalg_fake_quantize(bits=32).CNUF(),
            )
            module = self.lower(module)
            invoker = self.backend.load(module, consume_return_func=callback)
            invoker.forward(example_224().astype(np.float32))
            assert result is not None and not np.isnan(result).any()
