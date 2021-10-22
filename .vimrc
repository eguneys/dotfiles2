execute pathogen#infect()
syntax on
filetype plugin indent on

set termguicolors
colorscheme pink-moon
set background=dark

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set noesckeys

let g:netrw_preview   = 1


augroup UnderlineSpell
  autocmd!
  autocmd ColorScheme * if &ft ==? 'markdown'
        \| highlight SpellBad cterm=underline
        \| set spelllang=en_us
        \| endif
augroup END
