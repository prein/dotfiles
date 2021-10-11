
" Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'wakatime/vim-wakatime'
Bundle 'scrooloose/syntastic'
"Bundle 'nanotech/jellybeans.vim'
Bundle 'dougireton/vim-chef'
Plugin 'codota/tabnine-vim'

call vundle#end()
filetype plugin indent on

"color jellybeans

set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
syntax on
set autoindent
" Show line numbers
set number
" Case-insensitive search
set ignorecase
" Highlight search results
set hlsearch

" Folding
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=20

let g:vim_markdown_folding_disabled=1 " Markdown
let javaScript_fold=1                 " JavaScript
let perl_fold=1                       " Perl
let php_folding=1                     " PHP
let r_syntax_folding=1                " R
let ruby_fold=1                       " Ruby
let sh_fold_enabled=1                 " sh
let vimsyn_folding='af'               " Vim script
let xml_syntax_folding=1              " XML

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_chef_checkers = ['foodcritic']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_python_checkers = ['python', 'pylint', 'pycodestyle', 'pep8']

" readable colorscheme for vimdiff
if &diff
  colorscheme evening
endif
