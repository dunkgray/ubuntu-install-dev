#!/usr/bin/env bash
# Note I'm not running this script during an OS build

# airflow needs a home, ~/airflow is the default,
# but you can lay foundation somewhere else if you prefer
# (optional)
export AIRFLOW_HOME=~/airflow

# install from pypi using pip
#pip install apache-airflow
#pip install apache-airflow==1.10.11 # to get the correct version
conda install airflow

# initialize the database
airflow initdb

# start the web server, default port is 8080
airflow webserver -p 8080

# start the scheduler
airflow scheduler

# visit localhost:8080 in the browser and enable the example dag in the home page

# My stuff
cd  AIRFLOW_HOME
git clone git@github.com:dunkgray/dea-airflow.git
ln -s dea-airflow/plugins/ plugins
conda install werkzeug
conda install paramiko
conda install sshtunnel
