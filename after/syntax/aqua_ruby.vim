if aqua#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          AquaParameterItalic
hi! link rubyBlockParameter         AquaParameterItalic
hi! link rubyCurlyBlock             AquaKeyword
hi! link rubyGlobalVariable         AquaConstants
hi! link rubyInstanceVariable       AquaConstantsItalic
hi! link rubyInterpolationDelimiter AquaKeyword
hi! link rubyRegexpDelimiter        AquaRed
hi! link rubyStringDelimiter        AquaStringColor
