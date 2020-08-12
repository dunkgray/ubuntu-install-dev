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
# conda activate airflow
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

# once airflow is running;
airflow connections --add --conn_id 'dsg547' --conn_type 'SSH' --conn_login 'dsg547' --conn_password '***' --conn_host 'gadi.nci.org.au'

# https://airflow.apache.org/docs/stable/tutorial.html
# print the list of active DAGs
airflow list_dags

# prints the list of tasks the "tutorial" dag_id
airflow list_tasks tutorial

# prints the hierarchy of tasks in the tutorial DAG
airflow list_tasks tutorial --tree
