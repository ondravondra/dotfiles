" vim: ft=vim
" sourced in .vimrc.local

Plug 'jalvesaq/Nvim-R'

let R_assign = 0
let r_indent_align_args = 0

nnoremap <leader>sh :RSend shiny::runApp('.')<CR>
