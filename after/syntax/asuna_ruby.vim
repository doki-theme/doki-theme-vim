if asuna#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          AsunaParameterItalic
hi! link rubyBlockParameter         AsunaParameterItalic
hi! link rubyCurlyBlock             AsunaKeyword
hi! link rubyGlobalVariable         AsunaConstants
hi! link rubyInstanceVariable       AsunaConstantsItalic
hi! link rubyInterpolationDelimiter AsunaKeyword
hi! link rubyRegexpDelimiter        AsunaRed
hi! link rubyStringDelimiter        AsunaStringColor
