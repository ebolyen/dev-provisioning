let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeMouseMode = 2
let g:NERDTreeMinimalUI = 1

" Open NERDTree if no argument, or a directory is provided; set working dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | wincmd p | ene | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | exe 'cd' argv()[0] | wincmd p | ene | endif

" Modified NERDTree git plugin from @robinfehr, waiting on upstream
let g:NERDTreeGitStatusWithFlags = 0
let g:NERDTreeGitStatusNodeColorization = 1
" These are the links that seem to do anything
hi def link NERDTreeGitStatusUnmerged Special
hi def link NERDTreeGitStatusModified Tag
hi def link NERDTreeGitStatusAdded DiffNewFile
" It is unclear if these do anything
hi def link NERDTreeGitStatusUnknown Comment
hi def link NERDTreeGitStatusIgnored Comment
