#!/usr/bin/env bash

# set up for Amazon Linux AMI
#
sudo yum -y update
sudo yum install awscli -y
sudo yum install git -y
sudo yum install emacs -y
#sudo apt-get install unzip -y
#sudo apt-get install maven -y
sudo yum install xorg-x11-xauth.x86_64 -y
sudo yum install -y xterm

# Installing Python 3
sudo yum install python3 -y
sudo yum install python-pip -y
sudo pip3 install click boto3 rasterio


# Install terraform
sudo git clone https://github.com/robertpeteuil/terraform-installer.git $HOME
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
git config --global user.email "duncan.gray@gmail.com"

# Docker
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user


# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#DEAfrica for the hell of it
echo "#export AWS_PROFILE=africa-eks" >> ~/.bashrc

#DEAfrica for cube-in-a-box
echo "export DEAFRICA_PRODUCTS='~/pycharmremote/deafrica_config/products'" >> ~/.bashrc