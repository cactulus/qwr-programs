if exists("b:current_syntax")
  finish
endif

syntax keyword qwrKeyword return extern builtin as if else while for new delete enum struct use typedef qwr include
syntax keyword qwrType void s8 s16 s32 s64 u8 u16 u32 u64 f16 f32 f64 int uint float bool char str ptr

syntax keyword qwrBool true false
syntax keyword qwrNil nil

syntax region qwrString start=/\v"/ skip=/\v\\./ end=/\v"/

syntax match qwrFunction "\v<\w*>(\s*::\s*)@="

syntax match qwrInt "\<\d\+\>" display
syntax match qwrFloat "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=" display
syntax match qwrHex "\<0x[0-9A-Fa-f]\+\>" display

syntax match qwrComment "//.*"
syntax region qwrBlockComment start=/\v\/\*/ end=/\v\*\// 

syntax match qwrPrec "#[a-zA-Z]+"

highlight def link qwrPrec Preproc
highlight def link qwrKeyword Keyword
highlight def link qwrString String
highlight def link qwrType Type
highlight def link qwrBool Boolean
highlight def link qwrNil Type
highlight def link qwrHex Number
highlight def link qwrFloat Float
highlight def link qwrInt Number
highlight def link qwrComment Comment
highlight def link qwrBlockComment Comment
highlight def link qwrFunction Function

let b:current_syntax = "qwr"
