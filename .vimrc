color desert
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set guioptions-=T
set visualbell

filetype off 
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags() 


set foldmethod=indent
set foldlevel=99
filetype on
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!



" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

"// ;# http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide
