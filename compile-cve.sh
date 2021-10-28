#!/bin/bash
set -x
# generate config files
autoreconf -i
./configure --prefix=$(pwd)/install/cve
# enable address sanitizer
sed -i '$ a LDFLAGS += -fsanitize=address ' config.mk
sed -i '$ a CFLAGS += -fsanitize=address ' config.mk
make clean
make -j
make install
