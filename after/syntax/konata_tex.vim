if konata#should_abort('tex')
    finish
endif

hi! link texBeginEndName  KonataParameterItalic
hi! link texBoldItalStyle KonataParameterBoldItalic
hi! link texBoldStyle     KonataParameterBold
hi! link texInputFile     KonataParameterItalic
hi! link texItalStyle     KonataStringColorItalic
hi! link texLigature      KonataConstants
hi! link texMath          KonataConstants
hi! link texMathMatcher   KonataConstants
hi! link texMathSymbol    KonataConstants
hi! link texRefZone       KonataBgDarker
hi! link texSpecialChar   KonataConstants
hi! link texSubscripts    KonataConstants
hi! link texTitle         KonataFgBold
