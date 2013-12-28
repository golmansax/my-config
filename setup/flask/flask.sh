#!/bin/bash -e
#
# @author holman
#
# Installs Flask (Python) framework
# Tested on a DigitalOcean droplet with Ubuntu 13.10

# Install PIP (Python package manager)
sudo apt-get update
sudo apt-get install python-pip python-dev

# Install Flask and uWSGI (ujson is nice too)
sudo pip install flask uwsgi ujson

# Setup uWSGI
sudo mkdir -p /var/log/uwsgi
sudo chown -R www-data:www-data /var/log/uwsgi

# Install uWSGI configuration file
sudo cp `dirname $0`/uwsgi.conf /etc/init/

# For vassals
sudo mkdir /etc/uwsgi && sudo mkdir /etc/uwsgi/vassals
