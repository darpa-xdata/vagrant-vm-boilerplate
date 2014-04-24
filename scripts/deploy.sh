#!/usr/bin/env bash
scriptdir=/vagrant/scripts

echo "test for" > /echo.txt
sudo apt-get update

# Install a Java runtime enviornment
sudo apt-get -y install  openjdk-6-jdk
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
echo JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64 | sudo tee -a /etc/environment


# Add your deployment scripts here:
sudo $scriptdir/helloworld.sh
