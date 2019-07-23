set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "qaztom"



" Basic identifiers.
hi              Identifier      ctermfg=DarkYellow
hi link         Function        Identifier

" Language keywords and operators.
hi              Statement       ctermfg=Blue
hi link         Conditional     Statement
hi link         Repeat          Statement
hi link         Label           Statement
hi link         Operator        Statement
hi link         Keyword         Statement
hi link         Exception       Statement
hi link         Boolean         Statement
hi              Type            ctermfg=Blue
hi link         StorageClass    Type
hi link         Structure       Type
hi link         Typedef         Type
hi              Delimiter       ctermfg=White

" Ordinary comments and documentation - let them look similarly.
hi              Comment         ctermfg=Green
hi link         SpecialComment  Comment

" Constants.
hi              Constant        ctermfg=Magenta
hi link         String          Constant
hi link         Character       Constant
hi link         Number          Constant
hi link         Float           Number

" Preprocessor and macro stuff. Render this codegen plague red!
hi              PreProc         ctermfg=DarkRed
hi link         Define          PreProc
hi link         Macro           PreProc
hi link         PreCondit       PreProc

" Includes and imports.
hi              Include         ctermfg=Yellow

" Tabs and trailing spaces.
hi              SpecialKey      ctermfg=Red



" NERDTree directory representation.
hi              Directory       ctermfg=Blue



" This theme is based on "zellner" theme, but colors are changed.
" The following definitions are still to be reconsidered.

hi Special term=bold ctermfg=Magenta guifg=Magenta
hi Visual term=reverse ctermfg=Yellow ctermbg=Red gui=NONE guifg=Black guibg=Yellow
hi Search term=reverse ctermfg=Black ctermbg=Cyan gui=NONE guifg=Black guibg=Cyan
hi Tag term=bold ctermfg=DarkGreen guifg=DarkGreen
hi Error term=reverse ctermfg=15 ctermbg=9 guibg=Red guifg=White
hi Todo term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
hi  StatusLine term=bold,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=NONE guifg=Yellow guibg=DarkGray
hi! link MoreMsg Comment
hi! link ErrorMsg Visual
hi! link WarningMsg ErrorMsg
hi! link Question Comment
hi link SpecialChar	Special
hi link Debug		Special
