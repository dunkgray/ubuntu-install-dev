#!/usr/bin/env bash

SANDBOX=$HOME/sandbox

# This is after pycharmremote has set up the repos....
pip install --user -e $SANDBOX/datacube-core/
# pyproject.toml doesn't work with the pip command
rm $SANDPIT/eo-datasets/pyproject.toml
pip install --user -e $SANDBOX/eo-datasets
# git checkout -- pyproject.toml
pip install --user -e $SANDBOX/datacube-alchemist
pip install --user -e $SANDBOX/digitalearthau #haven't done
pip install --user -e $SANDBOX/datacube-stats
pip install --user -e $SANDBOX/fc
