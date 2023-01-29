#include "IRModule.h"
#include "mlir-c/AffineExpr.h"
#include "mlir-c/Bindings/Python/Interop.h"
#include "mlir-c/BuiltinAttributes.h"
#include "mlir-c/IR.h"
#include "mlir/Bindings/Python/PybindAdaptors.h"
#include "mlir/CAPI/AffineExpr.h"
#include "mlir/CAPI/AffineMap.h"
#include "mlir/CAPI/IR.h"
#include "mlir/CAPI/Wrap.h"
#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineStructures.h"
#include "mlir/Dialect/Affine/Analysis/Utils.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/IR/AffineValueMap.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/AffineExprVisitor.h"
#include "mlir/IR/Operation.h"
#include <pybind11/functional.h>
#include <pybind11/pybind11.h>

#include "affine_analysis.h"

namespace py = pybind11;
using namespace mlir::python;
using namespace mlir;
using namespace presburger;
using namespace tabulate;

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

static mlir::LogicalResult
getOpIndexSet(mlir::Operation *op, mlir::FlatAffineValueConstraints *indexSet) {
  llvm::SmallVector<mlir::Operation *, 4> ops;
  mlir::getEnclosingAffineForAndIfOps(*op, &ops);
  return getIndexSet(ops, indexSet);
}

class PyAffineMapAttribute : public PyConcreteAttribute<PyAffineMapAttribute> {
public:
  using PyConcreteAttribute::PyConcreteAttribute;
};

template <typename T> T *unwrapApiObject(const py::handle apiObject) {
  return unwrap(mlirPythonCapsuleToOperation(
      py::detail::mlirApiObjectToCapsule(apiObject).ptr()));
}

PYBIND11_MODULE(_loopy_mlir, m) {
  auto mod = py::module_::import(MAKE_MLIR_PYTHON_QUALNAME("ir"));
  m.def("walk_affine_exprs",
        [](PyAffineMap &self,
           std::function<void(size_t resIdx, MlirAffineExpr expr)> callback) {
          for (const auto &idx_expr :
               llvm::enumerate(unwrap(self.get()).getResults())) {
            auto idx = idx_expr.index();
            auto expr = idx_expr.value();
            expr.walk([&callback, &idx](mlir::AffineExpr expr) {
              callback(idx, wrap(expr));
            });
          }
        });

  m.def("walk_operation",
        [](PyOperation &self, std::function<void(MlirOperation)> callback) {
          unwrap(self.get())->walk([&callback](Operation *op) {
            callback(wrap(op));
          });
        });

  m.def("get_affine_map_from_attr", [](PyAttribute &self) {
    auto aff_map =
        PyAffineMap(self.getContext(), mlirAffineMapAttrGetValue(self.get()));
    return aff_map.get();
  });

  m.def("print_value_as_operand", [](const py::handle valueApiObject) {
    auto capsule = pybind11::detail::mlirApiObjectToCapsule(valueApiObject);
    MlirValue mlirValue = mlirPythonCapsuleToValue(capsule.ptr());
    return showValueAsOperand(unwrap(mlirValue));
  });
  m.def("get_affine_value_map", [](const py::handle affineOpApiObject) {
    auto capsule = pybind11::detail::mlirApiObjectToCapsule(affineOpApiObject);
    MlirOperation mlirAffineOp = mlirPythonCapsuleToOperation(capsule.ptr());
    if (mlirOperationIsNull(mlirAffineOp)) {
      throw py::value_error("not an operation");
    }
    mlir::Operation *mlirOp = unwrap(mlirAffineOp);
    mlir::AffineValueMap valueMap;
    if (llvm::isa<mlir::AffineApplyOp>(mlirOp)) {
      AffineApplyOp affineApplyOp = llvm::cast<mlir::AffineApplyOp>(mlirOp);
      valueMap = affineApplyOp.getAffineValueMap();
    } else
      throw py::value_error("has to be affine apply op");
    py::list dims;
    py::list syms;
    for (unsigned int i = 0; i < valueMap.getNumDims(); ++i) {
      auto v = valueMap.getOperand(i);
      dims.append(showValueAsOperand(v));
    }
    for (unsigned int i = valueMap.getNumDims();
         i < valueMap.getNumDims() + valueMap.getNumSymbols(); ++i) {
      auto v = valueMap.getOperand(i);
      syms.append(showValueAsOperand(v));
    }
    return py::make_tuple(dims, syms);
  });
  m.def("get_access_relation", [](const py::handle affineOpApiObject) {
    auto capsule = pybind11::detail::mlirApiObjectToCapsule(affineOpApiObject);
    MlirOperation mlirAffineOp = mlirPythonCapsuleToOperation(capsule.ptr());
    if (mlirOperationIsNull(mlirAffineOp))
      throw py::value_error("not an operation");
    mlir::Operation *mlirOp = unwrap(mlirAffineOp);
    if (!mlirOp)
      throw py::value_error("didn't unwrap affineOp");
    if (llvm::isa<mlir::AffineStoreOp>(mlirOp)) {
      mlirOp = llvm::dyn_cast<mlir::AffineStoreOp>(mlirOp);
    } else if (llvm::isa<mlir::AffineLoadOp>(mlirOp)) {
      mlirOp = llvm::dyn_cast<mlir::AffineLoadOp>(mlirOp);
    } else
      throw py::value_error(
          "has to be either affine load op or affine store op");

    mlir::MemRefAccess *access;
    access = new mlir::MemRefAccess(mlirOp);
    py::dict indices;
    for (const auto &pos_idx : llvm::enumerate(access->indices)) {
      indices[py::cast<>(pos_idx.index())] =
          showValueAsOperand(pos_idx.value());
    }

    mlir::FlatAffineValueConstraints domain;
    getOpIndexSet(mlirOp, &domain);
    mlir::FlatAffineRelation domainRel(domain.getNumDimVars(),
                                       /*numRangeDims=*/0, domain);
    py::dict bounds;
    for (unsigned i = 0; i < domainRel.getNumDimAndSymbolVars(); ++i) {
      py::dict bound;
      if (domainRel.hasValue(i)) {
        bound["LB"] = domainRel.getConstantBound(
            mlir::presburger::IntegerRelation::LB, i);
        bound["UB"] = domainRel.getConstantBound(
            mlir::presburger::IntegerRelation::UB, i);
        bound["EQ"] = domainRel.getConstantBound(
            mlir::presburger::IntegerRelation::EQ, i);
        bounds[py::cast<>(wrap(domainRel.getValue(i)))] = bound;
      }
    }
    return py::make_tuple(bounds, indices);
  });

  m.def("show_access_relation",
        [](const py::handle srcOpApiObject, const py::handle dstOpApiObject) {
          auto *srcOp = unwrapApiObject<mlir::Operation>(srcOpApiObject);
          auto *dstOp = unwrapApiObject<mlir::Operation>(dstOpApiObject);
          myCheckDependenceSrcDst(srcOp, dstOp);
        });
}
