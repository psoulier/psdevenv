
if exists("b:current_syntax")
	finish
endif

syntax keyword 	humuKeyword fun type let method if else for while public impl interface unique shared auto rec module import
syntax keyword	humuTyp int uint bool float
syntax keyword	humuBoolean true false
syntax match 	humuLineComment		"//.*"
syntax region	humuBlockComment	start="/\*" end="\*/" contains=humuBlockComment,humuTodo
syntax keyword  humuTodo contained 	TODO FIXME XXX NOTE

syntax region	humuString		start=+"+ skip=+\\\\\|\\"+ end=+"+

highlight link humuKeyword 	Keyword
highlight link humuLineComment	Comment
highlight link humuBlockComment	Comment
highlight link humuTodo		Todo
highlight link humuString	String
highlight link humuBoolean	Boolean
highlight link humuType		Type

let b:current_syntax = "humu"
