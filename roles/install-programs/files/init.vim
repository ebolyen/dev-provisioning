call plug#begin()

Plug 'pearofducks/ansible-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'robinfehr/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
"Plug 'ryanoasis/vim-devicons'

call plug#end()

" set theme
let g:rehash256 = 1
colorscheme molokai
set encoding=utf8

" Skip the default mode indicator as vim-airline has a powerline
set noshowmode
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Write the damn thing
cmap w!! w !sudo tee % >/dev/null

" Gutter
set number
set relativenumber

" Window seperator
set fillchars+=vert:│

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

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let g:NERDTreeMouseMode = 2
let g:NERDTreeMinimalUI = 1

let g:nerdtree_tabs_open_on_console_startup=1

"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:WebDevIconsUnicodeDecorateFileNodes = 0
"let g:DevIconsEnableFoldersOpenClose = 1
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
"let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
