# syntax=docker/dockerfile:1

ARG PY_VERSION="3.11"

FROM balenalib/raspberrypi4-64-ubuntu-python:${PY_VERSION}-jammy-build as nelli_base

# gdb --args something arg arg
RUN apt-get update && apt-get install -y gcc rsync

RUN CMAKE_BUILD_PARALLEL_LEVEL=$(nproc) pip install z3-solver==4.12.1.0 cmake -vvvv

FROM nelli_base as nelli

ARG WORKDIR="repo"

ADD . $WORKDIR

WORKDIR $WORKDIR

RUN pip install -r requirements.txt -vvvv

RUN pip wheel . --no-deps --no-build-isolation -vvvv -w wheelhouse && rm -rf nelli.egg-info

RUN pip install wheelhouse/$(ls wheelhouse | head -1) --no-build-isolation

RUN cd tests && pytest *.py