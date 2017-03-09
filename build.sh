#!/usr/bin/env bash
# Simple rebuild script which assumes dependencies are prepared (e.g., using
# 'setup-and-build.sh') and which does no pre-cleaning.

# Make sure we're at the root of the project.
cd "$( dirname "${BASH_SOURCE[0]}" )"

(cd Core && rm -r build && mkdir build && cd build && cmake ../src && make -j)
(cd GPUTest && rm -r build && mkdir build && cd build && cmake ../src && make -j)
(cd GUI && rm -r build && mkdir build && cd build && cmake ../src && make -j)
