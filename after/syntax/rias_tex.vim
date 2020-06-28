if rias#should_abort('tex')
    finish
endif

hi! link texBeginEndName  RiasParameterItalic
hi! link texBoldItalStyle RiasParameterBoldItalic
hi! link texBoldStyle     RiasParameterBold
hi! link texInputFile     RiasParameterItalic
hi! link texItalStyle     RiasStringColorItalic
hi! link texLigature      RiasConstants
hi! link texMath          RiasConstants
hi! link texMathMatcher   RiasConstants
hi! link texMathSymbol    RiasConstants
hi! link texRefZone       RiasBgDarker
hi! link texSpecialChar   RiasConstants
hi! link texSubscripts    RiasConstants
hi! link texTitle         RiasFgBold
