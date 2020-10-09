if ishtar_light#should_abort('tex')
    finish
endif

hi! link texBeginEndName  IshtarLightParameterItalic
hi! link texBoldItalStyle IshtarLightParameterBoldItalic
hi! link texBoldStyle     IshtarLightParameterBold
hi! link texInputFile     IshtarLightParameterItalic
hi! link texItalStyle     IshtarLightStringColorItalic
hi! link texLigature      IshtarLightConstants
hi! link texMath          IshtarLightConstants
hi! link texMathMatcher   IshtarLightConstants
hi! link texMathSymbol    IshtarLightConstants
hi! link texRefZone       IshtarLightBgDarker
hi! link texSpecialChar   IshtarLightConstants
hi! link texSubscripts    IshtarLightConstants
hi! link texTitle         IshtarLightFgBold
