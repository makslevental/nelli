//===- IRModules.h - IR Submodules of pybind module -----------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef MLIR_BINDINGS_PYTHON_IRMODULES_H
#define MLIR_BINDINGS_PYTHON_IRMODULES_H

#include <iostream>
#include <utility>
#include <vector>

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

#endif // MLIR_BINDINGS_PYTHON_IRMODULES_H
