if maple_dark#should_abort('tex')
    finish
endif

hi! link texBeginEndName  MapleDarkParameterItalic
hi! link texBoldItalStyle MapleDarkParameterBoldItalic
hi! link texBoldStyle     MapleDarkParameterBold
hi! link texInputFile     MapleDarkParameterItalic
hi! link texItalStyle     MapleDarkStringColorItalic
hi! link texLigature      MapleDarkConstants
hi! link texMath          MapleDarkConstants
hi! link texMathMatcher   MapleDarkConstants
hi! link texMathSymbol    MapleDarkConstants
hi! link texRefZone       MapleDarkBgDarker
hi! link texSpecialChar   MapleDarkConstants
hi! link texSubscripts    MapleDarkConstants
hi! link texTitle         MapleDarkFgBold
