call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'puremourning/vimspector'
Plug 'tpope/vim-fugitive'

call plug#end()

"let g:vimspector_enable_mappings = 'HUMAN'
"packadd! vimspector
