#!/usr/bin/env bash

SANDPIT=$HOME/sandpit

# This is after pycharmremote has set up the repos....
pip install --user -e $SANDPIT/datacube-core/
# pyproject.toml doesn't work with the pip command
rm $SANDPIT/eo-datasets/pyproject.toml
pip install --user -e $SANDPIT/eo-datasets
# git checkout -- pyproject.toml
pip install --user -e $SANDPIT/datacube-alchemist
pip install --user -e $SANDPIT/digitalearthau #haven't done
pip install --user -e $SANDPIT/datacube-stats
pip install --user -e $SANDPIT/fc
