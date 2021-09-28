if sagiri#should_abort('tex')
    finish
endif

hi! link texBeginEndName  SagiriParameterItalic
hi! link texBoldItalStyle SagiriParameterBoldItalic
hi! link texBoldStyle     SagiriParameterBold
hi! link texInputFile     SagiriParameterItalic
hi! link texItalStyle     SagiriStringColorItalic
hi! link texLigature      SagiriConstants
hi! link texMath          SagiriConstants
hi! link texMathMatcher   SagiriConstants
hi! link texMathSymbol    SagiriConstants
hi! link texRefZone       SagiriBgDarker
hi! link texSpecialChar   SagiriConstants
hi! link texSubscripts    SagiriConstants
hi! link texTitle         SagiriFgBold
