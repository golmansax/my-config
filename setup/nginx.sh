#!/bin/bash -e
#
# @author holman
#
# Installs nginx
# Tested on a DigitalOcean droplet with Ubuntu 13.10

sudo apt-add-repository ppa:nginx/stable
sudo apt-get update
sudo apt-get install -y nginx
