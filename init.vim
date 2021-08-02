let g:mapleader = "\<Space>"

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/NerdTree.vim
source $HOME/.config/nvim/plug-config/prettier.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/ForCP.vim

syntax enable
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set incsearch
set scrolloff=8
set signcolumn=yes 
set nu
set mouse=a
set ruler
set clipboard=unnamedplus               " Copy paste between vim and everything else
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" File Explorer
Plug 'preservim/nerdtree'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

call plug#end()
"
" Theme for most stuff
colorscheme gruvbox

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'gruvbox'

" Always show tabs
set showtabline=4

" We don't need to see things like -- INSERT -- anymore
set noshowmode


" Mapping 

" Alternate way to save
nnoremap <C-s> :w<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Escape terminal 
:tnoremap <Esc> <C-\><C-n>

"Copy code with CTRL-A
map <C-a> <esc>ggVG<CR>


