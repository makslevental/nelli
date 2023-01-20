# Loopy

Loops for the polyhedrally challenged.

# Installing

Just

[//]: # (```shell)

[//]: # (pip install - requirements.txt )

[//]: # (pip install . --no-build-isolation)

[//]: # (```)

# Development

Use this for CMake

```bash
-DCMAKE_INSTALL_PREFIX=<SRC_ROOT>/loopy/loopy \
-DPython3_EXECUTABLE=python \
-DCMAKE_PREFIX_PATH=<LLVM_INSTALL>/install
```