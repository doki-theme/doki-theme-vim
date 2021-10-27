if jahy#should_abort('tex')
    finish
endif

hi! link texBeginEndName  JahyParameterItalic
hi! link texBoldItalStyle JahyParameterBoldItalic
hi! link texBoldStyle     JahyParameterBold
hi! link texInputFile     JahyParameterItalic
hi! link texItalStyle     JahyStringColorItalic
hi! link texLigature      JahyConstants
hi! link texMath          JahyConstants
hi! link texMathMatcher   JahyConstants
hi! link texMathSymbol    JahyConstants
hi! link texRefZone       JahyBgDarker
hi! link texSpecialChar   JahyConstants
hi! link texSubscripts    JahyConstants
hi! link texTitle         JahyFgBold
