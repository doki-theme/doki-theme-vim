if echidna#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          EchidnaParameterItalic
hi! link rubyBlockParameter         EchidnaParameterItalic
hi! link rubyCurlyBlock             EchidnaKeyword
hi! link rubyGlobalVariable         EchidnaConstants
hi! link rubyInstanceVariable       EchidnaConstantsItalic
hi! link rubyInterpolationDelimiter EchidnaKeyword
hi! link rubyRegexpDelimiter        EchidnaRed
hi! link rubyStringDelimiter        EchidnaStringColor
