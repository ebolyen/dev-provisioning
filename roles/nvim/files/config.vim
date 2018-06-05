set mouse=a
set encoding=utf8
set colorcolumn=80
set number
set title

" Disable for quickfix windows
au FileType qf setlocal norelativenumber colorcolumn=

" Language indents
au FileType python setl sw=4 sts=4 et
au FileType rust setl sw=4 sts=4 et
au FileType javascript setl sw=2 sts=2 et
au FileType json setl sw=2 sts=2 et

" Window seperator
set fillchars+=vert:┃

" Bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" Split style
set splitbelow
set splitright

"                                   Hack to debounce the first LeftRelease as that would drop out of terminal
" Terminals will automatically      mode according to nvim/terminal.c (remove this if that ever changes...)
" switch to insert mode.            which prevents the prior startinsert from working when navigating with mouse
au BufEnter term://* startinsert | tnoremap <LeftRelease> <C-\><C-n>:tunmap <lt>LeftRelease><cr>:startinsert<cr>
