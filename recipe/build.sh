#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/libtool/build-aux/config.* .

./configure --prefix=${PREFIX} --enable-python-bindings=no

make -j${CPU_COUNT} ${VERBOSE_AT}
