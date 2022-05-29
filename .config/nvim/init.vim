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

lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "java", "python" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be  list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, diable = { "yaml" } },
}
EOF

