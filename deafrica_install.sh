#!/usr/bin/env bash

#
sudo yum -y update
sudo yum install awscli -y
sudo yum install git -y
sudo yum install emacs -y
#sudo apt-get install unzip -y
#sudo yum install python-pip -y
#sudo apt-get install maven -y

# Install terraform
sudo git clone https://github.com/robertpeteuil/terraform-installer.git $HOME/terraform-installer
$HOME/terraform-installer/terraform-install.sh -a

# Install Pycharm
#sudo snap install pycharm-community --classic


