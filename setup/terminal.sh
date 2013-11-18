#!/bin/bash -e
#
# @author holman
#
# Sets up terminal (bash and vim)

# Make sure my-config has been grabbed already
cd ~
[ -d 'src/my-config' ]

echo 'Creating symlinks to files in my-config'

FILES=( .vimrc .bash_profile .profile .bashrc .gitignore_global )
for FILE in ${FILES[@]}; do
  echo " - $FILE"
  rm -f $FILE
  ln -s src/my-config/$FILE $FILE
done
