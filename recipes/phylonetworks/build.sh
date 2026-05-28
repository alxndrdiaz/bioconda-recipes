#!/bin/bash -e

# install phylonetworks
julia -e 'using Pkg; Pkg.add(name="PhyloNetworks", version="1.3.1")'

# copy the scripts and dependencies
PHYLONETWORKS_DIR=${PREFIX}/share/phylonetworks
mkdir -p "${PHYLONETWORKS_DIR}"
cp ./Project.toml "${PHYLONETWORKS_DIR}"
cp -r ./src "${PHYLONETWORKS_DIR}"
mkdir -p "${PREFIX}/bin"
ln -s "${PHYLONETWORKS_DIR}/src/PhyloNetworks.jl" "${PREFIX}/bin/PhyloNetworks.jl"