#!/bin/bash

set -x
set -e

mkdir build
cd build

export SETUPTOOLS_SCM_PRETEND_VERSION=${PKG_VERSION}

cmake \
  -GNinja \
  -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF \
  -DBUILD_PYTHON_WRAPPERS=ON -DUSE_OPENMP=OFF \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} -DPYTHON_EXECUTABLE=${PYTHON} \
  ../

cmake --build --target install ./
