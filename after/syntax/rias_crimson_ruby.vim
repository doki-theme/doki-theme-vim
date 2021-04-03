if rias_crimson#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          RiasCrimsonParameterItalic
hi! link rubyBlockParameter         RiasCrimsonParameterItalic
hi! link rubyCurlyBlock             RiasCrimsonKeyword
hi! link rubyGlobalVariable         RiasCrimsonConstants
hi! link rubyInstanceVariable       RiasCrimsonConstantsItalic
hi! link rubyInterpolationDelimiter RiasCrimsonKeyword
hi! link rubyRegexpDelimiter        RiasCrimsonRed
hi! link rubyStringDelimiter        RiasCrimsonStringColor
