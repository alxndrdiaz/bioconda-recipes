#!/bin/bash -e

# install phylonetworks
julia -e 'using Pkg; Pkg.add(name="PhyloNetworks", version="1.3.1")'

# copy the scripts and dependencies
PHYLONETWORKS_DIR=${PREFIX}/share/phylonetworks/src
mkdir -p "${PHYLONETWORKS_DIR}"
cp -r {src,Project.toml} "${PHYLONETWORKS_DIR}"