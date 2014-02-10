#!/bin/bash -e
#
# @author holman
#
# Installs HipChat
# Tested on Ubuntu 13.10

SOURCE_LIST=/etc/apt/sources.list.d/atlassian-hipchat.list
sudo touch $SOURCE_LIST
echo 'deb http://downloads.hipchat.com/linux/apt stable main' | \
    sudo tee $SOURCE_LIST
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install hipchat -y
