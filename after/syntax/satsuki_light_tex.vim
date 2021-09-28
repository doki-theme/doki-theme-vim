if satsuki_light#should_abort('tex')
    finish
endif

hi! link texBeginEndName  SatsukiLightParameterItalic
hi! link texBoldItalStyle SatsukiLightParameterBoldItalic
hi! link texBoldStyle     SatsukiLightParameterBold
hi! link texInputFile     SatsukiLightParameterItalic
hi! link texItalStyle     SatsukiLightStringColorItalic
hi! link texLigature      SatsukiLightConstants
hi! link texMath          SatsukiLightConstants
hi! link texMathMatcher   SatsukiLightConstants
hi! link texMathSymbol    SatsukiLightConstants
hi! link texRefZone       SatsukiLightBgDarker
hi! link texSpecialChar   SatsukiLightConstants
hi! link texSubscripts    SatsukiLightConstants
hi! link texTitle         SatsukiLightFgBold
