#!/usr/bin/env bash

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
