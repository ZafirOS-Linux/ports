#!/bin/sh

# The port 'python3-libxml2' conflicts with 'libxml2', now build with Python
zfr isinstalled python3-libxml2 && zfr remove -y python3-libxml2
