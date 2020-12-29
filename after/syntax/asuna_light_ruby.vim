if asuna_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          AsunaLightParameterItalic
hi! link rubyBlockParameter         AsunaLightParameterItalic
hi! link rubyCurlyBlock             AsunaLightKeyword
hi! link rubyGlobalVariable         AsunaLightConstants
hi! link rubyInstanceVariable       AsunaLightConstantsItalic
hi! link rubyInterpolationDelimiter AsunaLightKeyword
hi! link rubyRegexpDelimiter        AsunaLightRed
hi! link rubyStringDelimiter        AsunaLightStringColor
