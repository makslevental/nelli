import os
import platform
import re
import subprocess
import sys
import tarfile
import urllib.request
from pathlib import Path

from pip._internal.req import parse_requirements
from setuptools import Extension, setup, find_namespace_packages
from setuptools.command.build_ext import build_ext

# Convert distutils Windows platform specifiers to CMake -A arguments
PLAT_TO_CMAKE = {
    "win-amd64": "x64",
    "win-arm32": "ARM",
    "win-arm64": "ARM64",
}


def get_llvm_url():
    system = platform.system()
    system_suffix = {"Linux": "linux-gnu-ubuntu-20.04", "Darwin": "apple-darwin"}[
        system
    ]
    LIB_ARCH = os.environ.get("LIB_ARCH", platform.machine())
    assert LIB_ARCH, "empty LIB_ARCH"
    # print(f"ARCH {LIB_ARCH}")
    LLVM_RELEASE_VERSION = os.environ.get("LLVM_RELEASE_VERSION", "15.0.7")
    assert LLVM_RELEASE_VERSION, "empty LLVM_RELEASE_VERSION"
    # print(f"ARCH {LIB_ARCH}")
    name = f"llvm+mlir+python-{sys.version_info.major}.{sys.version_info.minor}-{LLVM_RELEASE_VERSION}-{LIB_ARCH}-{system_suffix}-release"
    url = f"https://github.com/makslevental/llvm-releases/releases/download/llvm-{LLVM_RELEASE_VERSION}/{name}.tar.xz"
    return url


# A CMakeExtension needs a sourcedir instead of a file list.
# The name must be the _single_ output extension from the CMake build.
# If you need multiple extensions, see scikit-build.
class CMakeExtension(Extension):
    def __init__(self, name: str, sourcedir: str = "") -> None:
        super().__init__(name, sources=[])
        self.sourcedir = os.fspath(Path(sourcedir).resolve())


class CMakeBuild(build_ext):
    def build_extension(self, ext: CMakeExtension) -> None:
        # Must be in this form due to bug in .resolve() only fixed in Python 3.10+
        ext_fullpath = Path.cwd() / self.get_ext_fullpath(ext.name)  # type: ignore[no-untyped-call]
        ext_build_lib_dir = ext_fullpath.parent.resolve()

        debug = int(os.environ.get("DEBUG", 0)) if self.debug is None else self.debug
        cfg = "Debug" if debug else "Release"

        cmake_generator = os.environ.get("CMAKE_GENERATOR", "")
        cmake_args = [
            f"-DCMAKE_INSTALL_PREFIX={ext_build_lib_dir}/{PACKAGE_NAME}",
            f"-DPython3_EXECUTABLE={sys.executable}",
            f"-DCMAKE_BUILD_TYPE={cfg}",  # not used on MSVC, but no harm
        ]
        llvm_install_dir = os.environ.get("LLVM_INSTALL_DIR", None)
        if llvm_install_dir is not None:
            cmake_args.append(f"-DLLVM_INSTALL_DIR={llvm_install_dir}")
        build_args = []
        if "CMAKE_ARGS" in os.environ:
            cmake_args += [item for item in os.environ["CMAKE_ARGS"].split(" ") if item]

        if not cmake_generator or cmake_generator == "Ninja":
            try:
                import ninja  # noqa: F401

                ninja_executable_path = Path(ninja.BIN_DIR) / "ninja"
                cmake_args += [
                    "-GNinja",
                    f"-DCMAKE_MAKE_PROGRAM:FILEPATH={ninja_executable_path}",
                ]
            except ImportError:
                pass

        if sys.platform.startswith("darwin"):
            # Cross-compile support for macOS - respect ARCHFLAGS if set
            archs = re.findall(r"-arch (\S+)", os.environ.get("ARCHFLAGS", ""))
            if archs:
                cmake_args += ["-DCMAKE_OSX_ARCHITECTURES={}".format(";".join(archs))]

        if "CMAKE_BUILD_PARALLEL_LEVEL" not in os.environ:
            # self.parallel is a Python 3 only way to set parallel jobs by hand
            # using -j in the build_ext call, not supported by pip or PyPA-build.
            if hasattr(self, "parallel") and self.parallel:
                # CMake 3.12+ only.
                build_args += [f"-j{self.parallel}"]

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


PACKAGE_NAME = "loopy"

packages = find_namespace_packages(
    include=[
        PACKAGE_NAME,
        f"{PACKAGE_NAME}.*",
    ],
)

VERSION = "0.0.0"

if len(sys.argv) > 1 and sys.argv[1] == "--version":
    print(VERSION)
elif len(sys.argv) > 1 and sys.argv[1] == "--llvm-url":
    print(get_llvm_url())
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
        install_requires=[str(ir.requirement) for ir in install_reqs],
    )
