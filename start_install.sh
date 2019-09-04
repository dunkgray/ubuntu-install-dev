#!/usr/bin/env bash

# ubuntu based
#
# Don't -X in, this hasn't been set up
# Before running this script
# sudo apt-get update
# sudo apt-get install git -y
# ssh-keygen -t rsa -b 4096 -C "duncan.gray@ga.gov.au"
# more ~/.ssh/id_rsa.pub
# git clone git@github.com:dunkgray/ubuntu-install-dev.git
# emacs -nw # no windows emacs

# WRT setting up the database, follow the info in
# evernote> Overall AWS DEA Dev Box> passwords

sudo apt-get update
sudo apt install awscli -y
sudo apt-get install git -y
sudo apt-get install emacs -y
sudo apt-get install unzip -y
sudo apt-get install python-pip -y
sudo apt-get install maven -y
sudo apt install xterm -y

# Install terraform
sudo git clone https://github.com/robertpeteuil/terraform-installer.git $HOME/terraform-installer
$HOME/terraform-installer/terraform-install.sh -a

# Install Pycharm
sudo snap install pycharm-community --classic
#sudo snap install pycharm-professional --classic


#setup Xauthority
mv .Xauthority old.Xauthority
touch ~/.Xauthority
xauth generate :0 . trusted

# git setup
git config --global user.name "Duncan Gray"
git config --global user.email "duncan.gray@ga.gov.au"

# For dev
mkdir pycharmremote

# set up the datbase
sudo apt-get install postgresql postgresql-contrib -y

