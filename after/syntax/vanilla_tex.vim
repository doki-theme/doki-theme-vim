if vanilla#should_abort('tex')
    finish
endif

hi! link texBeginEndName  VanillaParameterItalic
hi! link texBoldItalStyle VanillaParameterBoldItalic
hi! link texBoldStyle     VanillaParameterBold
hi! link texInputFile     VanillaParameterItalic
hi! link texItalStyle     VanillaStringColorItalic
hi! link texLigature      VanillaConstants
hi! link texMath          VanillaConstants
hi! link texMathMatcher   VanillaConstants
hi! link texMathSymbol    VanillaConstants
hi! link texRefZone       VanillaBgDarker
hi! link texSpecialChar   VanillaConstants
hi! link texSubscripts    VanillaConstants
hi! link texTitle         VanillaFgBold
