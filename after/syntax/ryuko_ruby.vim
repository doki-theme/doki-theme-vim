if ryuko#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          RyukoParameterItalic
hi! link rubyBlockParameter         RyukoParameterItalic
hi! link rubyCurlyBlock             RyukoKeyword
hi! link rubyGlobalVariable         RyukoConstants
hi! link rubyInstanceVariable       RyukoConstantsItalic
hi! link rubyInterpolationDelimiter RyukoKeyword
hi! link rubyRegexpDelimiter        RyukoRed
hi! link rubyStringDelimiter        RyukoStringColor
