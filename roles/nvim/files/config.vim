set mouse=a
set encoding=utf8
set colorcolumn=80
set relativenumber

" Disable for quickfix windows
au FileType qf setlocal norelativenumber colorcolumn=

" Window seperator
set fillchars+=vert:┃

" Bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" Split style
set splitbelow
set splitright
