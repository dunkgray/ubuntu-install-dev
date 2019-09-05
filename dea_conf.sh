#!/usr/bin/env bash

# Create a config file
FILE="$HOME/.datacube.conf"
/bin/cat <<EOM >$FILE
[datacube]
# Blank implies localhost
db_hostname: localhost
db_database: datacube
EOM


#datacube system init --no-init-users
datacube system check
