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

# Symlink nodejs binary to node (for Node scripts)
#sudo ln -s /usr/bin/nodejs /usr/bin/node

# Install RequireJS optimizer
sudo npm install -g requirejs

# Install Bower
sudo npm install -g bower
