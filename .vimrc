filetype plugin indent on

" python env
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd BufNewFile *.py 0r ~/.vim/skeleton/skeleton_python.py

" bash env
autocmd BufNewFile *.sh 0r ~/.vim/skeleton/skeleton_shell.sh
