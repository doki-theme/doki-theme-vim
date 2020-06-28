if emilia_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          EmiliaLightParameterItalic
hi! link rubyBlockParameter         EmiliaLightParameterItalic
hi! link rubyCurlyBlock             EmiliaLightKeyword
hi! link rubyGlobalVariable         EmiliaLightConstants
hi! link rubyInstanceVariable       EmiliaLightConstantsItalic
hi! link rubyInterpolationDelimiter EmiliaLightKeyword
hi! link rubyRegexpDelimiter        EmiliaLightRed
hi! link rubyStringDelimiter        EmiliaLightStringColor
