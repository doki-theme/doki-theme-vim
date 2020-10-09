if aqua#should_abort('tex')
    finish
endif

hi! link texBeginEndName  AquaParameterItalic
hi! link texBoldItalStyle AquaParameterBoldItalic
hi! link texBoldStyle     AquaParameterBold
hi! link texInputFile     AquaParameterItalic
hi! link texItalStyle     AquaStringColorItalic
hi! link texLigature      AquaConstants
hi! link texMath          AquaConstants
hi! link texMathMatcher   AquaConstants
hi! link texMathSymbol    AquaConstants
hi! link texRefZone       AquaBgDarker
hi! link texSpecialChar   AquaConstants
hi! link texSubscripts    AquaConstants
hi! link texTitle         AquaFgBold
