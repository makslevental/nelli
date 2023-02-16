#FROM arm64v8/ubuntu:20.04
FROM balenalib/raspberrypi4-64-ubuntu-python:3.10-focal-build

ENV PATH="/root/mambaforge/bin:${PATH}"
ARG PATH="/root/mambaforge/bin:${PATH}"
ARG PY_VERSION="3.10"
ARG WORKDIR="repo"

ADD . $WORKDIR

WORKDIR $WORKDIR

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Chicago
RUN apt-get update && apt-get install -y tzdata

RUN apt-get install -y git vim clang ninja-build llvm lldb gdb
# gdb --args something arg arg

RUN curl -L -O https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh \
    && mkdir /root/.conda \
    && sh Mambaforge-$(uname)-$(uname -m).sh -b -p $HOME/mambaforge
RUN conda --version
RUN eval "$($HOME/mambaforge/bin/conda shell.bash hook)" \
    && conda activate base \
    && conda install python=${PY_VERSION}

RUN eval "$($HOME/mambaforge/bin/conda shell.bash hook)" \
    && conda activate base \
    && CC=gcc CXX=g++ pip install z3-solver cmake -vvvv

RUN eval "$($HOME/mambaforge/bin/conda shell.bash hook)" \
    && conda activate base \
    && pip install -r requirements.txt -vvvv

RUN eval "$($HOME/mambaforge/bin/conda shell.bash hook)" \
    && conda activate base \
    && pip wheel . --no-build-isolation --no-deps -vvvv -w wheelhouse

RUN eval "$($HOME/mambaforge/bin/conda shell.bash hook)" \
    && conda activate base \
    && pip install loopy-0.0.3-cp310-cp310-linux_aarch64.whl

RUN eval "$($HOME/mambaforge/bin/conda shell.bash hook)" \
    && conda activate base \
    && pytest tests/*.py \