if tohru#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          TohruParameterItalic
hi! link rubyBlockParameter         TohruParameterItalic
hi! link rubyCurlyBlock             TohruKeyword
hi! link rubyGlobalVariable         TohruConstants
hi! link rubyInstanceVariable       TohruConstantsItalic
hi! link rubyInterpolationDelimiter TohruKeyword
hi! link rubyRegexpDelimiter        TohruRed
hi! link rubyStringDelimiter        TohruStringColor
