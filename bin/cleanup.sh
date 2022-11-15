#!/bin/bash
#removes vimrc
rm -r .vimrc
#searches and replaces 
sed -i 's/source~/.dotfiles/bashrc_custom//g' ~/dotfiles/bashrc_custom
#removes the trash
rm -r .TRASH
