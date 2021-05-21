sudo yum update
curl -O https://bootstrap.pypa.io/get-pip.pyls
python3 get-pip.py --user
pip install --upgrade pip
python3 -m /home/ec2-user/.venv
source /$HOME/.venv/bin/activate
sudo yum install postgresql postgresql-devel python-devel
sudo yum install gcc
sudo yum install python3-devel
pip install eodatasets3==0.18
