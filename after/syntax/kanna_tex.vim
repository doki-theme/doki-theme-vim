if kanna#should_abort('tex')
    finish
endif

hi! link texBeginEndName  KannaParameterItalic
hi! link texBoldItalStyle KannaParameterBoldItalic
hi! link texBoldStyle     KannaParameterBold
hi! link texInputFile     KannaParameterItalic
hi! link texItalStyle     KannaStringColorItalic
hi! link texLigature      KannaConstants
hi! link texMath          KannaConstants
hi! link texMathMatcher   KannaConstants
hi! link texMathSymbol    KannaConstants
hi! link texRefZone       KannaBgDarker
hi! link texSpecialChar   KannaConstants
hi! link texSubscripts    KannaConstants
hi! link texTitle         KannaFgBold
