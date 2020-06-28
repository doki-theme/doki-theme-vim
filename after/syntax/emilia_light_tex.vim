if emilia_light#should_abort('tex')
    finish
endif

hi! link texBeginEndName  EmiliaLightParameterItalic
hi! link texBoldItalStyle EmiliaLightParameterBoldItalic
hi! link texBoldStyle     EmiliaLightParameterBold
hi! link texInputFile     EmiliaLightParameterItalic
hi! link texItalStyle     EmiliaLightStringColorItalic
hi! link texLigature      EmiliaLightConstants
hi! link texMath          EmiliaLightConstants
hi! link texMathMatcher   EmiliaLightConstants
hi! link texMathSymbol    EmiliaLightConstants
hi! link texRefZone       EmiliaLightBgDarker
hi! link texSpecialChar   EmiliaLightConstants
hi! link texSubscripts    EmiliaLightConstants
hi! link texTitle         EmiliaLightFgBold
