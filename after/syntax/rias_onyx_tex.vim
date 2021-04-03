if rias_onyx#should_abort('tex')
    finish
endif

hi! link texBeginEndName  RiasOnyxParameterItalic
hi! link texBoldItalStyle RiasOnyxParameterBoldItalic
hi! link texBoldStyle     RiasOnyxParameterBold
hi! link texInputFile     RiasOnyxParameterItalic
hi! link texItalStyle     RiasOnyxStringColorItalic
hi! link texLigature      RiasOnyxConstants
hi! link texMath          RiasOnyxConstants
hi! link texMathMatcher   RiasOnyxConstants
hi! link texMathSymbol    RiasOnyxConstants
hi! link texRefZone       RiasOnyxBgDarker
hi! link texSpecialChar   RiasOnyxConstants
hi! link texSubscripts    RiasOnyxConstants
hi! link texTitle         RiasOnyxFgBold
