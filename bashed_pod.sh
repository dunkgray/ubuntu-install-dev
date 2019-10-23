#!/usr/bin/env bash

apt-get update
apt-get -y install iputils-ping bind9-host postgresql-client
apt-get -y install emacs
pip3 install awscli
pip install --extra-index-url="https://packages.dea.ga.gov.au" odc-apps-cloud odc-apps-dc-tools
