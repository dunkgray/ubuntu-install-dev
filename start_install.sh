#!/usr/bin/env bash

#  ubuntu based

# Don't -X in, this hasn't been set up
# Before running this script
# sudo apt-get update
# sudo apt-get install git -y
# ssh-keygen -t rsa -b 4096 -C "duncan.gray@ga.gov.au"
# cat ~/.ssh/id_rsa.pub
#$ sudo apt-get install xclip -y
# Downloads and installs xclip. If you don't have `apt-get`, you might need to use another installer (like `yum`)
#$ xclip -sel clip < ~/.ssh/id_rsa.pub
# Copies the contents of the id_rsa.pub file to your clipboard
# get the public keys into github and bitbucket then
# git clone git@github.com:dunkgray/ubuntu-install-dev.git
# emacs -nw # no windows emacs

# Now run the scripts in overall.sh

# WRT setting up the database, follow the info in
# evernote> Overall DEA Dev Box System> passwords
sudo apt-get install software-properties-common -y
sudo apt-add-repository universe

sudo apt-get update
sudo apt-get install awscli -y
sudo apt-get install git -y
sudo apt-get install emacs -y
sudo apt-get install unzip -y
sudo apt-get install python3-pip -y
sudo apt-get install maven -y
sudo apt-get install xterm -y
sudo apt-get install libcanberra-gtk-module libcanberra-gtk3-module -y
sudo apt-get install gfortran -y
sudo apt-get install tree -y
sudo apt-get install screen -y
sudo apt-get install python-pytest -y
sudo apt-get install dos2unix -y
#sudo apt install pep8 -y
sudo apt-get install pylint -y
sudo apt-get install zerofree -y
sudo apt-get install libpq-dev -y
sudo apt-get install ntp -y
sudo apt-get install curl -y

# for  pre-commit
sudo apt-get install shellcheck -y
sudo snap install shfmt

#pip3 install --extra-index-url="https://packages.dea.gadevs.ga" odc-apps-dc-tools odc-apps-cloud

# Install Pycharm
#sudo snap install pycharm-community --classic
sudo snap install pycharm-professional --classic

#setup Xauthority - for ec2 instances
#mv .Xauthority old.Xauthority
#touch ~/.Xauthority
#xauth generate :0 . trusted

# git setup
git config --global user.name "Duncan Gray"
git config --global user.email "duncan.gray@ga.gov.au"

# Just another way of installing awscli?
#pip3 install awscli --upgrade --user

# set up the datbase
#sudo apt-get install postgresql postgresql-contrib -y

# Install terraform
#sudo git clone https://github.com/robertpeteuil/terraform-installer.git $HOME/terraform-installer
#$HOME/terraform-installer/terraform-install.sh -a

