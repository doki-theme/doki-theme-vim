if mai_dark#should_abort('tex')
    finish
endif

hi! link texBeginEndName  MaiDarkParameterItalic
hi! link texBoldItalStyle MaiDarkParameterBoldItalic
hi! link texBoldStyle     MaiDarkParameterBold
hi! link texInputFile     MaiDarkParameterItalic
hi! link texItalStyle     MaiDarkStringColorItalic
hi! link texLigature      MaiDarkConstants
hi! link texMath          MaiDarkConstants
hi! link texMathMatcher   MaiDarkConstants
hi! link texMathSymbol    MaiDarkConstants
hi! link texRefZone       MaiDarkBgDarker
hi! link texSpecialChar   MaiDarkConstants
hi! link texSubscripts    MaiDarkConstants
hi! link texTitle         MaiDarkFgBold
