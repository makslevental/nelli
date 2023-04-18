import sys
import re
from os.path import exists


def ir_module(fp):
    with open(fp) as f:
        f = f.read()
    if not exists(f"{fp}.bkup"):
        with open(f"{fp}.bkup", "w") as bkup:
            bkup.write(f)
        with open(fp, "w") as ff:
            res = re.sub(
                r"^class ((?!PYBIND11_EXPORT).*) {$",
                r"class PYBIND11_EXPORT \1 {",
                f,
                flags=re.MULTILINE,
            )
            res = res.replace(
                "class DefaultingPyMlirContext",
                "class PYBIND11_EXPORT DefaultingPyMlirContext",
            )
            ff.write(res)


def ir_core(fp):
    with open(fp) as f:
        f = f.read()
    if not exists(f"{fp}.bkup"):
        with open(f"{fp}.bkup", "w") as bkup:
            bkup.write(f)
        with open(fp, "w") as ff:
            res = f.replace(", py::module_local()", "")
            ff.write(res)


if __name__ == "__main__":
    fp = sys.argv[1]
    if fp.endswith("IRModule.h") or fp.endswith("PybindUtils.h"):
        ir_module(fp)
    elif fp.endswith("IRCore.cpp") or fp.endswith("IRAffine.cpp"):
        ir_core(fp)
    else:
        raise NotImplementedError(f"unknown fp {fp=}")
