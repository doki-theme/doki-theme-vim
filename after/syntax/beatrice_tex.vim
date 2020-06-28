if beatrice#should_abort('tex')
    finish
endif

hi! link texBeginEndName  BeatriceParameterItalic
hi! link texBoldItalStyle BeatriceParameterBoldItalic
hi! link texBoldStyle     BeatriceParameterBold
hi! link texInputFile     BeatriceParameterItalic
hi! link texItalStyle     BeatriceStringColorItalic
hi! link texLigature      BeatriceConstants
hi! link texMath          BeatriceConstants
hi! link texMathMatcher   BeatriceConstants
hi! link texMathSymbol    BeatriceConstants
hi! link texRefZone       BeatriceBgDarker
hi! link texSpecialChar   BeatriceConstants
hi! link texSubscripts    BeatriceConstants
hi! link texTitle         BeatriceFgBold
