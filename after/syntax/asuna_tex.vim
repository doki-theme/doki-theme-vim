if asuna#should_abort('tex')
    finish
endif

hi! link texBeginEndName  AsunaParameterItalic
hi! link texBoldItalStyle AsunaParameterBoldItalic
hi! link texBoldStyle     AsunaParameterBold
hi! link texInputFile     AsunaParameterItalic
hi! link texItalStyle     AsunaStringColorItalic
hi! link texLigature      AsunaConstants
hi! link texMath          AsunaConstants
hi! link texMathMatcher   AsunaConstants
hi! link texMathSymbol    AsunaConstants
hi! link texRefZone       AsunaBgDarker
hi! link texSpecialChar   AsunaConstants
hi! link texSubscripts    AsunaConstants
hi! link texTitle         AsunaFgBold
