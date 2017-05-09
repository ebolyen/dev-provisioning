nnoremap ; :
vnoremap ; :
" Mapping for sane window navigation, even in terminal mode
" terminal mode:
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
" normal mode:
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Enter adds lines in visual mode
nmap <S-CR> O<Esc>
nmap <CR> o<Esc>

" Write the damn thing
cmap w!! w !sudo tee % >/dev/null

cmap qq qa

" Plugin command hotkeys
map <C-n> :NERDTreeToggle<CR>
map <C-s> :StripWhitespace<CR>
