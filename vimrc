" An example for a vimrc file.

" When started as "evim", evim.vim will already have done these settings.
"

if v:progname =~? "evim"
  finish
endif

" Initialize pathogen; it has to be on the top
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set ai
set history=500		" keep 500 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set nowrap
set smarttab
set expandtab "Ставим табы пробелами
set number
set foldcolumn=1
set noswapfile
set ignorecase
set modelines=5
"set paste
set hlsearch
set background=dark

" Python specific
set tabstop=4       
set shiftwidth=4
set softtabstop=4
let python_highlight_all = 1

" Coloration
syntax on
colorscheme darkblue



" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Backup
set backup
set backupdir=~/.backup,.,/tmp
set directory=.,~/.backup,/tmp

"Extensions
au BufRead,BufNewFile *.inp set filetype=gamess
au BufRead,BufNewFile *.gms set filetype=log-gamess
au! Syntax gamess source $HOME/.vim/syntax/gamess.vim
au! Syntax log-gamess source $HOME/.vim/syntax/log-gamess.vim
"au! Syntax python source ~/.vim/syntax/python.vim



filetype plugin indent on



"
" Hotkeys
"
"
" To make jumping between buffers easier
map <Tab> <C-W>W

" Press Space to turn off highlighting and clear any message already displayed
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>



"
" Saves and loads folding after restart Vim
"
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview



"
" Smart folding
"
let fortran_fold=1
set foldmethod=manual
let AFB_allfold_full_disabled=1
source $HOME/.vim/bundle/allfold/plugin/allfold_basic.vim

let vimrplugin_applescript = 0
