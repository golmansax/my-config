" author @holman

set rnu
set ruler
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch " Highlight search patterns
set ignorecase
set smartcase
set visualbell " Flash screen instead of sounding beep
set colorcolumn=80

syntax on
set bg=dark

filetype on

" Indent settings for makefile
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

augroup filetype
  au BufNewFile,BufRead *.eliom set filetype=ocaml
  au BufNewFile,BufRead *.html set filetype=php.html
  au BufNewFile,BufRead *.phpt set filetype=php
  au BufNewFile,BufRead *.inc set filetype=php
  au BufNewFile,BufRead *.template set filetype=htmljinja
  au BufNewFile,BufRead *.scss set filetype=scss
augroup END

" Bash like tab completion
set wildmenu
set wildmode=list:longest

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Ignore python # smartindent
:inoremap # X#
