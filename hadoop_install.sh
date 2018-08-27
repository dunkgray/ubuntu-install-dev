#!/usr/bin/env bash

# This isn't really a full install.
# I decided to use ERM instead.

# based on;
# https://www.digitalocean.com/community/tutorials/how-to-install-hadoop-in-stand-alone-mode-on-ubuntu-18-04
# https://gist.github.com/thanoojgithub/08243142ba916a3418fcaa4aea54d2b8
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

# 'EOT' is used to stop interpolation
cat <<'EOT' >> ~/.bashrc

# setting up hadoop
export HADOOP_HOME=/usr/local/hadoop
export PATH=$PATH:$HADOOP_HOME/sbin
export PATH=$PATH:$HADOOP_HOME/bin
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"

EOT
