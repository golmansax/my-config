#!/bin/bash
#
# @author holman
#
# Sets up a DigitalOcean droplet for my liking, tested on Ubuntu 13.10

USER=holman
EMAIL=holman@golmansax.com
FULL_NAME=Holman Gao

ME=`whoami`

if [ $ME = 'root' ]; then
  echo "*** Let's change the root password... ***"
  passwd

  echo "*** Time to add myself ***"
  # Setup user
  adduser $USER

  # Setup visudo
  update-alternatives --config editor

  # Setup sudo privilages
  visudo

  $THIS_SCRIPT = `basename $0`
  echo "*** Now run the following commands ***"
  echo "chown $USER:$USER $THIS_SCRIPT"
  echo "mv $THIS_SCRIPT /home/$USER/"
  echo "su $USER"
  echo "./$THIS_SCRIPT"
else
  # Now get github and my other config files
  echo "*** Installing git and grabbing config repo ***"
  mkdir -p src
  cd src
  sudo apt-get install -y git-core

  # Configure git
  git config --global push.default simple
  git config --global user.email "$EMAIL"
  git config --global user.name "$FULL_NAME"

  git clone https://github.com/golmansax/my-config.git
  echo "*** Installing vimrc ***"
  cp my-config/.vimrc ~

  echo "*** Basic setup installed ***"
  echo "*** You can now remove this file ***"
  echo "rm $THIS_SCRIPT"
fi
