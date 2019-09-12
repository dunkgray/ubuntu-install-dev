#!/usr/bin/env bash

sudo apt-get install curl -y

# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# Install aws-iam-authenticator
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.7/2019-06-11/bin/linux/amd64/aws-iam-authenticator
chmod +x ./aws-iam-authenticator
sudo mv ./aws-iam-authenticator /usr/local/bin/aws-iam-authenticator


# Docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo service docker start
sudo usermod -aG docker $USER

#aws access
mkdir .aw

# Getting ready to do
# aws eks --region us-west-2 update-kubeconfig --name deafrica-eks
# Installed aws is out of date..
 sudo apt install python3-pip -y
 pip3 install awscli --upgrade --user

# Testing
# docker run hello-world
 #  export AWS_PROFILE=africa-eks
 # kubectl get pods

echo "copy secrets from .bashrc, .aws config and credentails from somewhere"
