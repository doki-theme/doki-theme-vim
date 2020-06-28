if megumin#should_abort('tex')
    finish
endif

hi! link texBeginEndName  MeguminParameterItalic
hi! link texBoldItalStyle MeguminParameterBoldItalic
hi! link texBoldStyle     MeguminParameterBold
hi! link texInputFile     MeguminParameterItalic
hi! link texItalStyle     MeguminStringColorItalic
hi! link texLigature      MeguminConstants
hi! link texMath          MeguminConstants
hi! link texMathMatcher   MeguminConstants
hi! link texMathSymbol    MeguminConstants
hi! link texRefZone       MeguminBgDarker
hi! link texSpecialChar   MeguminConstants
hi! link texSubscripts    MeguminConstants
hi! link texTitle         MeguminFgBold
