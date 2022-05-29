set nowb
set number
set noswapfile
set nocompatible
set autoindent                    " Indent according to previous line.
set expandtab                     " Use spaces instead of tabs.
set softtabstop=4                 " Tab key indents by 4 spaces.
set shiftwidth=4                  " 1 tab == 4 spaces
set tabstop=4                     " for sure.

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Themes:
Plug 'navarasu/onedark.nvim'
" List of Tools:
Plug 'itchyny/lightline.vim'		    " Lightline status bar 
Plug 'nvim-lua/plenary.nvim'		    " Module for async programming
Plug 'nvim-telescope/telescope.nvim'	" Telescope fuzzy finder
Plug 'tpope/vim-fugitive'		        " Git wrapper
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
call plug#end()

" Theme: OneDark
let g:onedark_config = {
    \ 'style': 'deep',
    \ 'transparent': v:true,
\}
colorscheme onedark

" Airline:
set noshowmode
let g:lightline = {	
      \ 'colorscheme': 'ayu_mirage',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Mappings
inoremap jk <Esc>
nnoremap ff :Telescope find_files theme=dropdown<CR>
