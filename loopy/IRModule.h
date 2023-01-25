//===- IRModules.h - IR Submodules of pybind module -----------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LOOPY_MLIR_BINDINGS_PYTHON_IRMODULES_H
#define LOOPY_MLIR_BINDINGS_PYTHON_IRMODULES_H

#include <iostream>
#include <utility>
#include <vector>

#include "mlir/Bindings/Python/PybindAdaptors.h"
#include <mlir-c/Bindings/Python/Interop.h>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

#include "mlir-c/AffineExpr.h"
#include "mlir-c/AffineMap.h"
#include "mlir-c/BuiltinAttributes.h"
#include "mlir-c/Diagnostics.h"
#include "mlir-c/IR.h"
#include "mlir-c/IntegerSet.h"
#include "mlir/CAPI/AffineExpr.h"
#include "mlir/CAPI/AffineMap.h"
#include "mlir/CAPI/Wrap.h"
#include "mlir/CAPI/IR.h"


namespace py = pybind11;

namespace mlir::python {

/// Template for a reference to a concrete type which captures a python
/// reference to its underlying python object.
template <typename T> class PyObjectRef {
public:
  PyObjectRef(T *referrent, pybind11::object object)
      : referrent(referrent), object(std::move(object)) {
    assert(this->referrent &&
           "cannot construct PyObjectRef with null referrent");
    assert(this->object && "cannot construct PyObjectRef with null object");
  }
  PyObjectRef(PyObjectRef &&other)
      : referrent(other.referrent), object(std::move(other.object)) {
    other.referrent = nullptr;
    assert(!other.object);
  }
  PyObjectRef(const PyObjectRef &other)
      : referrent(other.referrent), object(other.object /* copies */) {}
  ~PyObjectRef() = default;

  T *operator->() {
    assert(referrent && object);
    return referrent;
  }
  pybind11::object getObject() {
    assert(referrent && object);
    return object;
  }
  explicit operator bool() const { return referrent && object; }

private:
  T *referrent;
  pybind11::object object;
};

/// Wrapper around MlirContext.
class PyMlirContext {
public:
  PyMlirContext() = delete;
  PyMlirContext(const PyMlirContext &) = delete;
  PyMlirContext(PyMlirContext &&) = delete;

  explicit PyMlirContext(MlirContext context) : context(context){};

  MlirContext context;
};

using PyMlirContextRef = PyObjectRef<PyMlirContext>;

class BaseContextObject {
public:
  explicit BaseContextObject(PyMlirContextRef ref)
      : contextRef(std::move(ref)) {
    assert(this->contextRef &&
           "context object constructed with null context ref");
  }
  PyMlirContextRef &getContext() { return contextRef; }

  PyMlirContextRef contextRef;
};

template <typename DerivedTy>
DerivedTy createFromCapsule(const py::capsule capsule) {
  MlirAttribute rawAttr = {capsule.get_pointer()};
  if (mlirAttributeIsNull(rawAttr))
    throw py::error_already_set();

  MlirContext ctx = mlirAttributeGetContext(rawAttr);
  auto *unownedContextWrapper = new PyMlirContext(ctx);
  auto pyCtxRef =
      py::reinterpret_steal<py::object>(mlirPythonContextToCapsule(ctx));
  assert(pyCtxRef && "cast to py::object failed");
  auto ctxRef = PyMlirContextRef(unownedContextWrapper, std::move(pyCtxRef));

  return {std::move(ctxRef), rawAttr};
}

class PyAttribute : public BaseContextObject {
public:
  PyAttribute(PyMlirContextRef contextRef, MlirAttribute attr)
      : BaseContextObject(std::move(contextRef)), attr(attr) {}
  [[nodiscard]] MlirAttribute get() const { return attr; }
  MlirAttribute attr;
};

template <typename DerivedTy, typename BaseTy = PyAttribute>
class PyConcreteAttribute : public BaseTy {
public:
  PyConcreteAttribute() = default;
  PyConcreteAttribute(PyMlirContextRef contextRef, MlirAttribute attr)
      : BaseTy(std::move(contextRef), attr) {}
};

class PyAffineMapAttribute : public PyConcreteAttribute<PyAffineMapAttribute> {
public:
  using PyConcreteAttribute::PyConcreteAttribute;

  static PyAffineMapAttribute createFromCapsule(const py::capsule &capsule) {
    return ::mlir::python::createFromCapsule<PyAffineMapAttribute>(capsule);
  }
};

class PyAffineMap : public BaseContextObject {
public:
  PyAffineMap(PyMlirContextRef contextRef, MlirAffineMap affineMap)
      : BaseContextObject(std::move(contextRef)), affineMap(affineMap) {}

  static PyAffineMap createFromCapsule(const py::capsule &capsule) {
    MlirAffineMap rawAffineMap = {capsule.get_pointer()};
    if (mlirAffineMapIsNull(rawAffineMap))
      throw py::error_already_set();

    MlirContext ctx = mlirAffineMapGetContext(rawAffineMap);
    auto *unownedContextWrapper = new PyMlirContext(ctx);
    auto pyCtxRef =
        py::reinterpret_steal<py::object>(mlirPythonContextToCapsule(ctx));
    assert(pyCtxRef && "cast to py::object failed");
    auto ctxRef = PyMlirContextRef(unownedContextWrapper, std::move(pyCtxRef));

    return {std::move(ctxRef), rawAffineMap};
  }

  MlirAffineMap affineMap;
};

} // namespace mlir::python

namespace pybind11::detail {
/// Casts object <-> MlirAffineExpr.
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

/// Casts object <-> MlirAffineMap.
template <> struct type_caster<MlirValue> {
  PYBIND11_TYPE_CASTER(MlirValue, _("MlirValue"));

  bool load(handle src, bool) {
    py::object capsule = mlirApiObjectToCapsule(src);
    value = mlirPythonCapsuleToValue(capsule.ptr());
    if (mlirValueIsNull(value)) {
      return false;
    }
    return !mlirValueIsNull(value);
  }

  static handle cast(MlirValue v, return_value_policy, handle) {
    auto capsule =
        py::reinterpret_steal<py::object>(mlirPythonValueToCapsule(v));
    return py::module::import(MAKE_MLIR_PYTHON_QUALNAME("ir"))
        .attr("Value")
        .attr(MLIR_PYTHON_CAPI_FACTORY_ATTR)(capsule)
        .release();
  }
};

} // namespace pybind11::detail

template <typename T> T* unwrapApiObject(const py::handle apiObject) {
  return unwrap(mlirPythonCapsuleToOperation(
      py::detail::mlirApiObjectToCapsule(apiObject).ptr()));
}

#endif // LOOPY_MLIR_BINDINGS_PYTHON_IRMODULES_H
