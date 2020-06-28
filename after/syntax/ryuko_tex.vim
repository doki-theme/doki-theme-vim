if ryuko#should_abort('tex')
    finish
endif

hi! link texBeginEndName  RyukoParameterItalic
hi! link texBoldItalStyle RyukoParameterBoldItalic
hi! link texBoldStyle     RyukoParameterBold
hi! link texInputFile     RyukoParameterItalic
hi! link texItalStyle     RyukoStringColorItalic
hi! link texLigature      RyukoConstants
hi! link texMath          RyukoConstants
hi! link texMathMatcher   RyukoConstants
hi! link texMathSymbol    RyukoConstants
hi! link texRefZone       RyukoBgDarker
hi! link texSpecialChar   RyukoConstants
hi! link texSubscripts    RyukoConstants
hi! link texTitle         RyukoFgBold
