if rias#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          RiasParameterItalic
hi! link rubyBlockParameter         RiasParameterItalic
hi! link rubyCurlyBlock             RiasKeyword
hi! link rubyGlobalVariable         RiasConstants
hi! link rubyInstanceVariable       RiasConstantsItalic
hi! link rubyInterpolationDelimiter RiasKeyword
hi! link rubyRegexpDelimiter        RiasRed
hi! link rubyStringDelimiter        RiasStringColor
