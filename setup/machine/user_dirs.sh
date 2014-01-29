#!/bin/bash -e
# @author holman
#
# Sets up userdirs

TO_DELETE=(
  'Desktop'
  'Documents'
  'Downloads'
  'Music'
  'Pictures'
  'Public'
  'Templates'
  'Videos'
)

for i in ${!TO_DELETE[*]}; do
  DIR="$HOME/${TO_DELETE[$i]}"
  [[ -d $DIR ]] && rm -rf $DIR
done

USER_DIRS=~/.config/user-dirs.dirs
rm -f $USER_DIRS
ln -s /home/holman/src/my-config/misc/user-dirs.dirs $USER_DIRS

# Load in variables and make directories
. $USER_DIRS

DIRS=(
  $XDG_DESKTOP_DIR
  $XDG_DOWNLOAD_DIR
  $XDG_TEMPLATES_DIR
  $XDG_PUBLICSHARE_DIR
  $XDG_DOCUMENTS_DIR
  $XDG_MUSIC_DIR
  $XDG_PICTURES_DIR
  $XDG_VIDEOS_DIR
)

for i in ${!DIRS[*]}; do
  mkdir -p ${DIRS[$i]}
done
