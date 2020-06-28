if yuri_light#should_abort('tex')
    finish
endif

hi! link texBeginEndName  YuriLightParameterItalic
hi! link texBoldItalStyle YuriLightParameterBoldItalic
hi! link texBoldStyle     YuriLightParameterBold
hi! link texInputFile     YuriLightParameterItalic
hi! link texItalStyle     YuriLightStringColorItalic
hi! link texLigature      YuriLightConstants
hi! link texMath          YuriLightConstants
hi! link texMathMatcher   YuriLightConstants
hi! link texMathSymbol    YuriLightConstants
hi! link texRefZone       YuriLightBgDarker
hi! link texSpecialChar   YuriLightConstants
hi! link texSubscripts    YuriLightConstants
hi! link texTitle         YuriLightFgBold
