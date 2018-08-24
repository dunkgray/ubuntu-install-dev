#!/usr/bin/env bash

# The -E is important when working behind a proxy
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
sudo -E apt-get update
sudo -E apt-get install --install-recommends winehq-stable
