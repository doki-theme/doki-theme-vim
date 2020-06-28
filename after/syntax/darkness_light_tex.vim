if darkness_light#should_abort('tex')
    finish
endif

hi! link texBeginEndName  DarknessLightParameterItalic
hi! link texBoldItalStyle DarknessLightParameterBoldItalic
hi! link texBoldStyle     DarknessLightParameterBold
hi! link texInputFile     DarknessLightParameterItalic
hi! link texItalStyle     DarknessLightStringColorItalic
hi! link texLigature      DarknessLightConstants
hi! link texMath          DarknessLightConstants
hi! link texMathMatcher   DarknessLightConstants
hi! link texMathSymbol    DarknessLightConstants
hi! link texRefZone       DarknessLightBgDarker
hi! link texSpecialChar   DarknessLightConstants
hi! link texSubscripts    DarknessLightConstants
hi! link texTitle         DarknessLightFgBold
