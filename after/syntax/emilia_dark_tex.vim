if emilia_dark#should_abort('tex')
    finish
endif

hi! link texBeginEndName  EmiliaDarkParameterItalic
hi! link texBoldItalStyle EmiliaDarkParameterBoldItalic
hi! link texBoldStyle     EmiliaDarkParameterBold
hi! link texInputFile     EmiliaDarkParameterItalic
hi! link texItalStyle     EmiliaDarkStringColorItalic
hi! link texLigature      EmiliaDarkConstants
hi! link texMath          EmiliaDarkConstants
hi! link texMathMatcher   EmiliaDarkConstants
hi! link texMathSymbol    EmiliaDarkConstants
hi! link texRefZone       EmiliaDarkBgDarker
hi! link texSpecialChar   EmiliaDarkConstants
hi! link texSubscripts    EmiliaDarkConstants
hi! link texTitle         EmiliaDarkFgBold
