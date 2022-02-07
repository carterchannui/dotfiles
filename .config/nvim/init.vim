set nowb
set noswapfile

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Themes:
" Plug 'ghifarit53/tokyonight-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'projekt0n/github-nvim-theme'
" Plug 'EdenEast/nightfox.nvim'
" Plug 'marko-cerovac/material.nvim'
" Plug 'tiagovla/tokyodark.nvim'
" Plug 'rebelot/kanagawa.nvim'
" Airline:
Plug 'itchyny/lightline.vim'
" PearTree:
Plug 'tmsvg/pear-tree'
" PolyGlot:
" Plug 'sheerun/vim-polyglot'
" Telescope:
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" TreeSitter:
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" Current Theme
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

" Theme: tokyodark
" let g:tokyodark_transparent_background = 0
" let g:tokyodark_enable_italic_comment = 1
" let g:tokyodark_enable_italic = 1
" let g:tokyodark_color_gamma = "1.0"
" colorscheme tokyodark

" Theme: kanagawa
" colorscheme kanagawa

" Airline:
set noshowmode
let g:lightline = {	
      \ 'colorscheme': 'one',
      \ }

nnoremap <leader>ff <cmd>Telescope find_files<cr>

