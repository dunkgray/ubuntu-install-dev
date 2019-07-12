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
