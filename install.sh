#!/usr/bin/env bash
# vim:fileencoding=UTF-8

# Author(s): Xu Guojun <qinguan0619@gmail.com>


install_base () {
	make -p ~/.vim
	cp -R ./skeleton ~/.vim/
	cp .vimrc ~/.vimrc
}

install_snipmate () {
	echo "Do you want to install snipmate?(yes[Y] or no[N])"
	read ANS
	case "$ANS" in
	       Y | y | yes | YES)
       			mv ./snapMate.zip ~/.vim/ \
			    && cd ~/.vim/ \
	     		    && unzip snapMate.zip
			echo "install snipmate ok"
			;;
    		N | n | no | NO)
			;;
	esac		
}

install_base
install_snipmate
