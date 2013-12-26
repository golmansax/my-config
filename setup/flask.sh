#!/bin/bash -e
#
# @author holman
#
# Installs Flask (Python) framework
# Tested on a DigitalOcean droplet with Ubuntu 13.10

# Install PIP (Python package manager)
sudo apt-get install python-pip

# Install Flask
sudo pip install flask

# Install ujson
sudo pip install ujson
