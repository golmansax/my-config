#!/bin/bash -e
# @author holman
#
# Sets up dotfiles in terminal (bash and vim)

# Make sure my-config has been grabbed already
DOTFILES_DIR=src/my-config/dotfiles
cd ~
[[ -d "$DOTFILES_DIR" ]]

echo 'Creating symlinks to files in my-config'

for FILE in `ls $DOTFILES_DIR`; do
  echo " - $FILE"
  rm -rf .$FILE
  ln -s $DOTFILES_DIR/$FILE .$FILE
done
