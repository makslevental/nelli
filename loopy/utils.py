from .loopy_mlir._mlir_libs._loopy_mlir import (
    print_value_as_operand,
    reset_disambig_names as _reset_disambig_names,
    walk_operation
)
from .loopy_mlir.ir import Value

seen = {}


def make_disambig_name(o: Value):
    name = print_value_as_operand(o)
    if name in seen and o not in seen[name]:
        seen[name][o] = name + "'" * len(seen[name])
    elif name in seen and o in seen[name]:
        # name = seen[name][o]
        pass
    else:
        seen[name] = {o: name}
    return seen[name][o]


def reset_disambig_names():
    global seen
    seen = {}
    _reset_disambig_names()


def find_ops(op, pred):
    matching = []

    def find(op):
        if pred(op):
            matching.append(op)

    walk_operation(op.operation, find)
    return matching
