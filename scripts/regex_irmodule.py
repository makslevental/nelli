import sys
import re

with open(sys.argv[1]) as f:
    f = f.read()
with open(sys.argv[1], "w") as ff:
    res = re.sub(
        r"^class ((?!PYBIND11_EXPORT).*) {$",
        r"class PYBIND11_EXPORT \1 {",
        f,
        flags=re.MULTILINE,
    )
    ff.write(res)
