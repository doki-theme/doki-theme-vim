if maika#should_abort('tex')
    finish
endif

hi! link texBeginEndName  MaikaParameterItalic
hi! link texBoldItalStyle MaikaParameterBoldItalic
hi! link texBoldStyle     MaikaParameterBold
hi! link texInputFile     MaikaParameterItalic
hi! link texItalStyle     MaikaStringColorItalic
hi! link texLigature      MaikaConstants
hi! link texMath          MaikaConstants
hi! link texMathMatcher   MaikaConstants
hi! link texMathSymbol    MaikaConstants
hi! link texRefZone       MaikaBgDarker
hi! link texSpecialChar   MaikaConstants
hi! link texSubscripts    MaikaConstants
hi! link texTitle         MaikaFgBold
