#!/usr/bin/env bash

# ubuntu based
# 
sudo apt-get update
sudo apt install awscli -y
sudo apt-get install git -y
sudo apt-get install emacs -y
sudo apt-get install unzip -y
sudo apt-get install python-pip -y
sudo apt-get install maven -y

# Install terraform
sudo git clone https://github.com/robertpeteuil/terraform-installer.git $HOME
$HOME/terraform-installer/terraform-install.sh -a

# Install Pycharm
sudo snap install pycharm-community --classic


