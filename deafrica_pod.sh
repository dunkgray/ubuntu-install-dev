# git clone https://github.com/dunkgray/ubuntu-install-dev.git
apt-get update
apt-get -y install postgresql
apt-get -y install emacs
apt-get install -y gfortran
pip3 install awscli
pip3 install cligj==0.5.0
pip3 install --index-url https://packages.dea.gadevs.ga/ wofs
pip3 install git+https://github.com/GeoscienceAustralia/fc --no-deps --global-option=build --global-option='--executable=/usr/bin/env python3'
pip3 install matplotlib click scikit-image pep8 ruamel.yaml rio-cogeo numexpr


git config --global user.email "dunk.tracey@gmail.com"
git config --global user.name "Duncan Gray"

# let's get some repos
git clone https://github.com/opendatacube/datacube-core.git /opt/datacube-core
git clone https://github.com/GeoscienceAustralia/landsat-to-cog.git /opt/landsat-to-cog
git clone --branch usgs_l2_testing https://github.com/opendatacube/cube-in-a-box.git /opt/cube-in-a-box
git clone --branch dsg_landsat_usgs_testing https://github.com/opendatacube/WOFLs-orchestration.git /opt/WOFLs-orchestration
