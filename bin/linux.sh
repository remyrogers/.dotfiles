#!/bin/bash

#check operating systems
if [ "$(uname)" != "Linux" ]; then
  echo "Error doesn't equal Linux" >> linuxsetup.log
  exit
fi

#checks for TRASH directory and creates one if not made
if [ ! -d ~/.TRASH ]; then
  mkdir ~/.TRASH
  echo "Created the .TRASH directory." >> linuxsetup.log
fi

#looks for .nanorc and changes its name
if [ -f ./.nanorc ]; then
  cp .nanorc ./.bup_nanorc
  rm .nanorc
  echo ".nanorc file renamed to .bup_nanorc" >> ./.dotfiles/bin/linuxsetup.log
fi

#overwrites nanorc content to home directory
cp ./.dotfiles/etc/nanorc ~/.nanorc

#adds to the end of bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
