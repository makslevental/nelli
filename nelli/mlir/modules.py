import inspect
import inspect
import types
from typing import Callable

from ._mlir.dialects import func as func_dialect
from ._mlir.ir import InsertionPoint, Module as MLIRModule, StringAttr
from .func import mlir_func
from .utils import doublewrap


class FakeClassScope(types.ModuleType):
    _classdict: dict = None

    def __init__(self, name, file):
        super(FakeClassScope, self).__init__(f"{name}_MLIR")
        self.__file__ = file
        self._classdict = {}

    def __getattr__(self, attr):
        if attr in self._classdict:
            return self._classdict[attr]
        else:
            raise RuntimeError(
                f"unknown method/attr {attr=} in MLIR Module {self.__name__}"
            )

    def __setitem__(self, key, value):
        self._classdict[key] = value


# def get_frame_args(frame):
#     args, _, _, values = inspect.getargvalues(frame)
#     print('function name "%s"' % inspect.getframeinfo(frame)[2])
#     for i in args:
#         print("    %s = %s" % (i, values[i]))
#     return dict([(i, values[i]) for i in args])


@doublewrap
def mlir_class_method(
    f,
    rewrite_ast_=None,
    rewrite_bytecode_=None,
    range_ctor=None,
    emit_c_interface=None,
    visibility=None,
    func_op_ctor=None,
):
    def mlir_class_method_wrapper():
        return f, dict(
            rewrite_ast_=rewrite_ast_,
            rewrite_bytecode_=rewrite_bytecode_,
            range_ctor=range_ctor,
            emit_c_interface=emit_c_interface,
            visibility=visibility,
            func_op_ctor=func_op_ctor,
        )

    return mlir_class_method_wrapper


# When a class definition is executed, the following steps occur:
# 1. MRO entries are resolved;
# 2. the appropriate metaclass is determined;
# 3. the class namespace is prepared;
# 4. the class body is executed;
# 5. the class object is created.


class Module(type):
    __module_ip: InsertionPoint = None
    __module: MLIRModule = None
    __fake_module: FakeClassScope = None
    __terminator: Callable = None

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        cls.__module = MLIRModule.create()
        cls.__module.operation.attributes["nelli.debug_module_name"] = StringAttr.get(
            name
        )
        module_ip = InsertionPoint(cls.__module.body)
        module_ip.__enter__()
        cls.__module_ip = module_ip
        prev_frame = inspect.currentframe().f_back
        cls.__fake_module = FakeClassScope(name, file=prev_frame.f_code.co_filename)
        return {"cls": cls.__fake_module._classdict}

    def __new__(cls, name, bases, classdict, **kwargs):
        is_from_py_func = lambda v: (
            hasattr(v, "func_op")
            and isinstance(getattr(v, "func_op"), func_dialect.FuncOp)
        )
        for k, v in classdict.items():
            if inspect.ismethod(v) or inspect.isfunction(v) and is_from_py_func(v):
                cls.__fake_module[k] = v

        for k, v in classdict.items():
            if (
                inspect.ismethod(v)
                or inspect.isfunction(v)
                or inspect.ismethoddescriptor(v)
                and k != "__init__"
                and not is_from_py_func(v)
            ):
                if v.__name__ == "mlir_class_method_wrapper":
                    v, kwargs_ = v()
                    kwargs.update(kwargs_)
                if v.__qualname__ == "declare.<locals>.callable":
                    cls.__fake_module[k] = v
                else:
                    cls.__fake_module[k] = classdict[k] = mlir_func(
                        **kwargs,
                        cls=cls.__fake_module,
                    )(v)

        if cls.__terminator is not None:
            cls.__terminator()
        cls.__module_ip.__exit__(None, None, None)
        mod = super().__new__(cls, name, bases, classdict)
        return mod

    def __str__(self):
        return str(self.__module)
