import builtins
import inspect
from typing import Union, Optional, Sequence

from ._mlir import ir
from ._mlir.dialects._func_ops_ext import ARGUMENT_ATTRIBUTE_NAME, RESULT_ATTRIBUTE_NAME
from ._mlir.dialects._ods_common import get_default_loc_context
from ._mlir.ir import (
    StringAttr,
    FunctionType,
    TypeAttr,
    ArrayAttr,
    Type,
    Value,
    OpView,
    Operation,
    FlatSymbolRefAttr,
    InsertionPoint,
)
from .modules import FakeClassScope, Module
from ..mlir._mlir.dialects import gpu


class FuncOp(gpu.GPUFuncOp):
    def __init__(
        self,
        sym_name,
        function_type,
        *,
        sym_visibility=None,
        arg_attrs=None,
        res_attrs=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        _ods_context = get_default_loc_context(loc)
        attributes["sym_name"] = (
            sym_name
            if (
                issubclass(type(sym_name), ir.Attribute)
                or not ir.AttrBuilder.contains("SymbolNameAttr")
            )
            else ir.AttrBuilder.get("SymbolNameAttr")(sym_name, context=_ods_context)
        )
        attributes["function_type"] = (
            function_type
            if (
                issubclass(type(function_type), ir.Attribute)
                or not ir.AttrBuilder.contains("anonymous_394")
            )
            else ir.AttrBuilder.get("anonymous_394")(
                function_type, context=_ods_context
            )
        )
        if sym_visibility is not None:
            attributes["sym_visibility"] = (
                sym_visibility
                if (
                    issubclass(type(sym_visibility), ir.Attribute)
                    or not ir.AttrBuilder.contains("StrAttr")
                )
                else ir.AttrBuilder.get("StrAttr")(sym_visibility, context=_ods_context)
            )
        if arg_attrs is not None:
            attributes["arg_attrs"] = (
                arg_attrs
                if (
                    issubclass(type(arg_attrs), ir.Attribute)
                    or not ir.AttrBuilder.contains("DictArrayAttr")
                )
                else ir.AttrBuilder.get("DictArrayAttr")(
                    arg_attrs, context=_ods_context
                )
            )
        if res_attrs is not None:
            attributes["res_attrs"] = (
                res_attrs
                if (
                    issubclass(type(res_attrs), ir.Attribute)
                    or not ir.AttrBuilder.contains("DictArrayAttr")
                )
                else ir.AttrBuilder.get("DictArrayAttr")(
                    res_attrs, context=_ods_context
                )
            )
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def sym_name(self):
        return ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["sym_name"] = value

    @builtins.property
    def sym_visibility(self):
        if "sym_visibility" not in self.operation.attributes:
            return None
        return ir.StringAttr(self.operation.attributes["sym_visibility"])

    @sym_visibility.setter
    def sym_visibility(self, value):
        if value is not None:
            self.operation.attributes["sym_visibility"] = value
        elif "sym_visibility" in self.operation.attributes:
            del self.operation.attributes["sym_visibility"]

    @sym_visibility.deleter
    def sym_visibility(self):
        del self.operation.attributes["sym_visibility"]

    @builtins.property
    def body(self):
        return self.regions[0]


class FuncOp(FuncOp):
    """Specialization for the func op class."""

    def __init__(
        self, name, type, *, visibility=None, body_builder=None, loc=None, ip=None
    ):
        """
        Create a FuncOp with the provided `name`, `type`, and `visibility`.
        - `name` is a string representing the function name.
        - `type` is either a FunctionType or a pair of list describing inputs and
          results.
        - `visibility` is a string matching `public`, `private`, or `nested`. None
          implies private visibility.
        - `body_builder` is an optional callback, when provided a new entry block
          is created and the callback is invoked with the new op as argument within
          an InsertionPoint context already set for the block. The callback is
          expected to insert a terminator in the block.
        """
        sym_name = StringAttr.get(str(name))

        # If the type is passed as a tuple, build a FunctionType on the fly.
        if isinstance(type, tuple):
            type = FunctionType.get(inputs=type[0], results=type[1])

        type = TypeAttr.get(type)
        sym_visibility = (
            StringAttr.get(str(visibility)) if visibility is not None else None
        )
        super().__init__(sym_name, type, sym_visibility=sym_visibility, loc=loc, ip=ip)
        if body_builder:
            entry_block = self.add_entry_block()
            with InsertionPoint(entry_block):
                body_builder(self)

    @property
    def is_external(self):
        return len(self.regions[0].blocks) == 0

    @property
    def body(self):
        return self.regions[0]

    @property
    def type(self):
        return FunctionType(TypeAttr(self.attributes["function_type"]).value)

    @property
    def visibility(self):
        return self.attributes["sym_visibility"]

    @property
    def name(self) -> StringAttr:
        return StringAttr(self.attributes["sym_name"])

    @property
    def entry_block(self):
        if self.is_external:
            raise IndexError("External function does not have a body")
        return self.regions[0].blocks[0]

    def add_entry_block(self):
        """
        Add an entry block to the function body using the function signature to
        infer block arguments.
        Returns the newly created block
        """
        if not self.is_external:
            raise IndexError("The function already has an entry block!")
        self.body.blocks.append(*self.type.inputs)
        return self.body.blocks[0]

    @property
    def arg_attrs(self):
        return ArrayAttr(self.attributes[ARGUMENT_ATTRIBUTE_NAME])

    @arg_attrs.setter
    def arg_attrs(self, attribute: Union[ArrayAttr, list]):
        if isinstance(attribute, ArrayAttr):
            self.attributes[ARGUMENT_ATTRIBUTE_NAME] = attribute
        else:
            self.attributes[ARGUMENT_ATTRIBUTE_NAME] = ArrayAttr.get(
                attribute, context=self.context
            )

    @property
    def arguments(self):
        return self.entry_block.arguments

    @property
    def result_attrs(self):
        return self.attributes[RESULT_ATTRIBUTE_NAME]

    @result_attrs.setter
    def result_attrs(self, attribute: ArrayAttr):
        self.attributes[RESULT_ATTRIBUTE_NAME] = attribute

    @classmethod
    def from_py_func(
        FuncOp,
        *inputs: Type,
        results: Optional[Sequence[Type]] = None,
        name: Optional[str] = None,
    ):
        def decorator(f):
            # Introspect the callable for optional features.
            sig = inspect.signature(f)
            has_arg_func_op = False
            for param in sig.parameters.values():
                if param.kind == param.VAR_KEYWORD:
                    has_arg_func_op = True
                if param.name == "func_op" and (
                    param.kind == param.POSITIONAL_OR_KEYWORD
                    or param.kind == param.KEYWORD_ONLY
                ):
                    has_arg_func_op = True

            # Emit the FuncOp.
            implicit_return = results is None
            symbol_name = name or f.__name__
            function_type = FunctionType.get(
                inputs=inputs, results=[] if implicit_return else results
            )
            func_op = FuncOp(name=symbol_name, type=function_type)
            with InsertionPoint(func_op.add_entry_block()):
                func_args = func_op.entry_block.arguments
                func_kwargs = {}
                if has_arg_func_op:
                    func_kwargs["func_op"] = func_op
                return_values = f(*func_args, **func_kwargs)
                if not implicit_return:
                    return_types = list(results)
                    assert return_values is None, (
                        "Capturing a python function with explicit `results=` "
                        "requires that the wrapped function returns None."
                    )
                else:
                    # Coerce return values, add ReturnOp and rewrite func type.
                    if return_values is None:
                        return_values = []
                    elif isinstance(return_values, tuple):
                        return_values = list(return_values)
                    elif isinstance(return_values, Value):
                        # Returning a single value is fine, coerce it into a list.
                        return_values = [return_values]
                    elif isinstance(return_values, OpView):
                        # Returning a single operation is fine, coerce its results a list.
                        return_values = return_values.operation.results
                    elif isinstance(return_values, Operation):
                        # Returning a single operation is fine, coerce its results a list.
                        return_values = return_values.results
                    else:
                        return_values = list(return_values)
                    gpu.ReturnOp(return_values)
                    # Recompute the function type.
                    return_types = [v.type for v in return_values]
                    function_type = FunctionType.get(
                        inputs=inputs, results=return_types
                    )
                    func_op.attributes["function_type"] = TypeAttr.get(function_type)

            def emit_call_op(*call_args):
                call_op = gpu.LaunchFuncOp(
                    return_types, FlatSymbolRefAttr.get(symbol_name), call_args
                )
                if return_types is None:
                    return None
                elif len(return_types) == 1:
                    return call_op.result
                else:
                    return call_op.results

            wrapped = emit_call_op
            wrapped.__name__ = f.__name__
            wrapped.func_op = func_op
            return wrapped

        return decorator


class ModuleOp(gpu.GPUModuleOp):
    @builtins.property
    def sym_name(self):
        if "sym_name" not in self.operation.attributes:
            return None
        return ir.StringAttr(self.operation.attributes["sym_name"])

    @sym_name.setter
    def sym_name(self, value):
        if value is not None:
            self.operation.attributes["sym_name"] = value
        elif "sym_name" in self.operation.attributes:
            del self.operation.attributes["sym_name"]

    @sym_name.deleter
    def sym_name(self):
        del self.operation.attributes["sym_name"]

    @builtins.property
    def sym_visibility(self):
        if "sym_visibility" not in self.operation.attributes:
            return None
        return ir.StringAttr(self.operation.attributes["sym_visibility"])

    @sym_visibility.setter
    def sym_visibility(self, value):
        if value is not None:
            self.operation.attributes["sym_visibility"] = value
        elif "sym_visibility" in self.operation.attributes:
            del self.operation.attributes["sym_visibility"]

    @sym_visibility.deleter
    def sym_visibility(self):
        del self.operation.attributes["sym_visibility"]

    @builtins.property
    def bodyRegion(self):
        return self.regions[0]


class ModuleOp(ModuleOp):
    def __init__(self, *, loc=None, ip=None):
        super().__init__(self.build_generic(results=[], operands=[], loc=loc, ip=ip))
        body = self.regions[0].blocks.append()

    @property
    def body(self):
        return self.regions[0].blocks[0]


class Module(Module):
    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        cls.__module = ModuleOp()
        cls.__module.operation.attributes[
            "nelli.debug_gpu_module_name"
        ] = StringAttr.get(name)
        cls.__module.sym_name = StringAttr.get(name)
        module_ip = InsertionPoint(cls.__module.body)
        module_ip.__enter__()
        cls.__module_ip = module_ip
        cls.__terminator = gpu.ModuleEndOp
        prev_frame = inspect.currentframe().f_back
        cls.__fake_module = FakeClassScope(name, file=prev_frame.f_code.co_filename)
        return {"cls": cls.__fake_module._classdict}
