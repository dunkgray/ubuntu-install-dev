#!/usr/bin/env bash

# This didn't work - likely due to JDK issues
git clone https://github.com/aseldawy/spatialhadoop2.git
cd spatialhadoop2/
mvn compile
mvn package
mvn assembly:assembly