if essex#should_abort('tex')
    finish
endif

hi! link texBeginEndName  EssexParameterItalic
hi! link texBoldItalStyle EssexParameterBoldItalic
hi! link texBoldStyle     EssexParameterBold
hi! link texInputFile     EssexParameterItalic
hi! link texItalStyle     EssexStringColorItalic
hi! link texLigature      EssexConstants
hi! link texMath          EssexConstants
hi! link texMathMatcher   EssexConstants
hi! link texMathSymbol    EssexConstants
hi! link texRefZone       EssexBgDarker
hi! link texSpecialChar   EssexConstants
hi! link texSubscripts    EssexConstants
hi! link texTitle         EssexFgBold
