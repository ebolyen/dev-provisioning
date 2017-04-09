let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeMouseMode = 2
let g:NERDTreeMinimalUI = 1

" Open NERDTree on startup unless comitting
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif

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
