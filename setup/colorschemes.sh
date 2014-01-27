#!/bin/bash -e
# @author holman
#
# Sets up xfce4-terminal colorschemes

# Make sure my-config has been grabbed already
MY_DIR=/home/holman/src/my-config/colorschemes
[[ -d $MY_DIR ]]

echo 'Installing colorschemes'

cd /usr/share/xfce4/terminal/colorschemes/
sudo ln -f -s $MY_DIR/*.theme .
