" mode settings
set paste
set nowrap

" cursor settings
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn

" key mappings
noremap <F1> :ALEFix eslint<CR>
noremap <F9> :tabp<CR>
noremap <F10> :tabn<CR>
set backspace=2

" indentation settings
set tabstop=4
set shiftwidth=4

" status line settings
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" highlight settings
set hlsearch
syntax on
autocmd BufNewFile,BufRead *.md set filetype=markdown
highlight Comment term=bold
	\ cterm=NONE ctermfg=Magenta ctermbg=NONE
	\ gui=NONE guifg=Magenta guibg=NONE

"" custom commands
" Show <var> displays the value of the variable var
command! -nargs=+ Show :set <args>?

"common on the fly commands
"setf filetype
