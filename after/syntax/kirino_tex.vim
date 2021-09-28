if kirino#should_abort('tex')
    finish
endif

hi! link texBeginEndName  KirinoParameterItalic
hi! link texBoldItalStyle KirinoParameterBoldItalic
hi! link texBoldStyle     KirinoParameterBold
hi! link texInputFile     KirinoParameterItalic
hi! link texItalStyle     KirinoStringColorItalic
hi! link texLigature      KirinoConstants
hi! link texMath          KirinoConstants
hi! link texMathMatcher   KirinoConstants
hi! link texMathSymbol    KirinoConstants
hi! link texRefZone       KirinoBgDarker
hi! link texSpecialChar   KirinoConstants
hi! link texSubscripts    KirinoConstants
hi! link texTitle         KirinoFgBold
