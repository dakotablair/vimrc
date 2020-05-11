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

"" Plugin configuration
" Read help files
" helptags ALL

" ALE configuration
let g:ale_fixers = {
	\ '*': ['remove_trailing_lines', 'trim_whitespace'],
	\ 'javascript': ['eslint', 'prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_html_tidy_options = '-q -e -language en -config $VIM_TIDYCONFIG'

"" custom commands
" Disable and Enable ALE
command AR ALEDisable|ALEEnable

" Show <var> displays the value of the variable var
command! -nargs=+ Show :set <args>?

"common on the fly commands
"setf filetype

" .vimrc work in progress
if filereadable(expand($VIM_SANDBOX))
	source $VIM_SANDBOX
endif
