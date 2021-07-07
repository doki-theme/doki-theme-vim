if chocola#should_abort('tex')
    finish
endif

hi! link texBeginEndName  ChocolaParameterItalic
hi! link texBoldItalStyle ChocolaParameterBoldItalic
hi! link texBoldStyle     ChocolaParameterBold
hi! link texInputFile     ChocolaParameterItalic
hi! link texItalStyle     ChocolaStringColorItalic
hi! link texLigature      ChocolaConstants
hi! link texMath          ChocolaConstants
hi! link texMathMatcher   ChocolaConstants
hi! link texMathSymbol    ChocolaConstants
hi! link texRefZone       ChocolaBgDarker
hi! link texSpecialChar   ChocolaConstants
hi! link texSubscripts    ChocolaConstants
hi! link texTitle         ChocolaFgBold
