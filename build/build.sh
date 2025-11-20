#!/bin/bash

# create temporary directory
mkdir bb
cd bb &&
# run cmake
cmake ../.. &&
# run make
make &&
# back to build directory
cd ..

