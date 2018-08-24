#!/usr/bin/env bash

# Thisw isn't really a full install.
# I decided to use ERM instead.

# based on;
# https://www.digitalocean.com/community/tutorials/how-to-install-hadoop-in-stand-alone-mode-on-ubuntu-18-04

# Let's do simple and see if it works
# It's assumed java, wget installed

# update the version number!

VERSION="3.1.1"
FILENAME="hadoop-${VERSION}"
TARFILE="${FILENAME}.tar.gz"

wget http://www-us.apache.org/dist/hadoop/common/${FILENAME}/${TARFILE} ${TARFILE}
tar -xzvf ${TARFILE}
sudo mv ${FILENAME} /usr/local/hadoop
rm ${TARFILE}

cat <<EOT >> /usr/local/hadoop/etc/hadoop/hadoop-env.sh
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
EOT