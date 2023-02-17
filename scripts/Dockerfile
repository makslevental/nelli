# syntax=docker/dockerfile:1

ARG PY_VERSION="3.11"

FROM balenalib/raspberrypi4-64-ubuntu-python:${PY_VERSION}-jammy-build as nelli_base

RUN apt-get update && apt-get install -y gcc rsync

ARG WORKDIR="repo"

ADD . $WORKDIR

WORKDIR $WORKDIR

RUN pip install -r build-requirements.txt && \
    export CMAKE_BUILD_PARALLEL_LEVEL=$(nproc) && \
    pip wheel z3-solver==4.12.1.0 -w wheelhouse -v

RUN z3wheel=$(ls wheelhouse | head -1) && \
    auditwheel repair --plat manylinux_2_35_aarch64 wheelhouse/$z3wheel && \
    rm wheelhouse/$z3wheel

RUN pip wheel . --no-deps --no-build-isolation -v -w wheelhouse && rm -rf nelli.egg-info