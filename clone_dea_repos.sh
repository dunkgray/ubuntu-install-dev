#!/bin/bash

# let's get some repos
SANDBOX=$HOME/sandbox

mkdir -p  $SANDBOX/

CURR=$PWD

#
#git clone git@github.com:GeoscienceAustralia/.git $SANDBOX/
git clone git@github.com:GeoscienceAustralia/dea-ard-scene-select.git $SANDBOX/dea-ard-scene-select
git clone git@github.com:GeoscienceAustralia/eo-datasets.git $SANDBOX/eo-datasets
git clone git@github.com:opendatacube/datacube-core.git  $SANDBOX/datacube-core
#git clone git@github.com:opendatacube/datacube-stats.git  $SANDBOX/datacube-stats
git clone git@github.com:GeoscienceAustralia/digitalearthau.git  $SANDBOX/digitalearthau
git clone git@github.com:GeoscienceAustralia/dea-config.git  $SANDBOX/dea-config
#git clone git@github.com:GeoscienceAustralia/wagl.git $SANDBOX/wagl
#git clone git@github.com:OpenDataCubePipelines/tesp.git $SANDBOX/tesp
#git clone git@bitbucket.org:geoscienceaustralia/dea-internal-docs.git $SANDBOX/dea-internal-docs

git clone git@github.com:dunkgray/processingDEA.git $SANDBOX/processingDEA

git clone git@bitbucket.org:geoscienceaustralia/landsat-downloader.git $SANDBOX/landsat-downloader
git clone git@bitbucket.org:geoscienceaustralia/usgsdownloader.git $SANDBOX/usgsdownloader
git clone git@bitbucket.org:geoscienceaustralia/eo-integration-tests.git $SANDBOX/eo-integration-tests

cd $SANDBOX/landsat-downloader
pre-commit install

cd $SANDBOX/eo-datasets
pre-commit install

cd $SANDBOX/datacube-core
pre-commit install
conda create -n odc -c conda-forge python=3.8 datacube pre_commit

cd $SANDBOX/digitalearthau
pre-commit install

cd $CURR
