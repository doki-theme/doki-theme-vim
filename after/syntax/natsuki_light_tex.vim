if natsuki_light#should_abort('tex')
    finish
endif

hi! link texBeginEndName  NatsukiLightParameterItalic
hi! link texBoldItalStyle NatsukiLightParameterBoldItalic
hi! link texBoldStyle     NatsukiLightParameterBold
hi! link texInputFile     NatsukiLightParameterItalic
hi! link texItalStyle     NatsukiLightStringColorItalic
hi! link texLigature      NatsukiLightConstants
hi! link texMath          NatsukiLightConstants
hi! link texMathMatcher   NatsukiLightConstants
hi! link texMathSymbol    NatsukiLightConstants
hi! link texRefZone       NatsukiLightBgDarker
hi! link texSpecialChar   NatsukiLightConstants
hi! link texSubscripts    NatsukiLightConstants
hi! link texTitle         NatsukiLightFgBold
