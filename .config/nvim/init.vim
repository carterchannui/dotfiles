set nowb
set noswapfile

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" List of Themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'ghifarit53/tokyonight-vim'
" Plug 'projekt0n/github-nvim-theme'
" Plug 'EdenEast/nightfox.nvim'
" Plug 'marko-cerovac/material.nvim'
" Plug 'tiagovla/tokyodark.nvim'
" Plug 'rebelot/kanagawa.nvim'

" List of Tools
Plug 'itchyny/lightline.vim'		" Lightline status bar 
Plug 'tmsvg/pear-tree'			" Pear-tree auto-pair 
Plug 'nvim-lua/plenary.nvim'		" Module for async programming
Plug 'nvim-telescope/telescope.nvim'	" Telescope fuzzy finder
Plug 'tpope/vim-fugitive'		" Git wrapper
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" Theme: tokyonight
let g:tokyonight_transparent=1
let g:tokyonight_style="storm"
colorscheme tokyonight

" Theme: github_*
" let g:github_transparent=1
" colorscheme github_dimmed

" Theme: nightfox
" colorscheme nightfox

" Theme: material
" let g:material_style = "palenight"
" colorscheme material

" Theme: kanagawa
" colorscheme kanagawa

" Airline:
set noshowmode
let g:lightline = {	
      \ 'colorscheme': 'ayu_mirage',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Mappings
inoremap jk <Esc>
nnoremap ff :Telescope find_files theme=dropdown<CR>

