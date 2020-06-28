if sayori_light#should_abort('tex')
    finish
endif

hi! link texBeginEndName  SayoriLightParameterItalic
hi! link texBoldItalStyle SayoriLightParameterBoldItalic
hi! link texBoldStyle     SayoriLightParameterBold
hi! link texInputFile     SayoriLightParameterItalic
hi! link texItalStyle     SayoriLightStringColorItalic
hi! link texLigature      SayoriLightConstants
hi! link texMath          SayoriLightConstants
hi! link texMathMatcher   SayoriLightConstants
hi! link texMathSymbol    SayoriLightConstants
hi! link texRefZone       SayoriLightBgDarker
hi! link texSpecialChar   SayoriLightConstants
hi! link texSubscripts    SayoriLightConstants
hi! link texTitle         SayoriLightFgBold
