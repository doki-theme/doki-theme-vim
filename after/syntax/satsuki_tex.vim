if satsuki#should_abort('tex')
    finish
endif

hi! link texBeginEndName  SatsukiParameterItalic
hi! link texBoldItalStyle SatsukiParameterBoldItalic
hi! link texBoldStyle     SatsukiParameterBold
hi! link texInputFile     SatsukiParameterItalic
hi! link texItalStyle     SatsukiStringColorItalic
hi! link texLigature      SatsukiConstants
hi! link texMath          SatsukiConstants
hi! link texMathMatcher   SatsukiConstants
hi! link texMathSymbol    SatsukiConstants
hi! link texRefZone       SatsukiBgDarker
hi! link texSpecialChar   SatsukiConstants
hi! link texSubscripts    SatsukiConstants
hi! link texTitle         SatsukiFgBold
