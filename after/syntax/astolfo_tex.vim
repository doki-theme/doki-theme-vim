if astolfo#should_abort('tex')
    finish
endif

hi! link texBeginEndName  AstolfoParameterItalic
hi! link texBoldItalStyle AstolfoParameterBoldItalic
hi! link texBoldStyle     AstolfoParameterBold
hi! link texInputFile     AstolfoParameterItalic
hi! link texItalStyle     AstolfoStringColorItalic
hi! link texLigature      AstolfoConstants
hi! link texMath          AstolfoConstants
hi! link texMathMatcher   AstolfoConstants
hi! link texMathSymbol    AstolfoConstants
hi! link texRefZone       AstolfoBgDarker
hi! link texSpecialChar   AstolfoConstants
hi! link texSubscripts    AstolfoConstants
hi! link texTitle         AstolfoFgBold
