if ishtar_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        IshtarLightKeyword
hi! link cssAttributeSelector IshtarLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             IshtarLightKeyword
hi! link cssProp              IshtarLightKeyColor
hi! link cssPseudoClass       IshtarLightKeyword
hi! link cssPseudoClassId     IshtarLightClassNameItalic
hi! link cssUnitDecorators    IshtarLightKeyword
hi! link cssVendor            IshtarLightClassNameItalic
