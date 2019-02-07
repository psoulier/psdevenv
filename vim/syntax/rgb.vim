
if exists("b:current_syntax")
	finish
endif

syntax keyword 	rgbKeyword type let var if else for while module import export return macro void
syntax keyword	rgbType int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 bool float float32 float64
syntax keyword	rgbBoolean true false
syntax match 	rgbLineComment		"//.*"
syntax region	rgbBlockComment	start="/\*" end="\*/" contains=rgbBlockComment,rgbTodo
syntax keyword	rgbStruct struct
syntax keyword  rgbTodo contained 	TODO FIXME XXX NOTE

syntax region	rgbString	start=+"+ skip=+\\\\\|\\"+ end=+"+

syntax  match  rgbNumber	"-\=\<\d\+\>\=u\?"
syntax  match  rgbHexNumber	"0x\x\+"

highlight link rgbKeyword 	Keyword
highlight link rgbLineComment	Comment
highlight link rgbBlockComment	Comment
highlight link rgbTodo		Todo
highlight link rgbString	String
highlight link rgbBoolean	Boolean
highlight link rgbType		Type
highlight link rgbStruct	Structure
highlight link rgbNumber	Number
highlight link rgbHexNumber	Number

let b:current_syntax = "rgb"
