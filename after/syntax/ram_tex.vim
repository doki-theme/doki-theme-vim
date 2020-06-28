if ram#should_abort('tex')
    finish
endif

hi! link texBeginEndName  RamParameterItalic
hi! link texBoldItalStyle RamParameterBoldItalic
hi! link texBoldStyle     RamParameterBold
hi! link texInputFile     RamParameterItalic
hi! link texItalStyle     RamStringColorItalic
hi! link texLigature      RamConstants
hi! link texMath          RamConstants
hi! link texMathMatcher   RamConstants
hi! link texMathSymbol    RamConstants
hi! link texRefZone       RamBgDarker
hi! link texSpecialChar   RamConstants
hi! link texSubscripts    RamConstants
hi! link texTitle         RamFgBold
