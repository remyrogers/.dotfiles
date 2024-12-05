#!/bin/bash

#removes nanorc, replaces the source with nothing and removes TRASH
cd
rm .nanorc

sed -i 's|source~/.dotfiles/etc/bashrc_custom||g' .bashrc
rm -rf .TRASH
