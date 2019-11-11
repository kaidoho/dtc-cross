#!/bin/bash
INSTALL_DIR=${PWD}/install
git clone git://git.kernel.org/pub/scm/utils/dtc/dtc.git
cd dtc
git checkout v1.5.1
cp ../mingw.patch .
git apply mingw.patch
export DESTDIR=${INSTALL_DIR}
make CC=x86_64-w64-mingw32-gcc 
make  DESTDIR=${INSTALL_DIR} install
