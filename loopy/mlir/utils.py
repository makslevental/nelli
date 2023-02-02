import os
import sys
import tempfile
from io import StringIO


# from loopy.loopy_mlir.ir import (
#     register_attribute_builder,
# )


def run_pipeline_with_repro_report(
    module,
    pipeline: str,
    description: str,
    enable_ir_printing=False,
    print_pipeline=False,
):
    """Runs `pipeline` on `module`, with a nice repro report if it fails."""
    module_name = get_module_name_for_debug_dump(module)
    try:
        original_stderr = sys.stderr
        sys.stderr = StringIO()
        asm_for_error_report = module.operation.get_asm(
            large_elements_limit=10, enable_debug_info=True
        )
        # Lower module in place to make it ready for compiler backends.
        with module.context:
            pm = PassManager.parse(pipeline)
            if print_pipeline:
                print(pm)
            if enable_ir_printing:
                pm.enable_ir_printing()
            pm.run(module)
    except Exception as e:
        print(e, file=sys.stderr)
        filename = os.path.join(tempfile.gettempdir(), module_name + ".mlir")
        with open(filename, "w") as f:
            f.write(asm_for_error_report)
        debug_options = "-mlir-print-ir-after-all -mlir-disable-threading"
        # Put something descriptive here even if description is empty.
        description = description or f"{module_name} compile"

        message = f"""\
            {description} failed with the following diagnostics:
            {sys.stderr.getvalue()}

            For Torch-MLIR developers, the error can be reproduced with:
            $ torch-mlir-opt -pass-pipeline='{pipeline}' {filename}
            Add '{debug_options}' to get the IR dump for debugging purpose.
            """
        trimmed_message = "\n".join([m.lstrip() for m in message.split("\n")])
        raise TorchMlirCompilerError(trimmed_message) from None
    finally:
        sys.stderr = original_stderr


def lower_pi_to_linalg(module):
    run_pipeline_with_repro_report(
        module,
        "builtin.module("
        + ",".join(
            [
                # "builtin.module(torchscript-module-to-torch-backend-pipeline)",
                # "torchscript-module-to-torch-backend-pipeline",
                "symbol-dce",
                "inline{default-pipeline= max-iterations=4}",
                "torch-adjust-calling-conventions",
                "torch-lower-to-backend-contract{decompose=true max-iterations=10}",
                "torch-backend-to-linalg-on-tensors-backend-pipeline",
            ]
        )
        + ")",
        "Lowering Torch MLIR -> Linalg",
        enable_ir_printing=False,
    )
    return module


# @register_attribute_builder("AnyI64Attr")
# def _i64Attr(x, context):
#     return IntegerAttr.get(IntegerType.get_signless(64, context=context), x)
#
#
# @register_attribute_builder("I1Attr")
# def _i1Attr(x, context):
#     return IntegerAttr.get(IntegerType.get_signless(1, context=context), int(x))
#
#
# @register_attribute_builder("F64Attr")
# def _f64Attr(x, context):
#     return FloatAttr.get(F64Type.get(context=context), x)
