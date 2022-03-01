call plug#begin('~/.config/nvim/autoload/plugged')

"Plug 'gruvbox-community/gruvbox'
Plug 'morhetz/gruvbox'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'

" Airline
Plug 'vim-airline/vim-airline'

" File Explorer
Plug 'preservim/nerdtree'

" Comment code
Plug 'preservim/nerdcommenter'

" Intergration with GIT
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" For icon
Plug 'ryanoasis/vim-devicons'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'vimwiki/vimwiki'

"Plug 'davidhalter/jedi-vim'

call plug#end()

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif



let g:mapleader = "\<Space>"

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/NerdTree.vim
source $HOME/.config/nvim/plug-config/prettier.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/ForCP.vim
source $HOME/.config/nvim/plug-config/NerdComment.vim
source $HOME/.config/nvim/plug-config/GitIntegration.vim
source $HOME/.config/nvim/plug-config/fzfConfig.vim
source $HOME/.config/nvim/plug-config/Telesope.nvim.vim
source $HOME/.config/nvim/plug-config/treeSitter.vim
source $HOME/.config/nvim/plug-config/markdown.vim
source $HOME/.config/nvim/plug-config/htmlTemplate.vim
"source $HOME/.config/nvim/plug-config/lspConfig.vim
"source $HOME/.config/nvim/plug-config/completion.vim

set signcolumn=yes 
"syntax on 
set nowrap
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set incsearch
set scrolloff=8
set nu
set mouse=a
set ruler
set clipboard=unnamedplus               " Copy paste between vim and everything else
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set encoding=UTF-8
set noswapfile
set spelllang=en,cjk
set spellsuggest=best,9
set nocompatible
set shell=/usr/local/bin/fish
filetype plugin on

" Theme for most stuff
colorscheme gruvbox
set background=dark
let $BAT_THEME='gruvbox'


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

noremap <silent> <A-Left> :vertical resize +3<CR>
noremap <silent> <A-Right> :vertical resize -3<CR>
noremap <silent> <A-Up> :resize +3<CR>
noremap <silent> <A-Down> :resize -3<CR>


" Escape terminal 
:tnoremap <Esc> <C-\><C-n>

"Copy code with CTRL-A
map <C-a> <esc>ggVG<CR>

" Better syntax highlighting 
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
  enable = true,
  },
}
EOF

let g:NERDCustomDelimiters = {  'javascriptreact': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' } }

let g:vimwiki_list = [{'path': '~/Desktop/Notes',
                      \ 'syntax': 'markdown', 'ext': '.md',
                      \ 'index': 'Wiki'}]
let g:vimwiki_global_ext = 0

hi default CocUnusedHighlight ctermfg=DarkGray
hi default link CocErrorHighlight   CocUnderline 
hi default link CocWarningHighlight CocUnderline
