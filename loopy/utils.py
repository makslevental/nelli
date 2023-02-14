import builtins
import contextlib
import platform
from typing import Callable

import sympy

# noinspection PyUnresolvedReferences
from .loopy_mlir._mlir_libs._loopy_mlir import (
    get_common_loops,
    show_value_as_operand,
    reset_disambig_names as _reset_disambig_names,
    show_access_relation,
    show_sanity_check_access_relation,
    walk_operation,
)
from .loopy_mlir.ir import Value, Module, InsertionPoint, Operation

seen_ambiguous_names = {}


def make_disambig_name(o: Value):
    name = show_value_as_operand(o)
    if name in seen_ambiguous_names and o not in seen_ambiguous_names[name]:
        seen_ambiguous_names[name][o] = name + "'" * len(seen_ambiguous_names[name])
    elif name in seen_ambiguous_names and o in seen_ambiguous_names[name]:
        # name = seen[name][o]
        pass
    else:
        seen_ambiguous_names[name] = {o: name}
    return seen_ambiguous_names[name][o]


def symp_sym(name):
    return sympy.Symbol(name)


def z3_name(name):
    return z3_name(name)


def reset_disambig_names():
    global seen_ambiguous_names
    seen_ambiguous_names = {}
    _reset_disambig_names()


def find_ops(op, pred: Callable[[Operation], bool]):
    matching = []

    def find(op):
        if pred(op):
            matching.append(op)

    walk_operation(op.operation, find)
    return matching


def mlir_gc():
    import gc

    for i in builtins.range(10):
        gc.collect()
    reset_disambig_names()


@contextlib.contextmanager
def mlir_mod_ctx():
    module = Module.create()
    with InsertionPoint(module.body):
        yield module


def shlib_ext():
    if platform.system() == "Darwin":
        shlib_ext = "dylib"
    elif platform.system() == "Linux":
        shlib_ext = "so"
    else:
        raise NotImplementedError(f"unknown platform {platform.system()}")

    return shlib_ext
