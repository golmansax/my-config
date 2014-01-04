#!/bin/bash -e
# @author holman
#
# Sets up Arcanist for Phabricator

HOME=/home/holman

# Install PHP5 client
sudo apt-get install -y php5-cli

mkdir -p $HOME/.arc

# Installing y4n9squared's Arcanist because it has a Java linter
git clone https://github.com/y4n9squared/arcanist.git $HOME/.arc/arcanist

# Install libphutil
git clone https://github.com/facebook/libphutil.git $HOME/.arc/libphutil

echo "To finish setup add 'export PATH=\$PATH:$HOME/.arc/arcanist/bin' to" \
  'your .bashrc'
