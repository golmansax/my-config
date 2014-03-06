#!/bin/bash -e
#
# @author holman
#
# Installs Apache and PHP5
# Tested on a DigitalOcean droplet with Ubuntu 13.10

sudo apt-get update
sudo apt-get install -y apache2 php5 libapache2-mod-php5 php5-cgi php5-json
