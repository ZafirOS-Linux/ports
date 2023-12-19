#!/bin/sh

# The port 'mingw-w64-gcc-base' is a temporary requirement to compile 'mingw-w64-winpthreads', 
# before 'mingw-w64-gcc' installation it will be removed
zfr isinstalled mingw-w64-gcc-base || zfr install -y mingw-w64-gcc-base
