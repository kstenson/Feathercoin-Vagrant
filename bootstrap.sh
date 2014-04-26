#!/usr/bin/env bash


apt-get update

apt-get install -y python-software-properties
add-apt-repository ppa:ubuntu-sdk-team/ppa
apt-get update

apt-get install -y build-essential libssl-dev libdb5.1-dev libdb5.1++-dev libboost-all-dev git

apt-get install -y libqtgui4
apt-get install -y libminiupnpc-dev
apt-get install -y qttools5-dev-tools qttools5-dev
apt-get install -y qrencode
apt-get install -y libqrencode-dev
apt-get install -y qtcreator
