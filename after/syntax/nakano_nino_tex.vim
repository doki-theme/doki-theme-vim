if nakano_nino#should_abort('tex')
    finish
endif

hi! link texBeginEndName  NakanoNinoParameterItalic
hi! link texBoldItalStyle NakanoNinoParameterBoldItalic
hi! link texBoldStyle     NakanoNinoParameterBold
hi! link texInputFile     NakanoNinoParameterItalic
hi! link texItalStyle     NakanoNinoStringColorItalic
hi! link texLigature      NakanoNinoConstants
hi! link texMath          NakanoNinoConstants
hi! link texMathMatcher   NakanoNinoConstants
hi! link texMathSymbol    NakanoNinoConstants
hi! link texRefZone       NakanoNinoBgDarker
hi! link texSpecialChar   NakanoNinoConstants
hi! link texSubscripts    NakanoNinoConstants
hi! link texTitle         NakanoNinoFgBold
