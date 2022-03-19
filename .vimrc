execute pathogen#infect()
syntax on
filetype plugin indent on

set termguicolors
" colorscheme pink-moon
set background=dark

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set noesckeys

set autochdir

:nnoremap <F5> "=strftime("%F %r")<CR>P

:inoremap <F5> <C-R>=strftime("%F %r")<CR>


set laststatus=2


:nnoremap <F6> :buffers<CR>:buffer<Space>

" https://vi.stackexchange.com/questions/36920/how-to-reserve-a-dd-into-a-register-so-i-can-yank-it-immediately-even-after-a-c/37052#37052
:nnoremap - "
