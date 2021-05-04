if tohru#should_abort('tex')
    finish
endif

hi! link texBeginEndName  TohruParameterItalic
hi! link texBoldItalStyle TohruParameterBoldItalic
hi! link texBoldStyle     TohruParameterBold
hi! link texInputFile     TohruParameterItalic
hi! link texItalStyle     TohruStringColorItalic
hi! link texLigature      TohruConstants
hi! link texMath          TohruConstants
hi! link texMathMatcher   TohruConstants
hi! link texMathSymbol    TohruConstants
hi! link texRefZone       TohruBgDarker
hi! link texSpecialChar   TohruConstants
hi! link texSubscripts    TohruConstants
hi! link texTitle         TohruFgBold
