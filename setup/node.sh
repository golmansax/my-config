#!/bin/bash -e
#
# @author holman
#
# Installs NodeJS and NPM
# Tested on a DigitalOcean droplet with Ubuntu 13.10

sudo apt-get update
sudo apt-get install -y nodejs npm

# Symlink nodejs binary to node (for node scripts)
ln -s /usr/bin/nodejs /usr/bin/node

# Install RequireJS optimizer
sudo npm install -g requirejs
