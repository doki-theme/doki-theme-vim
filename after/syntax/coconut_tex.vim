if coconut#should_abort('tex')
    finish
endif

hi! link texBeginEndName  CoconutParameterItalic
hi! link texBoldItalStyle CoconutParameterBoldItalic
hi! link texBoldStyle     CoconutParameterBold
hi! link texInputFile     CoconutParameterItalic
hi! link texItalStyle     CoconutStringColorItalic
hi! link texLigature      CoconutConstants
hi! link texMath          CoconutConstants
hi! link texMathMatcher   CoconutConstants
hi! link texMathSymbol    CoconutConstants
hi! link texRefZone       CoconutBgDarker
hi! link texSpecialChar   CoconutConstants
hi! link texSubscripts    CoconutConstants
hi! link texTitle         CoconutFgBold
