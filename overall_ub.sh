#!/usr/bin/env bash

# Execute the initial start script
./start_install.sh
./clone_dea_repos.sh 
# I don't need this yet
#./ub_kubedocker.sh
./conda_install.sh
./mod_bash.sh

echo "copy secrets from .bashrc, .aws config and credentails from somewhere"
