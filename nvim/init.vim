if exists('g:vscode')

"" OSX settings
" Make yy, D, and P work with the OSX/Linux clipboards
set clipboard^=unnamed,unnamedplus

else
" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugs will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'


Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
"Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting

Plug 'kevinoid/vim-jsonc'

"" Plugs
Plug 'chriskempson/base16-vim'                    "Base16 Color Scheme
Plug 'airblade/vim-gitgutter'
"Plug 'ap/vim-css-color'

Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'                       "Pairs of handy bracket mappings

Plug 'christoomey/vim-tmux-navigator'

Plug 'editorconfig/editorconfig-vim'
Plug 'honza/vim-snippets'

"Plug 'rizzatti/dash.vim'

"Plug 'fmoralesc/vim-pad', { 'branch': 'devel' }


Plug 'cohama/lexima.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter-angular'

" telescope dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" telescope
Plug 'nvim-telescope/telescope.nvim'

"Plug 'hrsh7th/nvim-compe'

" List ends here. Plugs become visible to Vim after this call.
call plug#end()


"" Look
syntax on
set background=dark
let base16colorspace=256    " Access colors present in 256 colorspace
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
set gfn=Source\ Code\ Pro\ for\ Powerline:h12
"set gfn=Menlo:h14
set t_Co=256
set laststatus=2

if has("gui_running")
    set guioptions=egmt
endif

"" Common Settings
" UTF8 or die.
set encoding=utf8
set hidden
set autoindent
set showmode
set showcmd
set cursorline
" Numbered lines.
set number
" Keep cursor away from edges of screen.
set so=14

"" Tab Settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"" Backspace settings
set backspace=2 " make backspace work like most other apps

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" show special characters in Vim
set list
set listchars=tab:▸\ ,eol:¬

"" Key Mappings
let mapleader = ","
let maplocalleader = ";"
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Quickly open/reload vim
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" telescope keybindings
nnoremap <leader>f <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

set ttimeout
set ttimeoutlen=50
set colorcolumn=+1

"" OSX settings
" Make yy, D, and P work with the OSX/Linux clipboards
set clipboard^=unnamed,unnamedplus
" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

"" Tab settings
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

"" Plugin Settings

" Dash
:nmap <silent> K <Plug>DashSearch

" vim-pad
"let g:pad#dir = "~/notes/"
"let g:pad#default_file_extension = ".md"
"let g:pad#window_height = 22
"let g:pad#window_width = 80


command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"
" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF


" COC
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

endif
