if sayori_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          SayoriLightParameterItalic
hi! link rubyBlockParameter         SayoriLightParameterItalic
hi! link rubyCurlyBlock             SayoriLightKeyword
hi! link rubyGlobalVariable         SayoriLightConstants
hi! link rubyInstanceVariable       SayoriLightConstantsItalic
hi! link rubyInterpolationDelimiter SayoriLightKeyword
hi! link rubyRegexpDelimiter        SayoriLightRed
hi! link rubyStringDelimiter        SayoriLightStringColor
