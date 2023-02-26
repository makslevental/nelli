import platform
import shutil
import subprocess
from pathlib import Path

mlir_libs_dir = Path(__file__).parent.parent / "nelli/mlir/_mlir/_mlir_libs"

if platform.system() == "Darwin":
    shlib_ext = "dylib"
elif platform.system() == "Linux":
    shlib_ext = "so"
else:
    raise NotImplementedError(f"unknown platform {platform.system()}")

for shlib in [
    "LTO",
    "MLIR-C",
    "mlir_async_runtime",
    "mlir_c_runner_utils",
    "mlir_float16_utils",
    "mlir_runner_utils",
    "gomp",
    "iomp5",
    "omp",
    "vulkan-runtime-wrappers",
]:
    shlib_name = f"lib{shlib}.{shlib_ext}"
    llvm_install_dir = (Path(__file__).parent.parent / "llvm_install").absolute()
    assert llvm_install_dir.exists(), f"{llvm_install_dir}"
    llvm_install_fp = (llvm_install_dir / "lib" / shlib_name).absolute()
    assert llvm_install_fp.exists(), f"{llvm_install_fp}"
    dst_path = mlir_libs_dir / shlib_name
    shutil.copyfile(llvm_install_fp, dst_path)
    if platform.system() == "Linux":
        shutil.copyfile(llvm_install_fp, f"{dst_path}.17git")
        subprocess.run(
            ["patchelf", "--set-rpath", "$ORIGIN", dst_path],
            check=True,
        )
        subprocess.run(
            ["patchelf", "--set-rpath", "$ORIGIN", f"{dst_path}.17git"],
            check=True,
        )
