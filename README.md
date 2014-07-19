vim_env
=======

## Installation

### Get Source Code
	$ git clone https://github.com/qinguan/vim_env.git
	$ cd vim_env

### Setup
	$ bash install.sh

## Other

### Check autoload plugins
	$ ls -la /usr/share/vim/vim72/autoload/

	python: 
	check the pythoncomplete.vim plugin(pythoncomplete omni-completion script shipped with vim 7). If not, execute cmd 'cp -R ./autoload ~/.vim/autoload' first. 

### Enable python autoComplete
	$ vim test.py
	$ Ctrl+x,Ctrl+o
