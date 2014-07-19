filetype plugin indent on

"粘贴时关闭缩进
set pastetoggle=<F9>

" TEMPLATES
function! LoadTemplate()
	" load a template based on the file extension
	silent! 0r ~/.vim/skeleton/skeleton.%:e

	" Replace some placeholders
	%s/%FILENAME%/\=expand("%:t")/g
	%s/%DATE%/\=strftime("%b %d, %Y")/g

	" This last one deletes the placeholder
	" %START% then leaves the cursor there.
	%s/%START%//g
endfunction

autocmd BufNewFile *.py,*.sh call LoadTemplate()

" python env
autocmd FileType python setlocal et sta sw=4 sts=4 number 
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt+=longest
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"


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


