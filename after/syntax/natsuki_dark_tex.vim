if natsuki_dark#should_abort('tex')
    finish
endif

hi! link texBeginEndName  NatsukiDarkParameterItalic
hi! link texBoldItalStyle NatsukiDarkParameterBoldItalic
hi! link texBoldStyle     NatsukiDarkParameterBold
hi! link texInputFile     NatsukiDarkParameterItalic
hi! link texItalStyle     NatsukiDarkStringColorItalic
hi! link texLigature      NatsukiDarkConstants
hi! link texMath          NatsukiDarkConstants
hi! link texMathMatcher   NatsukiDarkConstants
hi! link texMathSymbol    NatsukiDarkConstants
hi! link texRefZone       NatsukiDarkBgDarker
hi! link texSpecialChar   NatsukiDarkConstants
hi! link texSubscripts    NatsukiDarkConstants
hi! link texTitle         NatsukiDarkFgBold
