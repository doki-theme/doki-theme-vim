if sonoda_umi#should_abort('tex')
    finish
endif

hi! link texBeginEndName  SonodaUmiParameterItalic
hi! link texBoldItalStyle SonodaUmiParameterBoldItalic
hi! link texBoldStyle     SonodaUmiParameterBold
hi! link texInputFile     SonodaUmiParameterItalic
hi! link texItalStyle     SonodaUmiStringColorItalic
hi! link texLigature      SonodaUmiConstants
hi! link texMath          SonodaUmiConstants
hi! link texMathMatcher   SonodaUmiConstants
hi! link texMathSymbol    SonodaUmiConstants
hi! link texRefZone       SonodaUmiBgDarker
hi! link texSpecialChar   SonodaUmiConstants
hi! link texSubscripts    SonodaUmiConstants
hi! link texTitle         SonodaUmiFgBold
