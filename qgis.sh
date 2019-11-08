# load QGIS
sudo sh -c 'echo "deb http://qgis.org/debian bionic main" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb-src http://qgis.org/debian bionic main " >> /etc/apt/sources.list'
wget -O - https://qgis.org/downloads/qgis-2019.gpg.key | gpg --import
gpg --fingerprint 51F523511C7028C3
gpg --export --armor 51F523511C7028C3 | sudo apt-key add -
sudo apt-get update && sudo apt-get install qgis python-qgis -y