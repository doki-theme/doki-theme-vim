if mai_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MaiLightParameterItalic
hi! link rubyBlockParameter         MaiLightParameterItalic
hi! link rubyCurlyBlock             MaiLightKeyword
hi! link rubyGlobalVariable         MaiLightConstants
hi! link rubyInstanceVariable       MaiLightConstantsItalic
hi! link rubyInterpolationDelimiter MaiLightKeyword
hi! link rubyRegexpDelimiter        MaiLightRed
hi! link rubyStringDelimiter        MaiLightStringColor
