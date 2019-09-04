#!/usr/bin/env bash

# This is after pycharmremote has set up the repos....
pip install --user -e pycharmremote/datacube-core/
# pyproject.toml doesn't work with the pip command
rm pycharmremote/eo-datasets/pyproject.toml
pip install --user -e pycharmremote/eo-datasets/
pip install --user -e pycharmremote/datacube-alchemist
pip install --user -e pycharmremote/digitalearthau #haven't done
pip install --user -e pycharmremote/datacube-stats/
