
" Plugs will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
"Plug 'tpope/vim-unimpaired'                       "Pairs of handy bracket mappings

" List ends here. Plugs become visible to Vim after this call.
call plug#end()

"" OSX settings
" Make yy, D, and P work with the OSX/Linux clipboards
set clipboard^=unnamed,unnamedplus

let mapleader = ","
nnoremap <leader>ev :e ~/.config/nvim/init-vscode.vim<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

" vim-commentary equivalent
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine
