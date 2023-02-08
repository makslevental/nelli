```
python: /home/mlevental/dev_projects/loopy/llvm_install/src/python/MLIRPythonExtension.Core/IRCore.cpp:1052: static mlir::python::PyOperationRef mlir::python::PyOperation::createDetached(mlir::python::PyMlirContextRef, MlirOperation, pybind11::object): Assertion `liveOperations.count(operation.ptr) == 0 && "cannot create detached operation that already exists"' failed.
```

in debug compile