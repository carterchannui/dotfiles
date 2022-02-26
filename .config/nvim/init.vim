set nowb
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
" List of Themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'projekt0n/github-nvim-theme'
Plug 'navarasu/onedark.nvim'
" List of Tools
Plug 'itchyny/lightline.vim'		" Lightline status bar 
" Plug 'tmsvg/pear-tree'			" Pear-tree auto-pair (kinda buggy with js)
Plug 'nvim-lua/plenary.nvim'		" Module for async programming
Plug 'nvim-telescope/telescope.nvim'	" Telescope fuzzy finder
Plug 'tpope/vim-fugitive'		" Git wrapper
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'sheerun/vim-polyglot'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
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

"Latex Live Viewer:
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -g -a Preview'

"LSP Config:
lua << EOF
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)

vim.cmd [[
  highlight! DiagnosticLineNrError guibg=#51202A guifg=#FF0000 gui=bold
  highlight! DiagnosticLineNrWarn guibg=#51412A guifg=#FFA500 gui=bold
  highlight! DiagnosticLineNrInfo guibg=#1E535D guifg=#00FFFF gui=bold
  highlight! DiagnosticLineNrHint guibg=#1E205D guifg=#0000FF gui=bold

  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
]]
end)

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF

" Mappings
inoremap jk <Esc>
nnoremap ff :Telescope find_files theme=dropdown<CR>
