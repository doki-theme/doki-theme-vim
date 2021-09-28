if ryuko_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          RyukoLightParameterItalic
hi! link rubyBlockParameter         RyukoLightParameterItalic
hi! link rubyCurlyBlock             RyukoLightKeyword
hi! link rubyGlobalVariable         RyukoLightConstants
hi! link rubyInstanceVariable       RyukoLightConstantsItalic
hi! link rubyInterpolationDelimiter RyukoLightKeyword
hi! link rubyRegexpDelimiter        RyukoLightRed
hi! link rubyStringDelimiter        RyukoLightStringColor
