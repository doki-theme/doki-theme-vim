if rem#should_abort('tex')
    finish
endif

hi! link texBeginEndName  RemParameterItalic
hi! link texBoldItalStyle RemParameterBoldItalic
hi! link texBoldStyle     RemParameterBold
hi! link texInputFile     RemParameterItalic
hi! link texItalStyle     RemStringColorItalic
hi! link texLigature      RemConstants
hi! link texMath          RemConstants
hi! link texMathMatcher   RemConstants
hi! link texMathSymbol    RemConstants
hi! link texRefZone       RemBgDarker
hi! link texSpecialChar   RemConstants
hi! link texSubscripts    RemConstants
hi! link texTitle         RemFgBold
