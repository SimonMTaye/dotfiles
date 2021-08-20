so ~/.config/nvim/maps.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/coc-config.vim
so ~/.config/nvim/vimspector-maps.vim
so ~/.config/nvim/treesitter.vim

set noerrorbells

" Set tabs to 4 spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

set nowrap

" Autoident
set smartindent
" Ignore case when searching
set smartcase

" Write stuff directly to disk before saving
set noswapfile
" Don't create a backup file for stuff
set nobackup
" Persist Undos even when file has been closed
set undofile
set incsearch

set updatetime=300

" Highlighting to avoid large column sizes
set colorcolumn=90
highlight ColorColumn ctermbg=8 guibg=lightgrey

" Show useful line numbers
set relativenumber
set nu

syntax on
syntax enable

" Theme config
set background=dark
colorscheme gruvbox
let g:palenight_terminal_italics=1
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Status line config
set laststatus=2
set statusline=
"Current Git branch info
set statusline+=%#Pmenu#
set statusline+=%{FugitiveStatusline()}
" Current File info (file path, file type, and modified or not
set statusline+=%#StatusLineNC#
set statusline+=\ %f
set statusline+=%m
set statusline+=\ %y
" Used to show coc messages
set statusline+=%=
set statusline+=%#Question#
set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}
"Line Number info
set statusline+=%=
set statusline+=%#Directory#
set statusline+=\ %l:%c\ (%L)

