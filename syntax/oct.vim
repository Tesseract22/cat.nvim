syn match       cNumbers        display transparent "\<\d\|\.\d" contains=cNumber
syn match       cNumber         display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"


syn keyword     Conditional     if else
syn keyword     Repeat          for loop
syn keyword     Boolean         true false
syn keyword	Keyword		scale instrument volume end
syn keyword	Typedef		type
syn keyword	Operator	as
hi def link cNumber             Number

syn match Operator "[$=\.'\\]"
syn match Operator "\~<" "\~<="

let b:current_syntax = 'oct'
