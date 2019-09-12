#!/usr/bin/env bash

# set up for Amazon Linux AMI

# The africa eks vpc is private, so you can't directly log onto it.
# aws ec2 run-instances --image-id "ami-082b5a644766e0e6f" --count 1 --key-name "duncan-deafrica-oregon" --instance-type "t3a.large" --placement "{\"Tenancy\":\"default\"}" --monitoring "{\"Enabled\":false}" --enable-api-termination --instance-initiated-shutdown-behavior "stop" --credit-specification "{\"CpuCredits\":\"unlimited\"}" --tag-specifications "[{\"ResourceType\":\"instance\",\"Tag\":[{\"Key\":\"Name\",\"Value\":\"dsg-dev-eks-vpc\"}]},{\"ResourceType\":\"volume\",\"Tag\":[{\"Key\":\"Name\",\"Value\":\"dsg-dev-eks-vpc\"}]}]" --ebs-optimized --network-interfaces "[{\"DeviceIndex\":0,\"Description\":\"Primary network interface\",\"DeleteOnTermination\":true,\"SubnetId\":\"subnet-08766953f76a6519f\",\"Ipv6AddressCount\":0,\"GroupSet\":[\"sg-01b1c352cbf21c553\",\"sg-0d9e6e65fab5ad38e\"]}]" --iam-instance-profile "{\"Arn\":\"arn:aws:iam::565417506782:instance-profile/deafrica-ec2-s3_access\"}" --block-device-mappings "[{\"DeviceName\":\"/dev/xvda\",\"Ebs\":{\"VolumeSize\":64,\"DeleteOnTermination\":true,\"VolumeType\":\"gp2\"}}]" --region us-west-2
sudo yum -y update
sudo yum install awscli -y
sudo yum install git -y
sudo yum install emacs -y
#sudo apt-get install unzip -y
#sudo apt-get install maven -y
sudo yum install xorg-x11-xauth.x86_64 -y
sudo yum install -y xterm
sudo yum -y install gcc

# Installing Python 3
sudo yum install python3 -y
sudo yum install python-pip -y
sudo pip3 install click boto3 rasterio pyyaml s3fs


# Install terraform
sudo git clone https://github.com/robertpeteuil/terraform-installer.git $HOME/terraform-installer
$HOME/terraform-installer/terraform-install.sh -a

# Install Pycharm
#sudo snap install pycharm-community --classic


# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# Install aws-iam-authenticator
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.7/2019-06-11/bin/linux/amd64/aws-iam-authenticator
chmod +x ./aws-iam-authenticator
sudo mv ./aws-iam-authenticator /usr/local/bin/aws-iam-authenticator

echo "export EDITOR='/usr/bin/nano'" >> ~/.bashrc 
git config --global user.name "Duncan Gray"
git config --global user.email "duncan.gray@ga.gov.au"

# Docker

sudo amazon-linux-extras install docker -y
#sudo yum install docker -y # Didnt work for Fedora?
# Maybe it did.  I just have to restart my VM
sudo service docker start
sudo usermod -aG docker $USER


# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#DEAfrica for the hell of it
echo "#export AWS_PROFILE=africa-eks" >> ~/.bashrc

#DEAfrica for cube-in-a-box
echo "export DEAFRICA_PRODUCTS='~/pycharmremote/deafrica_config/products'" >> ~/.bashrc

# Tenable is a manual install
echo "Follow this to manually install Tenable; https://intranet.ga.gov.au/confluence/display/ARCHCOM/Tenable+Installation+Guide"
echo "Enter the aws account as the scan group name.  But the link will fail."

# https://www.linode.com/docs/databases/postgresql/how-to-install-postgresql-relational-databases-on-centos-7/
# Install psql
sudo yum install postgresql-server postgresql-contrib
sudo postgresql-setup initdb
sudo systemctl start postgresql
sudo systemctl enable postgresql
