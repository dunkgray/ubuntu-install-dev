sudo yum update
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
pip install --upgrade pip
# this was failing, so no virtual env
#python3 -m /home/ec2-user/.venv
#source /$HOME/.venv/bin/activate
sudo yum -y install postgresql postgresql-devel python-devel
sudo yum -y install gcc
sudo yum -y install python3-devel
pip install eodatasets3==0.18
aws s3 cp s3://ga-sentinel/L1/LANDSAT/USGS-C2/2021-04-22/LC81010712021112LGN00/ $HOME/data/LC81010712021112LGN00/ --no-sign-request --recursive
eo3-prepare landsat-l1 ~/data/LC81010712021112LGN00/LC08_L1TP_101071_20210422_20210422_02_RT_MTL.txt
