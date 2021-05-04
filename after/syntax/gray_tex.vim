if gray#should_abort('tex')
    finish
endif

hi! link texBeginEndName  GrayParameterItalic
hi! link texBoldItalStyle GrayParameterBoldItalic
hi! link texBoldStyle     GrayParameterBold
hi! link texInputFile     GrayParameterItalic
hi! link texItalStyle     GrayStringColorItalic
hi! link texLigature      GrayConstants
hi! link texMath          GrayConstants
hi! link texMathMatcher   GrayConstants
hi! link texMathSymbol    GrayConstants
hi! link texRefZone       GrayBgDarker
hi! link texSpecialChar   GrayConstants
hi! link texSubscripts    GrayConstants
hi! link texTitle         GrayFgBold
