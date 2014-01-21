#!/bin/bash -e
#
# @author holman
#
# Installs NodeJS and NPM
# Tested on a DigitalOcean droplet with Ubuntu 13.10

# Things needed to install Node
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make

# Actually install Node
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs

# Install Bower
sudo npm install -g bower

# Install Grunt
sudo npm install -g grunt-cli
