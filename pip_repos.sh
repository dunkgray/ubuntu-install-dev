#!/usr/bin/env bash

# 
DESTDIR=/home/$USER
__conda_setup="$(${DESTDIR}/bin/conda 'shell.bash' 'hook' 2> /dev/null)"
eval "$__conda_setup"

conda activate dea

SANDBOX=$HOME/sandbox

# This is after repo set up ....
pip install --user -e $SANDBOX/datacube-core/
# pyproject.toml doesn't work with the pip command
rm $SANDBOX/eo-datasets/pyproject.toml
pip install --user -e $SANDBOX/eo-datasets
# git checkout -- pyproject.toml
pip install --user -e $SANDBOX/digitalearthau #haven't done
pip install --user -e $SANDBOX/datacube-stats
pip install --user -e $SANDBOX/wagl
