hi Comment term=bold cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=Magenta guibg=NONE
noremap <F9> :tabp<CR>
noremap <F10> :tabn<CR>
set paste
set nowrap
set hls
set ts=4
set sw=4
set bs=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
syn on
au BufNewFile,BufRead *.md set filetype=markdown
"common on the fly commands
"setf filetype
