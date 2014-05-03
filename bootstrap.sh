#!/usr/bin/env bash


apt-get update

apt-get install -q -y python-software-properties
add-apt-repository ppa:ubuntu-sdk-team/ppa
apt-get update

apt-get install -q -y build-essential libssl-dev libdb5.1-dev libdb5.1++-dev libboost-all-dev git

apt-get install -q -y libqtgui4
apt-get install -q -y libminiupnpc-dev
apt-get install -q -y qttools5-dev-tools qttools5-dev
apt-get install -q -y qrencode
apt-get install -q -y libqrencode-dev
apt-get install -q -y qtcreator


#Setup android enviroment

apt-get install openjdk-7-jdk unzip -y

# For maven-plugin
apt-get install lib32z1-dev bison flex lib32ncurses5-dev libx11-dev gperf g++-multilib -y
# Setup Android SDK
sudo -u vagrant wget http://dl.google.com/android/adt/adt-bundle-linux-x86_64-20131030.zip
sudo -u vagrant unzip adt-bundle-linux-x86_64-20131030.zip

# Add Android SDK to PATH
sudo -u vagrant echo export PATH=/home/vagrant/adt-bundle-linux-x86_64-20131030/sdk/tools:\$PATH >> /home/vagrant/.bashrc
sudo -u vagrant echo export PATH=/home/vagrant/adt-bundle-linux-x86_64-20131030/sdk/platform-tools:\$PATH >> /home/vagrant/.bashrc

sudo -u vagrant echo "y" | /home/vagrant/adt-bundle-linux-x86_64-20131030/sdk/tools/android update sdk -t 6 --no-ui -y
# ANDROID_HOME is for Maven
sudo -u vagrant echo export ANDROID_HOME=/home/vagrant/adt-bundle-linux-x86_64-20131030/sdk/ >> /home/vagrant/.bashrc
