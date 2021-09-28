if satsuki_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          SatsukiLightParameterItalic
hi! link rubyBlockParameter         SatsukiLightParameterItalic
hi! link rubyCurlyBlock             SatsukiLightKeyword
hi! link rubyGlobalVariable         SatsukiLightConstants
hi! link rubyInstanceVariable       SatsukiLightConstantsItalic
hi! link rubyInterpolationDelimiter SatsukiLightKeyword
hi! link rubyRegexpDelimiter        SatsukiLightRed
hi! link rubyStringDelimiter        SatsukiLightStringColor
