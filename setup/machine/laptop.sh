#!/bin/bash -e
# @author holman
#
# Sets up a laptop (or another real machine)
#
# NOTE: This assumes that my-config Github has been downloaded already

crontab -l || ( echo "*** Run 'crontab -e' to create a crontab ***"; exit 1 )

sudo update-alternatives --config editor
sudo apt-get update
sudo apt-get purge -y pidgin
sudo apt-get install -y chromium-browser vim redshift
sudo apt-get autoremove -y
sudo apt-get upgrade -y

# Setup directories
/home/holman/src/my-config/setup/machine/user_dirs.sh
