from __future__ import annotations

import logging

logger = logging.getLogger(__name__)

passes = [
    "arith-bufferize",
    "arith-expand",
    "buffer-deallocation",
    "canonicalize",
    "convert-arith-to-llvm",
    "convert-cf-to-llvm",
    "convert-func-to-llvm",
    "convert-linalg-to-affine-loops",
    "convert-linalg-to-llvm",
    "convert-linalg-to-loops",
    "convert-linalg-to-parallel-loops",
    "convert-math-to-libm",
    "convert-math-to-llvm",
    "convert-openmp-to-llvm",
    "convert-scf-to-cf",
    "convert-scf-to-openmp",
    "cse",
    "empty-tensor-to-alloc-tensor",
    "expand-strided-metadata",
    "finalize-memref-to-llvm",
    "finalizing-bufferize",
    "func-bufferize",
    "linalg-bufferize",
    "lower-affine",
    "reconcile-unrealized-casts",
    "scf-bufferize",
    "tensor-bufferize",
]


# met = (
#     lambda pass_: f"""\
# #     def {pass_.replace('-', '_')}(self):
#         self._add_pass("{pass_}")
#         return self
# """
# )
# for p in passes:
#     print(met(p))


class Pipeline:
    _pipeline: list[str] = []

    def __init__(self, pipeline=None, wrapper=None):
        if pipeline is None:
            pipeline = []
        self._pipeline = pipeline
        self._wrapper = wrapper

    def func(self):
        assert self._wrapper is None
        self._wrapper = "func.func"
        return self

    def cnuf(self):
        assert self._wrapper == "func.func"
        self._wrapper = None
        return self

    def materialize(self, module=True):
        pipeline_str = ",".join(self._pipeline)
        if module:
            pipeline_str = f"builtin.module({pipeline_str})"
        logger.debug(f"{pipeline_str}")
        return pipeline_str

    def __add__(self, other: Pipeline):
        return Pipeline(self._pipeline + other._pipeline)

    def __iadd__(self, other: Pipeline):
        self._pipeline += other._pipeline
        return self

    def _add_pass(self, pass_):
        if self._wrapper is not None:
            pass_ = f"{self._wrapper}({pass_})"
        self._pipeline.append(pass_)

    def lower_to_llvm_(self):
        return any(["to-llvm" in p for p in self._pipeline])

    def arith_bufferize(self):
        self._add_pass("arith-bufferize")
        return self

    def arith_expand(self):
        self._add_pass("arith-expand")
        return self

    def buffer_deallocation(self):
        self._add_pass("buffer-deallocation")
        return self

    def canonicalize(self):
        self._add_pass("canonicalize")
        return self

    def convert_arith_to_llvm(self):
        self._add_pass("convert-arith-to-llvm")
        return self

    def convert_cf_to_llvm(self):
        self._add_pass("convert-cf-to-llvm")
        return self

    def convert_func_to_llvm(self):
        self._add_pass("convert-func-to-llvm")
        return self

    def convert_linalg_to_affine_loops(self):
        self._add_pass("convert-linalg-to-affine-loops")
        return self

    def convert_linalg_to_llvm(self):
        self._add_pass("convert-linalg-to-llvm")
        return self

    def convert_linalg_to_loops(self):
        self._add_pass("convert-linalg-to-loops")
        return self

    def convert_linalg_to_parallel_loops(self):
        self._add_pass("convert-linalg-to-parallel-loops")
        return self

    def convert_math_to_libm(self):
        self._add_pass("convert-math-to-libm")
        return self

    def convert_math_to_llvm(self):
        self._add_pass("convert-math-to-llvm")
        return self

    def convert_openmp_to_llvm(self):
        self._add_pass("convert-openmp-to-llvm")
        return self

    def convert_scf_to_cf(self):
        self._add_pass("convert-scf-to-cf")
        return self

    def convert_scf_to_openmp(self):
        self._add_pass("convert-scf-to-openmp")
        return self

    def cse(self):
        self._add_pass("cse")
        return self

    def empty_tensor_to_alloc_tensor(self):
        self._add_pass("empty-tensor-to-alloc-tensor")
        return self

    def expand_strided_metadata(self):
        self._add_pass("expand-strided-metadata")
        return self

    def finalize_memref_to_llvm(self):
        self._add_pass("finalize-memref-to-llvm")
        return self

    def finalizing_bufferize(self):
        self._add_pass("finalizing-bufferize")
        return self

    def func_bufferize(self):
        self._add_pass("func-bufferize")
        return self

    def linalg_bufferize(self):
        self._add_pass("linalg-bufferize")
        return self

    def lower_affine(self):
        self._add_pass("lower-affine")
        return self

    def refbackend_munge_calling_conventions(self):
        self._add_pass("refback-munge-calling-conventions")
        return self

    def reconcile_unrealized_casts(self):
        self._add_pass("reconcile-unrealized-casts")
        return self

    def scf_bufferize(self):
        self._add_pass("scf-bufferize")
        return self

    def tensor_bufferize(self):
        self._add_pass("tensor-bufferize")
        return self

    def tiling_interface(self, strategy: str, tile_sizes: list[int], filter_name: str):
        self._add_pass(
            f"tiling-interface{{strategy={strategy} tile-sizes={','.join(map(str, tile_sizes))} filter-name={filter_name}}}"
        )
        return self

    def bufferize(self):
        return (
            self.func()
            .scf_bufferize()
            .empty_tensor_to_alloc_tensor()
            .linalg_bufferize()
            .cnuf()
            .func_bufferize()
            .arith_bufferize()
            .func()
            .tensor_bufferize()
            .finalizing_bufferize()
            .buffer_deallocation()
            .cnuf()
        )

    def lower_to_llvm(self):
        return (
            self.cse()
            .func()
            .lower_affine()
            .arith_expand()
            .convert_math_to_llvm()
            .cnuf()
            .convert_math_to_libm()
            .convert_linalg_to_llvm()
            .finalize_memref_to_llvm()
            .convert_scf_to_cf()
            .convert_cf_to_llvm()
            .cse()
            .lower_affine()
            .func()
            .convert_arith_to_llvm()
            .cnuf()
            .convert_func_to_llvm()
            .canonicalize()
            .convert_openmp_to_llvm()
            .cse()
            .reconcile_unrealized_casts()
        )

    def lower_to_openmp(self):
        return self.convert_scf_to_openmp().func().lower_affine().cnuf()
