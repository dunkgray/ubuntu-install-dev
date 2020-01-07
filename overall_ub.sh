#!/usr/bin/env bash

# Execute the initial start script
./start_install.sh
./ub_kubedocker.sh
./conda_install.sh
./mod_bash.sh

echo "copy secrets from .bashrc, .aws config and credentails from somewhere"
