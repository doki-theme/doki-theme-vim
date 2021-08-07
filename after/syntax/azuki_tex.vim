if azuki#should_abort('tex')
    finish
endif

hi! link texBeginEndName  AzukiParameterItalic
hi! link texBoldItalStyle AzukiParameterBoldItalic
hi! link texBoldStyle     AzukiParameterBold
hi! link texInputFile     AzukiParameterItalic
hi! link texItalStyle     AzukiStringColorItalic
hi! link texLigature      AzukiConstants
hi! link texMath          AzukiConstants
hi! link texMathMatcher   AzukiConstants
hi! link texMathSymbol    AzukiConstants
hi! link texRefZone       AzukiBgDarker
hi! link texSpecialChar   AzukiConstants
hi! link texSubscripts    AzukiConstants
hi! link texTitle         AzukiFgBold
