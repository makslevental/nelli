import os
import platform
import shutil
import subprocess
import sys
import tarfile
import urllib.request
from pathlib import Path

from pip._internal.req import parse_requirements
from setuptools import Extension, setup, find_namespace_packages
from setuptools.command.build_ext import build_ext


class CMakeExtension(Extension):
    def __init__(self, name: str, sourcedir: str = "") -> None:
        super().__init__(name, sources=[])
        self.sourcedir = os.fspath(Path(sourcedir).resolve())


def download_native_tools(package_root_dir, cmake_args):
    if platform.system() == "Linux":
        system = "ubuntu-20.04-x86_64"
    elif platform.system() == "Darwin":
        system = "macos-11-x86_64"
    elif platform.system() == "Windows":
        system = "windows-2022-AMD64"
    else:
        raise ValueError(f"unknown system {platform.system()}")
    url = f"https://github.com/makslevental/cibuildwheel-llvm-mlir/releases/download/latest/{system}-native_tools.tar.xz"
    ftpstream = urllib.request.urlopen(url)
    file = tarfile.open(fileobj=ftpstream, mode="r|*")
    file.extractall(path=package_root_dir)
    cmake_args.extend(
        [
            f"-DLLVM_TABLEGEN={os.getcwd()}/bin/llvm-tblgen",
            f"-DMLIR_LINALG_ODS_YAML_GEN={os.getcwd()}/bin/mlir-linalg-ods-yaml-gen",
            f"-DMLIR_LINALG_ODS_YAML_GEN_EXE={os.getcwd()}/bin/mlir-linalg-ods-yaml-gen",
            f"-DMLIR_PDLL_TABLEGEN={os.getcwd()}/bin/mlir-pdll",
            f"-DMLIR_TABLEGEN={os.getcwd()}/bin/mlir-tblgen",
        ]
    )


class CMakeBuild(build_ext):
    def build_extension(self, ext: CMakeExtension) -> None:
        ext_fullpath = Path.cwd() / self.get_ext_fullpath(ext.name)  # type: ignore[no-untyped-call]
        ext_build_lib_dir = ext_fullpath.parent.resolve()

        debug = int(os.environ.get("DEBUG", 0)) if self.debug is None else self.debug
        cfg = "Debug" if debug else "Release"

        cmake_generator = os.environ.get("CMAKE_GENERATOR", "")
        cmake_args = [
            f"-DCMAKE_INSTALL_PREFIX={ext_build_lib_dir}/{PACKAGE_NAME}/mlir",
            f"-DPython3_EXECUTABLE={sys.executable}",
            f"-DCMAKE_BUILD_TYPE={cfg}",  # not used on MSVC, but no harm
        ]
        llvm_install_dir = os.environ.get("LLVM_INSTALL_DIR", None)
        if llvm_install_dir is not None:
            cmake_args.append(f"-DLLVM_INSTALL_DIR={llvm_install_dir}")
        else:
            import mlir

            assert len(mlir.__path__), "mlir path doesn't exist"
            cmake_args.append(f"-DLLVM_INSTALL_DIR={mlir.__path__[0]}")

        # if os.getenv("CIBW_ARCHS") != platform.machine():
        #     download_native_tools(os.getcwd(), cmake_args)

        build_args = []
        if "CMAKE_ARGS" in os.environ:
            cmake_args += [item for item in os.environ["CMAKE_ARGS"].split(" ") if item]

        if not cmake_generator or cmake_generator == "Ninja":
            try:
                import ninja

                ninja_executable_path = Path(ninja.BIN_DIR) / "ninja"
                cmake_args += [
                    "-GNinja",
                    f"-DCMAKE_MAKE_PROGRAM:FILEPATH={ninja_executable_path}",
                ]
            except ImportError:
                pass

        if "PARALLEL_LEVEL" not in os.environ:
            build_args += [f"-j{str(2 * os.cpu_count())}"]
        else:
            build_args += [f"-j{os.environ.get('PARALLEL_LEVEL')}"]

        build_temp = Path(self.build_temp) / ext.name
        if not build_temp.exists():
            build_temp.mkdir(parents=True)

        subprocess.run(
            ["cmake", ext.sourcedir] + cmake_args, cwd=build_temp, check=True
        )
        subprocess.run(
            ["cmake", "--build", ".", "--target", "install"] + build_args,
            cwd=build_temp,
            check=True,
        )

        if platform.system() == "Darwin":
            shlib_ext = "dylib"
        elif platform.system() == "Linux":
            shlib_ext = "so"
        else:
            raise NotImplementedError(f"unknown platform {platform.system()}")

        mlir_libs_dir = Path(
            f"{ext_build_lib_dir}/{PACKAGE_NAME}/mlir/_mlir/_mlir_libs"
        )
        shlibs = [
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
            "mlir_async_runtime",
        ]
        if platform.system() == "Linux" and platform.processor() == "x86_64":
            shlibs += ["mlir_cuda_runtime"]

        for shlib in shlibs:
            shlib_name = f"lib{shlib}.{shlib_ext}"
            llvm_install_dir = (Path(".").parent / "llvm_install").absolute()
            if not llvm_install_dir.exists():
                continue
            llvm_install_fp = (llvm_install_dir / "lib" / shlib_name).absolute()
            if not llvm_install_fp.exists():
                continue
            dst_path = mlir_libs_dir / shlib_name
            shutil.copyfile(llvm_install_fp, dst_path)
            if platform.system() == "Linux":
                shutil.copyfile(llvm_install_fp, f"{dst_path}.17git")
                subprocess.run(
                    ["patchelf", "--set-rpath", "$ORIGIN", dst_path],
                    cwd=build_temp,
                    check=True,
                )
                subprocess.run(
                    ["patchelf", "--set-rpath", "$ORIGIN", f"{dst_path}.17git"],
                    cwd=build_temp,
                    check=True,
                )


PACKAGE_NAME = "nelli"

packages = find_namespace_packages(
    include=[
        PACKAGE_NAME,
        f"{PACKAGE_NAME}.*",
    ],
)

VERSION = "0.0.8"

if len(sys.argv) > 1 and sys.argv[1] == "--version":
    print(VERSION)
else:
    install_reqs = parse_requirements("requirements.txt", session="hack")
    setup(
        name=PACKAGE_NAME,
        version=VERSION,
        description="Loop analysis for the polyhedrally challenged.",
        author="Maksim Levental",
        author_email="maksim.levental@gmail.com",
        ext_modules=[CMakeExtension("_mlir")],
        cmdclass={"build_ext": CMakeBuild},
        packages=packages,
        zip_safe=False,
        install_requires=[
            str(ir.requirement)
            for ir in install_reqs
            if "git" not in str(ir.requirement)
        ],
    )
