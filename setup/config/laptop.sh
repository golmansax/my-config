#!/bin/bash -e
# @author holman
#
# Sets up a laptop (or another real machine)
#
# NOTE: This assumes that my-config Github has been downloaded already

crontab -l || ( echo "*** Run 'crontab -e' to create a crontab ***"; exit 1 )

sudo apt-get install -y chromium-browser vim redshift
sudo update-alternatives --config editor

REDSHIFT='@reboot nohup redshift -l 37.783:-122.417 -b 0.7 2>&1 > /dev/null &'
( crontab -l; echo "$REDSHIFT" ) | crontab
