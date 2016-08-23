#!/bin/sh

## Clone graphene repo and submodules
git clone https://github.com/followmyvote/graphene --recursive
cd graphene

# Configure build
cmake . -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/var/fmv/local -G Ninja

# Build and install
ninja
ninja install

# Clean up source
cd ..
rm -rf graphene
