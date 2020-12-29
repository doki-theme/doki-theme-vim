if makise_kurisu#should_abort('tex')
    finish
endif

hi! link texBeginEndName  MakiseKurisuParameterItalic
hi! link texBoldItalStyle MakiseKurisuParameterBoldItalic
hi! link texBoldStyle     MakiseKurisuParameterBold
hi! link texInputFile     MakiseKurisuParameterItalic
hi! link texItalStyle     MakiseKurisuStringColorItalic
hi! link texLigature      MakiseKurisuConstants
hi! link texMath          MakiseKurisuConstants
hi! link texMathMatcher   MakiseKurisuConstants
hi! link texMathSymbol    MakiseKurisuConstants
hi! link texRefZone       MakiseKurisuBgDarker
hi! link texSpecialChar   MakiseKurisuConstants
hi! link texSubscripts    MakiseKurisuConstants
hi! link texTitle         MakiseKurisuFgBold
