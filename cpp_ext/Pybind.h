//
// Created by maksim on 2/9/23.
//

#ifndef NELLI_PYBINDADAPTORS_H
#define NELLI_PYBINDADAPTORS_H

#include "IRModule.h"
#include "mlir/Bindings/Python/PybindAdaptors.h"
#include <pybind11/stl_bind.h>

namespace py = pybind11;
using namespace mlir::python;

namespace pybind11::detail {
template <> struct type_caster<MlirAffineExpr> {
  PYBIND11_TYPE_CASTER(MlirAffineExpr, _("MlirAffineExpr"));

  bool load(handle src, bool) {
    py::object capsule = mlirApiObjectToCapsule(src);
    value = mlirPythonCapsuleToAffineExpr(capsule.ptr());
    if (mlirAffineExprIsNull(value)) {
      return false;
    }
    return !mlirAffineExprIsNull(value);
  }

#define FOR_ALL_EXPR_TYPES(_)                                                  \
  _(Dim)                                                                       \
  _(Symbol)                                                                    \
  _(Constant)                                                                  \
  _(Add)                                                                       \
  _(Mul)                                                                       \
  _(Mod)                                                                       \
  _(FloorDiv)                                                                  \
  _(CeilDiv)                                                                   \
  _(Binary)

  static handle cast(MlirAffineExpr v, return_value_policy, handle) {
    auto capsule =
        py::reinterpret_steal<py::object>(mlirPythonAffineExprToCapsule(v));
    auto mlir_ir = py::module::import(MAKE_MLIR_PYTHON_QUALNAME("ir"));
    auto expr = mlir_ir.attr("AffineExpr")
                    .attr(MLIR_PYTHON_CAPI_FACTORY_ATTR)(capsule)
                    .release();

#define DEFINE_SUB_EXPR(TTT)                                                   \
  if (mlirAffineExprIsA##TTT(v)) {                                             \
    return py::module::import(MAKE_MLIR_PYTHON_QUALNAME("ir"))                 \
        .attr("Affine" #TTT "Expr")(expr.cast<py::object>())                   \
        .release();                                                            \
  }
    FOR_ALL_EXPR_TYPES(DEFINE_SUB_EXPR)
#undef DEFINE_SUB_EXPR

    throw py::cast_error("Invalid AffineExpr type when attempting to "
                         "create an AffineExpr");
  }
};

} // namespace pybind11::detail

#endif // NELLI_PYBINDADAPTORS_H
