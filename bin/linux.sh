#!/bin/bash
#makes a file var that is the vimrc
FILE=/etc/vimrc
if [ 'uname'!='Linux' ]
#if the uname is anything other then Linux
then
	echo "Error, wrong os">>linuxsetup.log
	exit
#echo the error and exit
else
	if  test "$FILE" ; then
		#otherwise if the file stated exist then change the name and add message
		mv .vimrc .bump_vimrc
		echo "Current .vimrc file changed to bump rc">>linuxsetup.log
	fi
	#put vimrc into .vimrc and print a message
	vimrc>.vimrc
	echo "source~/.dotfiles/etc/bashrc_custom"
fi
