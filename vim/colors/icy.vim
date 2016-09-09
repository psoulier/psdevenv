" Maintainer:	Paul
" Last Change:	November 12 2011

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "icy"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine 	guibg=#2d2d2d
  hi CursorColumn 	guibg=#2d2d2d
  hi MatchParen 	guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu 		guifg=#f6f3e8 guibg=#444444
  hi PmenuSel 		guifg=#000000 guibg=#cae682
endif

hi ColorColumn		ctermbg=lightgrey guibg=#c8c8e6

" General colors
hi Cursor 		guifg=NONE    guibg=#656565 gui=none
hi Normal 		guifg=black guibg=white gui=none
hi NonText 		guifg=#808080 guibg=#9ac3e8 gui=none
hi LineNr 		guifg=#857b6f guibg=#000000 gui=none
hi StatusLine 		guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC 	guifg=#857b6f guibg=#444444 gui=none
hi VertSplit 		guifg=#444444 guibg=#444444 gui=none
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual		guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey		guifg=#808080 guibg=#343434 gui=none

" Syntax highlighting
hi Comment 		guifg=#99ccff gui=italic
hi Todo 		guifg=#8f8f8f gui=italic
hi Constant 		guifg=#946ee7 gui=bold
hi String 		guifg=#cc0099 gui=italic
hi Identifier 		guifg=#cae682 gui=none
hi Function 		guifg=#3366cc gui=bold
hi Type 		guifg=#0066ff gui=italic
hi Statement 		guifg=#0066ff gui=italic
hi Keyword		guifg=#0066ff gui=italic
hi PreProc 		guifg=white guibg=#66fdff gui=bold
hi Number		guifg=#cc99ff gui=bold
hi Special		guifg=#e7f6da gui=none

