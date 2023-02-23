import os
import re

import numpy as np
import torch
import torch_mlir
import torchvision.models as models

OUTDIR = "pytorch_nns/"

os.makedirs(OUTDIR, exist_ok=True)


def get_module_as_str(module):
    return module.operation.get_asm(large_elements_limit=10)


def make(name, model, example, use_tracing=False, debug=False):
    print("Building " + name + "...")
    with torch.no_grad():
        model.eval()

    module = torch_mlir.compile(
        model,
        example,
        use_tracing=use_tracing,
        output_type=torch_mlir.OutputType.LINALG_ON_TENSORS,
    )

    print("Built " + name + "!")
    with open(OUTDIR + name + ".mlir", "w") as f:
        module_str = get_module_as_str(module).replace(
            "ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>\n",
            "",
        )
        module_str = re.sub(
            "dense_resource<__elided__>",
            lambda x: f"dense<{np.random.randn() / 100:.6f}e+00>",
            module_str,
        )
        f.write(module_str)


# List of models: https://pytorch.org/vision/stable/models.html#classification
# Models not working yet:
#   MaxVit : Some operatons not supported
#   RegNet : shapes not propogated fully
#   ResNeXt : shapes not propogated fully
#   ShuffleNetV2 : aten.chunk not supported
#   SwinTransformer : Prim.List problems
#   VisionTransformer : Crashes torch-mlir

BATCH_SIZE = 1
CHANNEL = 3
IMAGE_HEIGHT = 32
IMAGE_WIDTH = 32

example_32 = torch.randn(BATCH_SIZE, CHANNEL, IMAGE_HEIGHT, IMAGE_WIDTH)
example_64 = torch.randn(BATCH_SIZE, CHANNEL, 2 * IMAGE_HEIGHT, 2 * IMAGE_WIDTH)
example_128 = torch.randn(BATCH_SIZE, CHANNEL, 4 * IMAGE_HEIGHT, 4 * IMAGE_WIDTH)
example_224 = torch.randn(BATCH_SIZE, CHANNEL, 7 * IMAGE_HEIGHT, 7 * IMAGE_WIDTH)

# Alexnet
make("alexnet", models.alexnet(), example_224)

# ConvNeXt
make("convnext_base", models.convnext_base(), example_32, use_tracing=True)
make("convnext_tiny", models.convnext_tiny(), example_32, use_tracing=True)
make("convnext_small", models.convnext_small(), example_32, use_tracing=True)
make("convnext_large", models.convnext_large(), example_32, use_tracing=True)

# DenseNet
make("densenet121", models.densenet121(), example_32, use_tracing=True)
make("densenet161", models.densenet161(), example_32, use_tracing=True)
make("densenet169", models.densenet169(), example_32, use_tracing=True)
make("densenet201", models.densenet201(), example_32, use_tracing=True)

# EfficientNet
make("efficientnet_b0", models.efficientnet_b0(), example_32, use_tracing=True)
make("efficientnet_b1", models.efficientnet_b1(), example_32, use_tracing=True)
make("efficientnet_b2", models.efficientnet_b2(), example_32, use_tracing=True)
make("efficientnet_b3", models.efficientnet_b3(), example_32, use_tracing=True)
make("efficientnet_b4", models.efficientnet_b4(), example_32, use_tracing=True)
make("efficientnet_b5", models.efficientnet_b5(), example_32, use_tracing=True)
make("efficientnet_b6", models.efficientnet_b6(), example_32, use_tracing=True)
make("efficientnet_b7", models.efficientnet_b7(), example_32, use_tracing=True)

# EfficientNetV2
make("efficientnet_v2_s", models.efficientnet_v2_s(), example_32, use_tracing=True)
make("efficientnet_v2_m", models.efficientnet_v2_m(), example_32, use_tracing=True)
make("efficientnet_v2_l", models.efficientnet_v2_l(), example_32, use_tracing=True)

# GoogLeNet
make("googlenet", models.googlenet(), example_32, use_tracing=True)

# InceptionV3
# Expects 299x299 images
inceptionv3_example = torch.randn(BATCH_SIZE, CHANNEL, 299, 299)
make("inception_v3", models.inception_v3(), inceptionv3_example, use_tracing=True)

# MaxVit : Some operatons not supported

# MNASNet
make("mnasnet0_5", models.mnasnet0_5(), example_32, use_tracing=True)
make("mnasnet0_75", models.mnasnet0_75(), example_32, use_tracing=True)
make("mnasnet1_0", models.mnasnet1_0(), example_32, use_tracing=True)
make("mnasnet1_3", models.mnasnet1_3(), example_32, use_tracing=True)

# MobileNetV2
make("mobilenet_v2", models.mobilenet_v2(), example_32)

# MobileNetV3
make("mobilenet_v3_small", models.mobilenet_v3_small(), example_32)
make("mobilenet_v3_large", models.mobilenet_v3_large(), example_32)

# # RegNet : shapes not propogated fully
# make("regnet_x_400mf", models.regnet_x_400mf(), example, use_tracing=True)
# make("regnet_x_800mf", models.regnet_x_800mf(), example, use_tracing=True)
# make("regnet_x_1_6gf", models.regnet_x_1_6gf(), example, use_tracing=True)
# make("regnet_x_3_2gf", models.regnet_x_3_2gf(), example, use_tracing=True)
# make("regnet_x_8gf", models.regnet_x_8gf(), example, use_tracing=True)
# make("regnet_x_16gf", models.regnet_x_16gf(), example, use_tracing=True)
# make("regnet_x_32gf", models.regnet_x_32gf(), example, use_tracing=True)
# make("regnet_x_40gf", models.regnet_x_8gf(), example, use_tracing=True)
# make("regnet_y_400mf", models.regnet_y_400mf(), example, use_tracing=True)
# make("regnet_y_800mf", models.regnet_y_800mf(), example, use_tracing=True)
# make("regnet_y_1_6gf", models.regnet_y_1_6gf(), example, use_tracing=True)
# make("regnet_y_3_2gf", models.regnet_y_3_2gf(), example, use_tracing=True)
# make("regnet_y_8gf", models.regnet_y_8gf(), example, use_tracing=True)
# make("regnet_y_16gf", models.regnet_y_16gf(), example, use_tracing=True)
# make("regnet_y_32gf", models.regnet_y_32gf(), example, use_tracing=True)

# ResNet
make("resnet18", models.resnet18(), example_32, use_tracing=True)
make("resnet34", models.resnet34(), example_32, use_tracing=True)
make("resnet50", models.resnet50(), example_32, use_tracing=True)
make("resnet101", models.resnet101(), example_32, use_tracing=True)
make("resnet152", models.resnet152(), example_32, use_tracing=True)

# # ResNeXt : shapes not propogated fully
# make("resnext50_32x4d", models.resnext50_32x4d(), example, use_tracing=True)
# make("resnext101_32x8d", models.resnext101_32x8d(), example, use_tracing=True)
# make("resnext101_64x4d", models.resnext101_64x4d(), example, use_tracing=True)

# ShuffleNetV2 : aten.chunk not supported

# SqueezeNet
make("squeezenet1_0", models.squeezenet1_0(), example_32, use_tracing=True)
make("squeezenet1_1", models.squeezenet1_1(), example_32, use_tracing=True)

# SwinTransformer : Prim.List problems

# VGG
make("vgg11", models.vgg11(), example_224, use_tracing=True)
make("vgg11_bn", models.vgg11_bn(), example_224, use_tracing=True)
make("vgg13", models.vgg13(), example_224, use_tracing=True)
make("vgg13_bn", models.vgg13_bn(), example_224, use_tracing=True)
make("vgg16", models.vgg16(), example_224, use_tracing=True)
make("vgg16_bn", models.vgg16_bn(), example_224, use_tracing=True)
make("vgg19", models.vgg19(), example_224, use_tracing=True)
make("vgg19_bn", models.vgg19_bn(), example_224, use_tracing=True)

# VisionTransformer : Crashes torch-mlir

# WideResNet
make("wide_resnet50_2", models.wide_resnet50_2(), example_32, use_tracing=True)
make("wide_resnet101_2", models.wide_resnet101_2(), example_32, use_tracing=True)
