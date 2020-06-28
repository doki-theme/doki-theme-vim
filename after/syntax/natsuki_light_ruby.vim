if natsuki_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          NatsukiLightParameterItalic
hi! link rubyBlockParameter         NatsukiLightParameterItalic
hi! link rubyCurlyBlock             NatsukiLightKeyword
hi! link rubyGlobalVariable         NatsukiLightConstants
hi! link rubyInstanceVariable       NatsukiLightConstantsItalic
hi! link rubyInterpolationDelimiter NatsukiLightKeyword
hi! link rubyRegexpDelimiter        NatsukiLightRed
hi! link rubyStringDelimiter        NatsukiLightStringColor
