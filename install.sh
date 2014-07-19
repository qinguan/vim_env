#!/usr/bin/env bash
# vim:fileencoding=UTF-8

# Author(s): Xu Guojun <qinguan0619@gmail.com>


install_base () {
	make -p ~/.vim/skeleton
	cp -R ./skeleton/* ~/.vim/skeleton/
	cp .vimrc ~/.vimrc
}

install_plugin () {
	local plugin=$1
	shift
	local cmd=$*
	
	read -p "Do you want to install $plugin?(yes[Y] or no[N])" -t 30 ANS
	case "$ANS" in
	       Y | y | yes | YES)
			bash -c "$cmd"
	       		echo "plugin $plugin installation is complete."
			;;
    		N | n | no | NO)
			;;
	esac		
}

install_snipmate () {
	echo "Do you want to install snipmate?(yes[Y] or no[N])"
	read ANS
	case "$ANS" in
	       Y | y | yes | YES)
       			mv ./snapMate.zip ~/.vim/ \
			    && cd ~/.vim/ \
	     		    && unzip snapMate.zip
			echo "snipmate installation is complete."
			;;
    		N | n | no | NO)
			;;
	esac		
}

install () {
	install_base
		
	# http://www.vim.org/scripts/script.php?script_id=2540
	cmd="mv ./snapMate.zip ~/.vim/ && cd ~/.vim/ && unzip snapMate.zip"
	install_plugin "snipmate" $cmd

	# http://www.vim.org/scripts/script.php?script_id=2914
	pep8_cmd="pip install -i http://pypi.douban.com/simple/ pep8"
	pep8_cmd=$pep8_cmd" && mkdir -p ~/.vim/ftplugin/python/ && mv ./ftplugin/pep8.vim ~/.vim/ftplugin/python/pep8.vim"
	install_plugin "pep8" $pep8_cmd
}

install
