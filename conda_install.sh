#!/bin/bash

# from
# https://raw.githubusercontent.com/omad/dotfiles/master/bin/vdi_install_local_conda.sh
# Haven't tested yet
# try -c conda-forge somewhere ....

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

conda create -c conda-forge --name dea -y python=3.6 psycopg2 click gdal jupyterlab nodejs \
    rasterio xarray pyyaml dask boltons netcdf4 lark-parser pypeg2 cachetools \
    singledispatch sqlalchemy structlog scipy \
    cattrs ciso8601 h5py pyproj ruamel.yaml shapely scikit-image \
    deepdiff flake8 pep8-naming python-rapidjson rio-cogeo numexpr requests \
    pandoc pytest pytest-cov
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
echo "echo 'conda activate dea # deactivate'" >> ~/.profile
