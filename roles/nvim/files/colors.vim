let g:airline_theme='base16_shell'
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
hi EndOfBuffer ctermfg=bg
