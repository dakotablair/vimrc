"mode settings
set paste
set nowrap

"key mappings
noremap <F9> :tabp<CR>
noremap <F10> :tabn<CR>
set backspace=2

"indentation settings
set tabstop=4
set shiftwidth=4

"status line settings
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"highlight settings
set hlsearch
syntax on
autocmd BufNewFile,BufRead *.md set filetype=markdown
highlight Comment term=bold
	\ cterm=NONE ctermfg=Magenta ctermbg=NONE
	\ gui=NONE guifg=Magenta guibg=NONE

"common on the fly commands
"setf filetype
