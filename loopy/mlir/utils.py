import os
import sys
import tempfile
from functools import wraps
from io import StringIO

from loopy.loopy_mlir.passmanager import PassManager
from loopy.loopy_mlir.ir import StringAttr


class LoopyMlirCompilerError(Exception):
    def __init__(self, value: str):
        super().__init__()
        self.value = value

    def __str__(self) -> str:
        return self.value


def get_module_name_for_debug_dump(module):
    if not "loopy.debug_module_name" in module.operation.attributes:
        return "UnnammedModule"
    return StringAttr(module.operation.attributes["loopy.debug_module_name"]).value


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

            For developers, the error can be reproduced with:
            $ mlir-opt -pass-pipeline='{pipeline}' {filename}
            Add '{debug_options}' to get the IR dump for debugging purpose.
            """
        trimmed_message = "\n".join([m.lstrip() for m in message.split("\n")])
        raise LoopyMlirCompilerError(trimmed_message) from None
    finally:
        sys.stderr = original_stderr


def doublewrap(f):
    """
    a decorator decorator, allowing the decorator to be used as:
    @decorator(with, arguments, and=kwargs)
    or
    @decorator
    """

    @wraps(f)
    def new_dec(*args, **kwargs):
        if len(args) == 1 and len(kwargs) == 0 and callable(args[0]):
            # actual decorated function
            return f(args[0])
        else:
            # decorator arguments
            return lambda realf: f(realf, *args, **kwargs)

    return new_dec
