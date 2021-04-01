call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

if !empty(glob("$HOME/.vimrc.local"))
  source ~/.vimrc.local
endif

call plug#end()

set title
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set encoding=utf-8
set number relativenumber
set mouse=
set wildmenu
set wildmode=longest:full,full
set noerrorbells
set path+=**
set tags=./tags,tags;$HOME
set spelllang=cs

if has('clipboard')
  xnoremap <silent> p p:let @+=@0<CR>:let @"=@0<CR>
else
  xnoremap <silent> p p:let @"=@0<CR>
endif

filetype plugin on
syntax enable

set showmatch
set mat=2

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  "     " render properly when inside 256-color tmux and GNU screen.
  " see also https://sunaku.github.io/vim-256color-bce.html
  set t_ut=
endif

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set completeopt=noinsert,menuone,noselect
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <Nul> <C-x><C-o>

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
