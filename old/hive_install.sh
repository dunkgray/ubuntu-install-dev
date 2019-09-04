#!/usr/bin/env bash


# update the version number!

VERSION="3.1.0"
FILENAME="hive-${VERSION}"
TARFILE="apache-${FILENAME}-bin.tar.gz"
DIRNAME="apache-${FILENAME}-bin"
wget http://archive.apache.org/dist/hive/${FILENAME}/${TARFILE} ${TARFILE}
tar -xzvf ${TARFILE}
sudo mv ${DIRNAME} /usr/local/hive
#rm ${TARFILE}

# 'EOT' is used to stop interpolation
cat <<'EOT' >> ~/.bashrc

# setting up hive
export HIVE_HOME=/usr/local/hive
export PATH=/usr/local/hive/bin:$PATH
EOT

