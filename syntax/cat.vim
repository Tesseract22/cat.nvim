" Quit when a syntax file was already loaded.

syn match       cNumbers        display transparent "\<\d\|\.\d" contains=cNumber
syn match       cNumber         display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
syn region      String  start=+L\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end='$' contains=cSpecial,@Spell


syn keyword     Conditional     if then
syn keyword     Repeat          loop
syn keyword     Boolean         true false
syn keyword	Keyword		let proc foreign
syn keyword	Typedef		type
syn match	As		"as\s" nextgroup=TypeExpr
hi def link cNumber             Number

" Define the base type (e.g., "int", "float", "MyStruct", etc.)
syn match TypeIdentifier 	"\w\+" contained
syn match TypePtr		/*/ contained nextgroup=TypeExpr
syn match TypeArray		"\[.\+\]" contained contains=cNumber nextgroup=TypeExpr
syn region TypeBlock start=/{/ end=/}/ contained contains=TypeExpr
syn match TypeExpr		// contained nextgroup=TypeIdentifier,TypeArray,TypePtr,TypeBlock
syn match Type ":\s*" nextgroup=TypeExpr
hi def link TypeExpr	Type
hi def link TypeIdentifier	Type
hi def link As	Operator
hi link TypeBlock	Operator
" Match function calls (functionName followed by parentheses)
syn match Function "\<\w\+\>\s*\ze(.*)"
" Match arithmetic operators: +, -, *, /, %, >, <, etc.
"syn match Operator "[+\-*/%=<>!&|^]"

let b:current_syntax = 'cat'
