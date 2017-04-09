call plug#begin()

Plug 'pearofducks/ansible-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'robinfehr/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

" set theme
let g:rehash256 = 1
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
set encoding=utf8

" Skip the default mode indicator as vim-airline has a powerline
set noshowmode
let g:airline_theme='base16_shell'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Write the damn thing
cmap w!! w !sudo tee % >/dev/null

" Bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" Gutter
set number
set relativenumber

" Window seperator
set fillchars+=vert:┃

" Mapping for sane navigation
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeGitStatusWithFlags = 0
let g:NERDTreeGitStatusNodeColorization = 1
hi def link NERDTreeGitStatusIgnored Comment
hi def link NERDTreeGitStatusUnmerged Special
hi def link NERDTreeGitStatusModified Tag
hi def link NERDTreeGitStatusAdded DiffNewFile
hi def link NERDTreeGitStatusUnknown Comment

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeMouseMode = 2
let g:NERDTreeMinimalUI = 1

" Open NERDTree on startup unless comitting
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif

