if echidna#should_abort('tex')
    finish
endif

hi! link texBeginEndName  EchidnaParameterItalic
hi! link texBoldItalStyle EchidnaParameterBoldItalic
hi! link texBoldStyle     EchidnaParameterBold
hi! link texInputFile     EchidnaParameterItalic
hi! link texItalStyle     EchidnaStringColorItalic
hi! link texLigature      EchidnaConstants
hi! link texMath          EchidnaConstants
hi! link texMathMatcher   EchidnaConstants
hi! link texMathSymbol    EchidnaConstants
hi! link texRefZone       EchidnaBgDarker
hi! link texSpecialChar   EchidnaConstants
hi! link texSubscripts    EchidnaConstants
hi! link texTitle         EchidnaFgBold
