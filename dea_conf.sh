#!/usr/bin/env bash

# Create a config file
FILE="$HOME/.datacube.conf"
/bin/cat <<EOM >$FILE
[datacube]
# Blank implies localhost
db_hostname:
db_database: datacube
EOM

datacube system init 
