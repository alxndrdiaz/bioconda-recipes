#!/bin/bash -e

# install phylonetworks
julia -e 'using Pkg; Pkg.add(name="PhyloNetworks", version="1.3.1")'

# copy the scripts and dependencies
PHYLONETWORKS_DIR=$PREFIX/share/julia
mkdir -p "${PHYLONETWORKS_DIR}"
cp ./Project.toml "${PHYLONETWORKS_DIR}"
cp -r ./src "${PHYLONETWORKS_DIR}"
