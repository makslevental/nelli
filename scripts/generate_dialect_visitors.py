import inspect

from nelli.mlir._mlir.ir import Type
from nelli.mlir._mlir.dialects import (
    _arith_ops_gen as arith,
    # _async_dialect_ops_gen as async_dialect,
    _bufferization_ops_gen as bufferization,
    _builtin_ops_gen as builtin,
    _cf_ops_gen as cf,
    _complex_ops_gen as complex,
    _func_ops_gen as func,
    _gpu_ops_gen as gpu,
    _linalg_ops_gen as linalg,
    _loop_transform_ops_gen as transform_loop,
    _math_ops_gen as math,
    _memref_ops_gen as memref,
    _ml_program_ops_gen as ml_program,
    _pdl_ops_gen as pdl,
    _scf_ops_gen as scf,
    _shape_ops_gen as shape,
    _sparse_tensor_ops_gen as sparse_tensor,
    _structured_transform_ops_gen as transform_structured,
    _tensor_ops_gen as tensor,
    _tosa_ops_gen as tosa,
    _transform_ops_gen as transform,
    _vector_ops_gen as vector,
)
from nelli.mlir.affine import _affine_ops_gen as affine
from nelli.mlir.async_dialect import _async_ops_gen as async_dialect
from nelli.mlir.llvm import _llvm_ops_gen as llvm
from nelli.mlir.omp import _omp_ops_gen as omp


def dialect_name(d):
    d = d.__name__.split(".")[-1].replace("_ops_gen", "")
    assert d[0] == "_"
    return {
        "loop_transform": "transform_loop",
        "structured_transform": "transform_structured",
        "async": "async_",
    }.get(d[1:], d[1:])


def captialized_dialect_name(d):
    d = dialect_name(d)
    return "".join(map(lambda x: x.capitalize(), d.split("_")))


dialects = (
    affine,
    arith,
    async_dialect,
    bufferization,
    builtin,
    cf,
    complex,
    func,
    gpu,
    linalg,
    llvm,
    math,
    memref,
    ml_program,
    omp,
    pdl,
    # quant,
    scf,
    shape,
    sparse_tensor,
    tensor,
    tosa,
    transform,
    transform_loop,
    transform_structured,
    vector,
)

from textwrap import indent

visitor_template = (
    lambda dialect, op_name: f"""\
def visit_{op_name}(self, op: {dialect}.{op_name}):
    pass
"""
)

visitor_fn = """\
def visit(self, op: Operation):
    for r in op.regions:
        for b in r.blocks:
            for o in b.operations:
                *dialect, name = o.operation.name.split(".")
                dialect = "_".join(dialect)
                dialect_visitor: DialectVisitor = getattr(
                    self, f"{dialect}_visitor"
                )
                assert dialect_visitor is not None, f"missing {dialect} visitor"
                dialect_visitor.visit(o.operation.opview)
                self.visit(o.operation)
"""


def find_all_dialect_ops():
    inden = 4
    print("class AllDialectVisitor:")
    print(indent("def __init__(", prefix=" " * inden))

    print(indent(f"self,", prefix=" " * inden * 2))
    for d in dialects:
        dialect_name_ = dialect_name(d)
        if dialect_name_.endswith("_"): dialect_name_ = dialect_name_[:-1]
        print(indent(f"{dialect_name_}_visitor_ctor=None,", prefix=" " * inden * 2))
    print(indent("):", prefix=" " * inden))
    for d in dialects:
        dialect_name_ = dialect_name(d)
        if dialect_name_.endswith("_"): dialect_name_ = dialect_name_[:-1]
        print(
            indent(
                f"if {dialect_name_}_visitor_ctor is None: {dialect_name_}_visitor_ctor = {captialized_dialect_name(d)}DialectVisitor",
                prefix=" " * inden * 2,
            )
        )
    for d in dialects:
        dialect_name_ = dialect_name(d)
        if dialect_name_.endswith("_"): dialect_name_ = dialect_name_[:-1]
        print(
            indent(
                f"self.{dialect_name_}_visitor = {dialect_name_}_visitor_ctor(self)",
                prefix=" " * inden * 2,
            )
        )
    print()

    print(indent(visitor_fn, prefix=" " * inden))

    print()

    for d in dialects:
        print(f"class {captialized_dialect_name(d)}DialectVisitor(DialectVisitor):")
        for name, obj in inspect.getmembers(d):
            if name == "_Dialect":
                continue
            if inspect.isclass(obj) and not issubclass(obj, Type):
                print(indent(visitor_template(dialect_name(d), name), prefix="    "))


if __name__ == "__main__":
    find_all_dialect_ops()
