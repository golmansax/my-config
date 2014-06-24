#!/bin/bash -e
# @author holman
#
# Sets up a laptop (or another real machine) with Xubuntu 14.04
#
# NOTE: This assumes that my-config Github has been downloaded already

sudo apt-get update
sudo apt-get purge -y pidgin
sudo apt-get install -y chromium-browser vim redshift pepperflashplugin-nonfree
sudo update-pepperflashplugin-nonfree --install
sudo apt-get autoremove -y
sudo apt-get upgrade -y

sudo update-alternatives --config editor

# Personal setup scripts
/home/holman/src/my-config/setup/machine/user_dirs.sh
/home/holman/src/my-config/setup/machine/dotfiles.sh
/home/holman/src/my-config/setup/machine/colorschemes.sh
