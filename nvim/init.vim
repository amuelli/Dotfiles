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
Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting

"" Plugs
Plug 'chriskempson/base16-vim'                    "Base16 Color Scheme
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'

Plug 'scrooloose/nerdtree'                        "NerdTree Navigation Bar
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'                       "Pairs of handy bracket mappings

Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux-focus-events'         "Make terminal vim and tmux work better together.


Plug 'w0rp/ale'                                   "Automated Syntax and Style Checking
Plug 'editorconfig/editorconfig-vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'heavenshell/vim-jsdoc'

Plug 'leafgarland/typescript-vim'
"Plug 'Quramy/tsuquyomi'

Plug 'tpope/vim-markdown'
Plug 'shime/vim-livedown'

Plug 'rizzatti/dash.vim'

Plug 'fmoralesc/vim-pad', { 'branch': 'devel' }

Plug 'tpope/vim-speeddating'

Plug 'cohama/lexima.vim'


" List ends here. Plugs become visible to Vim after this call.
call plug#end()


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

noremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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
nnoremap <leader>m :NERDTreeToggle<cr>
" faster window navigation
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Quickly open/reload vim
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" fzf keybindings
nnoremap <leader>d :Files<cr>
nnoremap <leader>f :GFiles<cr>
nnoremap <leader>g :GFiles?<cr>
nnoremap <leader>l :Lines<cr>
" NERDTree
nmap <leader>t :NERDTreeFind<CR>

set ttimeout
set ttimeoutlen=50
set colorcolumn=+1

"" OSX settings
" Make yy, D, and P work with the OSX/Linux clipboards
set clipboard^=unnamed,unnamedplus
" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
" enable mouse resizeing and scrolling
set mouse=n


"" Tab settings
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

"" Plugin Settings

" JavaScript
let g:used_javascript_libs = 'angularjs,jquery,jasmine'
" JavaScript (tabs = 2, lines = 79)
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
autocmd FileType javascript set sts=2
let g:jsdoc_default_mapping=0

" NERDTree
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']

"Ulitsnips
"" Trigger configuration
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" :UltiSnipsEdit to open in split window.
"let g:UltiSnipsEditSplit="context"
"let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']


" vim-airline
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1

" Dash
:nmap <silent> K <Plug>DashSearch

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:pad#search_backend = "ag"
endif

" vim-pad
let g:pad#dir = "~/notes/"
let g:pad#default_file_extension = ".md"
let g:pad#window_height = 22
let g:pad#window_width = 80

:nnoremap + /\$\w\+_
:nnoremap - f-x~

" convert ### headings into *bold* text
:nmap \# :%s/###\ \(\w\+\)/*\1*/g<CR>

"let g:ale_linters = {
"\   'javascript': ['eslint'],
"\}
"let g:ale_fixers = {
"\   'javascript': ['eslint'],
"\}

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
