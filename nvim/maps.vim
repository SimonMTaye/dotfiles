:let mapleader=" "
" Get rid of highlighting when esc is pressed
nnoremap <silent><esc> :noh<CR><esc>

" Window commands
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>
nnoremap <silent><leader>wd :vertical resize +5<CR>
nnoremap <silent><leader>wa :vertical resize -5<CR>
nnoremap <silent><leader>ww :res +5<CR>
nnoremap <silent><leader>ws :res +5<CR>

" System clipboard copy commands
nmap <silent><leader>y "+y
nmap <silent><leader>p "+p

" New line and Escape
nmap <silent><leader>o o<esc>
nmap <silent><leader>O O<esc>

" File tree
nnoremap <silent><leader>e :NERDTree<CR>
"Search files
nnoremap <silent><leader>k :Files <CR>


