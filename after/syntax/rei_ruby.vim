if rei#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          ReiParameterItalic
hi! link rubyBlockParameter         ReiParameterItalic
hi! link rubyCurlyBlock             ReiKeyword
hi! link rubyGlobalVariable         ReiConstants
hi! link rubyInstanceVariable       ReiConstantsItalic
hi! link rubyInterpolationDelimiter ReiKeyword
hi! link rubyRegexpDelimiter        ReiRed
hi! link rubyStringDelimiter        ReiStringColor
