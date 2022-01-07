#!/bin/bash

# from
# https://raw.githubusercontent.com/omad/dotfiles/master/bin/vdi_install_local_conda.sh
# Haven't tested yet
# try -c conda-forge somewhere ....

# This takes 2 to 4 hours.

set -xeu
DESTDIR=/local/u46/dsg547/miniconda3
DESTDIR=/home/ec2-user
DESTDIR=/home/$USER

#pushd $TMPDIR

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh

./Miniconda3-latest-Linux-x86_64.sh -b -p $DESTDIR -u


__conda_setup="$(${DESTDIR}/bin/conda 'shell.bash' 'hook' 2> /dev/null)"
eval "$__conda_setup"

conda update -n base -y conda

# conda create -n odc -c conda-forge python=3.8 datacube pre_commit

# many packages in dea env not in odc env
# odc2020 is an odc env I can hack things onto
# this works
conda create -n odc2020 -c conda-forge python=3.8 datacube pre_commit

# This worked
conda install -n odc2020  -c conda-forge structlog black pre_commit pytest \
      flake8 pep8-naming python-rapidjson numexpr requests pandoc \
      ruamel ruamel.yaml

# for landsat-downloader 
conda install -n odc2020  -c conda-forge boto croniter feedparser

conda install -n odc2020  -c conda-forge lxml
# this blows up with unresolved conflicts.
# conda install -n odc2020 \
#  gdal jupyterlab nodejs    singledispatch \
#   scipy cattrs h5py  ruamel.yaml \
#  scikit-image flake8 pep8-naming python-rapidjson \
#   numexpr requests pandoc pytest pytest-cov \
#  black ephem pycodestyle pylint geopandas \
#  libiconv  pre_commit

# I just need to actually create seperate envs
# like it was set up for

# unavailable packages have been removed
# ciso8601 deepdiff docker-compose pypeg2 boltons rio-cogeo structlog hdf5plugin

# datacube core needs python=3.8 these days
# it has it's own install script.
# conda create -c conda-forge --name dea -y python=3.6 psycopg2 click gdal \
#       jupyterlab nodejs docker-compose \
#     rasterio xarray pyyaml dask boltons netcdf4 lark-parser pypeg2 cachetools \
#     singledispatch sqlalchemy structlog scipy \
#     cattrs ciso8601 h5py hdf5plugin pyproj ruamel.yaml shapely scikit-image \
#     deepdiff flake8 pep8-naming python-rapidjson rio-cogeo numexpr requests \
#     pandoc pytest pytest-cov black ephem pycodestyle pylint geopandas \
#     libiconv pre_commit

# conda install -c conda-forge airflow
# conda create -c conda-forge airflow
conda create -c conda-forge --name airflow -y python=3.6 airflow \
      paramiko sshtunnel werkzeug psycopg2

# conda install requests 
conda init bash
# for eo-datasets2
#conda activate dea

# from https://github.com/jwkvam/jupyterlab-vim
#jupyter labextension install jupyterlab_vim

# from https://github.com/pbugnion/jupyterlab-sql
#pip install jupyterlab_sql
#jupyter serverextension enable jupyterlab_sql --py --sys-prefix
#jupyter lab build
#
#jupyter lab

# This might get called many times, so it is commented out
echo "echo 'conda activate odc # deactivate'" >> ~/.profile
echo "echo 'conda activate odc2020 # deactivate'" >> ~/.profile
