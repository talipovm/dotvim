" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Initialize pathogen; it has to be on the top
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set autoindent
set history=500     " keep 500 lines of command line history
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set incsearch       " do incremental searching
set nowrap          " Don't wrap long lines
set smarttab
set expandtab       " Ставим табы пробелами
set number          " Show line numbers
set foldcolumn=1    " Show fold column
set noswapfile
set ignorecase      " ignore case during search
set smartcase       " ignore case only for lowercase patterns
set modelines=5     " First 5 and last 5 lines might contain vim code
set hlsearch        " Highlight search
set background=dark " Set dark backgroup (another option is light)

" Python specific
set tabstop=4       
set shiftwidth=4
set softtabstop=4
let python_highlight_all = 1

" Coloration
syntax on
" colorscheme Peacock


set backspace=indent,eol,start " allow backspacing over everything in insert mode

" Backup
set backup
set backupdir=~/.backup,.,/tmp
set directory=.,~/.backup,/tmp

"Extensions
au BufRead,BufNewFile *.inp set filetype=gamess
au BufRead,BufNewFile *.gms set filetype=log-gamess
au! Syntax gamess source $HOME/.vim/syntax/gamess.vim
au! Syntax log-gamess source $HOME/.vim/syntax/log-gamess.vim

filetype plugin indent on

"
" Hotkeys
"
"
" To make jumping between buffers easier
nmap <Tab> <C-W>W

" Press Space to turn off highlighting and clear any message already displayed
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


"
" Saves and loads folding after restart Vim
"
"autocmd BufWinLeave ?* mkview
"autocmd BufWinEnter ?* silent loadview


"
" Smart folding
"
let fortran_fold=1
set foldmethod=manual
let AFB_allfold_full_disabled=1
source $HOME/.vim/bundle/allfold/plugin/allfold_basic.vim

let vimrplugin_applescript = 0 " R-Vim plugin
