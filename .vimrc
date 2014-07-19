filetype plugin indent on

" python env
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd BufNewFile *.py 5r ~/.vim/skeleton/skeleton_python.py

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF


" bash env
autocmd BufNewFile *.sh 5r ~/.vim/skeleton/skeleton_shell.sh
