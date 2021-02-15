if mai_light#should_abort('tex')
    finish
endif

hi! link texBeginEndName  MaiLightParameterItalic
hi! link texBoldItalStyle MaiLightParameterBoldItalic
hi! link texBoldStyle     MaiLightParameterBold
hi! link texInputFile     MaiLightParameterItalic
hi! link texItalStyle     MaiLightStringColorItalic
hi! link texLigature      MaiLightConstants
hi! link texMath          MaiLightConstants
hi! link texMathMatcher   MaiLightConstants
hi! link texMathSymbol    MaiLightConstants
hi! link texRefZone       MaiLightBgDarker
hi! link texSpecialChar   MaiLightConstants
hi! link texSubscripts    MaiLightConstants
hi! link texTitle         MaiLightFgBold
