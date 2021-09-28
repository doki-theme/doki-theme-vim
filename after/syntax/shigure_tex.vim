if shigure#should_abort('tex')
    finish
endif

hi! link texBeginEndName  ShigureParameterItalic
hi! link texBoldItalStyle ShigureParameterBoldItalic
hi! link texBoldStyle     ShigureParameterBold
hi! link texInputFile     ShigureParameterItalic
hi! link texItalStyle     ShigureStringColorItalic
hi! link texLigature      ShigureConstants
hi! link texMath          ShigureConstants
hi! link texMathMatcher   ShigureConstants
hi! link texMathSymbol    ShigureConstants
hi! link texRefZone       ShigureBgDarker
hi! link texSpecialChar   ShigureConstants
hi! link texSubscripts    ShigureConstants
hi! link texTitle         ShigureFgBold
