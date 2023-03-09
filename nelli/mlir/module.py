import inspect

from ._mlir._mlir_libs._mlir.ir import UnitAttr
from ._mlir.dialects._builtin_ops_gen import ModuleOp
from ._mlir.ir import InsertionPoint, StringAttr
from .func import mlir_func, lazy_mlir_func, get_qual_name


# class Module(type):
#     # necessary to supports keywords in addition to metaclass
#     def __new__(cls, name, bases, classdict, **kwargs):
#         new = super().__new__(cls, name, bases, classdict)
#         return new
#
#     def __call__(cls, *args, **kwargs):
#         obj = type.__call__(cls, *args, **kwargs)
#         if ctor := kwargs.get("ctor"):
#             assert ctor in {ModuleOp}
#             cls.mlir_module = ctor()
#             cls.mlir_module.sym_name = StringAttr.get(
#                 get_qual_name(obj.__class__.__qualname__)
#             )
#         else:
#             assert "mlir_module" in kwargs
#             cls.mlir_module = kwargs["mlir_module"]
#             cls.mlir_module.operation.attributes["sym_name"] = StringAttr.get(
#                 get_qual_name(obj.__class__.__qualname__)
#             )
#
#         with InsertionPoint(cls.mlir_module.body):
#             for name, method in inspect.getmembers(obj, inspect.ismethod):
#                 if name == "__init__":
#                     continue
#                 setattr(obj, name, mlir_func()(method))
#         return obj
#
#     # necessary to supports keywords in addition to metaclass
#     @classmethod
#     def __prepare__(cls, name, bases, **kwargs):
#         if "ctor" in kwargs:
#             cls.ctor = kwargs["ctor"]
#         if "mlir_module" in kwargs:
#             cls.mlir_module = kwargs["mlir_module"]
#         return {}


class Module:
    def __init__(self, **kwargs):
        from .gpu import ModuleOp as GPUModuleOp

        if ctor := kwargs.get("ctor"):
            self.mlir_module = ctor()
            self.mlir_module.sym_name = StringAttr.get(
                get_qual_name(self.__class__.__qualname__)
            )
        elif mlir_module := kwargs.get("mlir_module"):
            self.mlir_module = mlir_module
            self.mlir_module.operation.attributes["sym_name"] = StringAttr.get(
                get_qual_name(self.__class__.__qualname__)
            )
        else:
            if ctor := kwargs.get("ctor"):
                assert ctor in {ModuleOp, GPUModuleOp}
            else:
                ctor = ModuleOp

            self.mlir_module = ctor()
            self.mlir_module.sym_name = StringAttr.get(
                get_qual_name(self.__class__.__qualname__)
            )

        lazy = kwargs.get("lazy", False)

        if not lazy:
            with InsertionPoint(self.mlir_module.body):
                for name, method in inspect.getmembers(self, inspect.ismethod):
                    if name == "__init__":
                        continue
                    elif (
                        method.__func__.__qualname__ == "lazy_sequence.<locals>.wrapped"
                    ):
                        method.__func__()
                    else:
                        setattr(
                            self,
                            name,
                            mlir_func(
                                func_ctor=kwargs.get("func_ctor"),
                                range_ctor=kwargs.get("range_ctor"),
                                attributes=kwargs.get("func_attributes"),
                                qualname=kwargs.get("func_qualname"),
                            )(method),
                        )

            if attributes := kwargs.get("mod_attributes"):
                for k, v in attributes.items():
                    if v is None:
                        v = UnitAttr.get()
                    self.mlir_module.operation.attributes[k] = v
        else:
            assert (
                "mlir_module" in kwargs
            ), f"lazy eval necessitates providing a container module"
            for name, method in inspect.getmembers(self, inspect.ismethod):
                if (
                    name == "__init__"
                    or method.__func__.__qualname__ == "lazy_sequence.<locals>.wrapped"
                ):
                    continue
                else:
                    setattr(
                        self,
                        name,
                        lazy_mlir_func(
                            mlir_module=kwargs["mlir_module"],
                            func_ctor=kwargs.get("func_ctor"),
                            range_ctor=kwargs.get("range_ctor"),
                            attributes=kwargs.get("func_attributes"),
                            qualname=kwargs.get("func_qualname"),
                        )(method),
                    )
