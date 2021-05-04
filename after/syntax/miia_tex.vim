if miia#should_abort('tex')
    finish
endif

hi! link texBeginEndName  MiiaParameterItalic
hi! link texBoldItalStyle MiiaParameterBoldItalic
hi! link texBoldStyle     MiiaParameterBold
hi! link texInputFile     MiiaParameterItalic
hi! link texItalStyle     MiiaStringColorItalic
hi! link texLigature      MiiaConstants
hi! link texMath          MiiaConstants
hi! link texMathMatcher   MiiaConstants
hi! link texMathSymbol    MiiaConstants
hi! link texRefZone       MiiaBgDarker
hi! link texSpecialChar   MiiaConstants
hi! link texSubscripts    MiiaConstants
hi! link texTitle         MiiaFgBold
