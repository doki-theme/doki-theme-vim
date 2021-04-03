if rei#should_abort('tex')
    finish
endif

hi! link texBeginEndName  ReiParameterItalic
hi! link texBoldItalStyle ReiParameterBoldItalic
hi! link texBoldStyle     ReiParameterBold
hi! link texInputFile     ReiParameterItalic
hi! link texItalStyle     ReiStringColorItalic
hi! link texLigature      ReiConstants
hi! link texMath          ReiConstants
hi! link texMathMatcher   ReiConstants
hi! link texMathSymbol    ReiConstants
hi! link texRefZone       ReiBgDarker
hi! link texSpecialChar   ReiConstants
hi! link texSubscripts    ReiConstants
hi! link texTitle         ReiFgBold
