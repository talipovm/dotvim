" Vim syntax file
" Language:	Gamess Input File
" Maintainer:	Talipov Marat <mirari@mail.ru>
" Last Change:	2008 Mar 18

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore
syn sync minlines=50000 maxlines=100000


"syn match gmsAnyComments /^.*$/
"syn match gmsComments /^- -.*/

"syn match gmsComments /!.*/ contained
"syn match gmsEqual /=/ contained
"syn match gmsParam /=[a-zA-Z0-9.]\+/ms=s+1 contained
"syn match gmsOption "[a-zA-Z0-9()]\+="me=e-1  contained
"syn match gmsCheck /check/ contained
"syn region gmsGroup start=/^ \$\(end\)\@!/ end=/\$END/ contains=gmsOption,gmsParam,gmsComments,gmsCheck

"syn region gmsGroupHess start=/^ \$hess/ end=/\$END/
"syn region gmsGroupVec start=/^ \$vec/ end=/\$END/

"syn region gmsCommentedGroup start=/!.*\$\(end\)\@!/ end=/\$END/ 

syn match gmsHeader /^[ ]*[-*].*[-*]$/
syn match Extremum /equili.*$/
syn match Extremum /saddle point located/
syn match Extremum /next point.*$/
syn match energy /final.*energy.*$/
syn match largecsf /^[ ]*[1-9]*[ -]*0\.[1-9][0-9]*[ ]*[012]*$/
syn match largecsf /^ [01]* | [01]* | [ -]*0\.[1-9][0-9]*$/
syn region thermo start=/^.*thermochemistry at/ end=/end of.*$/
syn match gmsInput /^ input card.*$/
syn region gmsGeom start=/your fully subst/ end=/^$/

syn case match

command -nargs=+ HiLink hi def link <args>

hi colorGroupName ctermbg=black ctermfg=yellow
hi colorComment ctermbg=black ctermfg=darkmagenta
hi colorSpecialComments ctermbg=black ctermfg=blue
hi colorOption ctermbg=black ctermfg=darkgreen
hi colorGroup ctermbg=black ctermfg=darkyellow
hi colorParams    ctermbg=black ctermfg=grey
hi colorGroupVec ctermbg=black ctermfg=grey
hi colorEqual ctermbg=black ctermfg=grey
hi colorSymmetry ctermbg=black ctermfg=blue
hi colorRawText ctermbg=black ctermfg=darkgreen
hi colorAlert ctermbg=black ctermfg=red

HiLink largecsf colorGroupName
HiLink gmsGeom colorGroupName
HiLink gmsInput colorSpecialComments
HiLink gmsHeader colorComment
HiLink Extremum colorGroupName
HiLink energy colorGroupName
HiLink thermo colorGroupName

HiLink gmsCheck                 colorAlert
HiLink gmsGroup                 colorGroup
HiLink gmsGroupHess             colorRawText
HiLink gmsGroupData             colorRawText
HiLink gmsGroupVec              colorRawText
HiLink gmsGroupName             colorGroupName
HiLink gmsCommentedGroup        colorComment
HiLink gmsEqual                 colorEqual
HiLink gmsComments              colorSpecialComments
HiLink gmsAnyComments           colorComment
HiLink gmsOption                colorOption
HiLink gmsParam                 colorParams

delcommand HiLink
let b:current_syntax = "gamess"

map <F2> v/end<CR>$:w! >>
" vim: ts=8
