if cinnamon#should_abort('tex')
    finish
endif

hi! link texBeginEndName  CinnamonParameterItalic
hi! link texBoldItalStyle CinnamonParameterBoldItalic
hi! link texBoldStyle     CinnamonParameterBold
hi! link texInputFile     CinnamonParameterItalic
hi! link texItalStyle     CinnamonStringColorItalic
hi! link texLigature      CinnamonConstants
hi! link texMath          CinnamonConstants
hi! link texMathMatcher   CinnamonConstants
hi! link texMathSymbol    CinnamonConstants
hi! link texRefZone       CinnamonBgDarker
hi! link texSpecialChar   CinnamonConstants
hi! link texSubscripts    CinnamonConstants
hi! link texTitle         CinnamonFgBold
