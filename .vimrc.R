" vim: ft=vim
" sourced in .vimrc.local

Plug 'jalvesaq/Nvim-R'

nnoremap <leader>sh :RSend shiny::runApp('.')<CR>
