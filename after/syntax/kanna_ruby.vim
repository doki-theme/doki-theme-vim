if kanna#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          KannaParameterItalic
hi! link rubyBlockParameter         KannaParameterItalic
hi! link rubyCurlyBlock             KannaKeyword
hi! link rubyGlobalVariable         KannaConstants
hi! link rubyInstanceVariable       KannaConstantsItalic
hi! link rubyInterpolationDelimiter KannaKeyword
hi! link rubyRegexpDelimiter        KannaRed
hi! link rubyStringDelimiter        KannaStringColor
