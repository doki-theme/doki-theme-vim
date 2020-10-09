if rory_mercury#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          RoryMercuryParameterItalic
hi! link rubyBlockParameter         RoryMercuryParameterItalic
hi! link rubyCurlyBlock             RoryMercuryKeyword
hi! link rubyGlobalVariable         RoryMercuryConstants
hi! link rubyInstanceVariable       RoryMercuryConstantsItalic
hi! link rubyInterpolationDelimiter RoryMercuryKeyword
hi! link rubyRegexpDelimiter        RoryMercuryRed
hi! link rubyStringDelimiter        RoryMercuryStringColor
