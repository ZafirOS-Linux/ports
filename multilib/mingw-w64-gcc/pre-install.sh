#!/bin/sh

# The port 'mingw-w64-gcc-base' conflicts with 'mingw-w64-gcc', remove 'mingw-w64-gcc-base' before installing 'mingw-w64-gcc'
zfr isinstalled mingw-w64-gcc-base && zfr remove -y mingw-w64-gcc-base
