
if exists("b:current_syntax")
	finish
endif

syntax keyword 	humuKeyword fun type let var if else for while public impl interface unique shared auto rec module import and or xor not return
syntax keyword	humuType int uint uint8 uint16 uint32 uint64 bool float
syntax keyword	humuBoolean true false
syntax match 	humuLineComment		"//.*"
syntax region	humuBlockComment	start="/\*" end="\*/" contains=humuBlockComment,humuTodo
syntax keyword	humuStruct struct
syntax keyword  humuTodo contained 	TODO FIXME XXX NOTE

syntax region	humuString		start=+"+ skip=+\\\\\|\\"+ end=+"+

syntax  match  humuNumber	"-\=\<\d\+\>\=u\?"
syntax  match  humuHexNumber	"0x\x\+"

highlight link humuKeyword 	Keyword
highlight link humuLineComment	Comment
highlight link humuBlockComment	Comment
highlight link humuTodo		Todo
highlight link humuString	String
highlight link humuBoolean	Boolean
highlight link humuType		Type
highlight link humuStruct	Structure
highlight link humuNumber	Number
highlight link humuHexNumber	Number

let b:current_syntax = "humu"
