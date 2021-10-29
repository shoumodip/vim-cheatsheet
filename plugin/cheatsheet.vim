if exists('g:loaded_cheatsheet')
    finish
endif

command! -bang -nargs=0 Cheatsheet call cheatsheet#open('<bang>' == '!')

let g:loaded_cheatsheet = 1
