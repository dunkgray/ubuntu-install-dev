#!/usr/bin/env bash

# I changed;
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# to
# PS1="${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$"
# on the EC2 instance, so I can tell local and aws apart.
#
# Consider incorporating some things from here;
# https://docs.dev.dea.ga.gov.au/getting_started/workstation.html#setup-kubernetes-dev-cluster-access

echo "# The code below is added by ubuntu-install-dev mod_bash changes start " >> ~/.bashrc

# Likely broken
# tee -a ~/.bashrc <<'END'

# # Change aws accounts and clusters
# ap(){
# export AWS_PROFILE=$1
# aws eks update-kubeconfig --name $1
# }
# END

# Doing this in the bash results in a bad PATH
#echo "conda activate dea " >> ~/.bashrc

echo "# ubuntu-install-dev mod_bash changes finish " >> ~/.bashrc
echo "export AIRFLOW_HOME=~/airflow" >> ~/.bashrc
echo "echo 'conda activate dea  # deactivate'" >> ~/.bashrc
echo "echo 'conda activate airflow  # deactivate'" >> ~/.bashrc


echo "# ubuntu-install-dev mod_bash changes finish " >> ~/.bashrc
