nnoremap ; :
vnoremap ; :
" Mapping for sane window navigation, even in terminal mode
" terminal mode:
" tnoremap <Tab>h <C-\><C-n><C-w>h
" tnoremap <Tab>j <C-\><C-n><C-w>j
" tnoremap <Tab>k <C-\><C-n><C-w>k
" tnoremap <Tab>l <C-\><C-n><C-w>l
" tnoremap <Tab>1 <C-\><C-n>1gt
" tnoremap <Tab>2 <C-\><C-n>2gt
" tnoremap <Tab>3 <C-\><C-n>3gt
" tnoremap <Tab>4 <C-\><C-n>4gt
" tnoremap <Tab>5 <C-\><C-n>5gt

" normal mode:
nnoremap <Tab>h <C-w>h
nnoremap <Tab>j <C-w>j
nnoremap <Tab>k <C-w>k
nnoremap <Tab>l <C-w>l
nnoremap <Tab>1 1gt
nnoremap <Tab>2 2gt
nnoremap <Tab>3 3gt
nnoremap <Tab>4 4gt
nnoremap <Tab>5 5gt

" Enter adds lines in normal mode
nmap <S-CR> O<Esc>
nmap <CR> o<Esc>

" Write the damn thing
cmap w!! w !sudo tee % >/dev/null

cmap qq qa

" Plugin command hotkeys
map <C-n> :NERDTreeToggle<CR>
map <C-s> :StripWhitespace<CR>
