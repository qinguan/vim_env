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

### Enable python pep8 check
	http://www.vim.org/scripts/script.php?script_id=2914
	Just press fn+F5 to check python under Mac OSX.	

### Enable snippets
	http://www.vim.org/scripts/script.php?script_id=2540
	$ mv ./snipMate.zip ~/.vim/
	$ cd ~/.vim 
	$ unzip snapMate.zip 
it will override exist files/directory in ~/.vim/ .

