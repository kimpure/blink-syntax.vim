if exists("b:current_syntax")
    finish
endif

syntax region blinkComment
    \ start=/--\[\(=\)*\[/
    \ end=/\]\(=\)*\]/
    \ keepend
syntax keyword blinkKeyword event option type function import export as scope
syntax match blinkScopeName "\<scope\s\+\zs[a-zA-Z_]*\>"
syntax match blinkParen /[(){}[\]<>]/
syntax keyword blinkTypeKeyword enum map struct set
syntax keyword blinkType 
    \ u8 
    \ u16 
	\ u32 
	\ i8 
	\ i16 
	\ i32 
	\ f16 
	\ f32 
	\ f64 
	\ boolean 
	\ string 
	\ buffer 
	\ unknown 
	\ Instance 
	\ Color3 
	\ vector 
	\ CFrame 
	\ BrickColor 
	\ DateTime 
	\ DateTimeMillis
syntax keyword blinkBoolean true false
syntax match blinkOperator /[=:]|\\.\\.+/
syntax match blinkOperatorOptional /?/
syntax match blinkSeparatorComma /,/
syntax match blinkNumber /\\d+?/
syntax match blinkString /\"\\w+\"/

highlight link blinkComment Comment
highlight link blinkKeyword Keyword
highlight link blinkScopeName Type
highlight link blinkParen Delimiter
highlight link blinkTypeKeyword Keyword
highlight link blinkType Type
highlight link blinkBoolean Operator
highlight link blinkOperator Operator
highlight link blinkOperatorOptional Operator
highlight link blinkSeparatorComma Operator
highlight link blinkNumber Number
highlight link blinkString String

let b:current_syntax = "blink"
