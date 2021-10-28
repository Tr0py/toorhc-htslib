#!/bin/bash
set -x
# generate config files
autoreconf -i
./configure --prefix=$(pwd)/install/toorhc --disable-lzma
# add necessary library for running toorhc
sed -i '$ a LIBS += -ldl ' config.mk
make clean
make -j
make install
