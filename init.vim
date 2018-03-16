
scriptencoding utf-8

" Disable vi-compatibility
set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'NLKNguyen/papercolor-theme'

  Plug 'junegunn/fzf'
  Plug 'junegunn/vim-easy-align'

  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/neomru.vim'

  Plug 'rhysd/clever-f.vim'
  Plug 'justinmk/vim-sneak'

  Plug 'tpope/vim-surround'

  Plug 'neomake/neomake'
  Plug 'parsonsmatt/intero-neovim'
  Plug 'autozimu/LanguageClient-neovim', {
              \ 'branch': 'next',
              \ 'do': 'bash install.sh'
              \ }
call plug#end()


syntax on

" Give one virtual space at end of line
set virtualedit=onemore

" Turn on line number
set number

" Allow changing buffer without saving it first
set hidden

" Case insensitive search
set ignorecase
set smartcase

" Set sensible heights for splits
"set winheight=50

" Make regex a little easier to type
set magic

" Show matching brackets
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Set encoding to utf-8
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Tab settings
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab

" Text display settings
set copyindent
set smartindent
set linebreak
set textwidth=120
set autoindent
set nowrap

" Fixes backspace
set backspace=indent,eol,start

" Enable line/column info at bottom
set ruler

" enable mouse support
set mouse=a mousemodel=popup
set mousehide

" Set colors in terminal
" Solarized, dark, with true color support
set termguicolors 
" set background=dark
" colorscheme PaperColor

if has("gui_vimr")
" Here goes some VimR specific settings like
  colorscheme PaperColor
  color PaperColor
endif

"
" Map leader and localleader key to comma
"
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

" Use deoplete.
let g:deoplete#enable_at_startup = 1

inoremap <C-L> <C-O>:nohls<CR>
inoremap jk <esc>
nnoremap ; :

" JSON formatting using jq
if executable("jq")
    nnoremap <unique> <Leader>q :%!jq .<CR>
    nnoremap <unique> <Leader>Q :%!jq . -c<CR>
endif

" === Sneak {{{
let g:sneak#streak = 1
" }}}

source ~/.config/nvim/language_client.vim
source ~/.config/nvim/intero.vim
source ~/.config/nvim/denite.vim
