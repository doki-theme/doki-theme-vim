if maple_light#should_abort('tex')
    finish
endif

hi! link texBeginEndName  MapleLightParameterItalic
hi! link texBoldItalStyle MapleLightParameterBoldItalic
hi! link texBoldStyle     MapleLightParameterBold
hi! link texInputFile     MapleLightParameterItalic
hi! link texItalStyle     MapleLightStringColorItalic
hi! link texLigature      MapleLightConstants
hi! link texMath          MapleLightConstants
hi! link texMathMatcher   MapleLightConstants
hi! link texMathSymbol    MapleLightConstants
hi! link texRefZone       MapleLightBgDarker
hi! link texSpecialChar   MapleLightConstants
hi! link texSubscripts    MapleLightConstants
hi! link texTitle         MapleLightFgBold
