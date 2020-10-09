if ishtar_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        IshtarDarkKeyword
hi! link cssAttributeSelector IshtarDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             IshtarDarkKeyword
hi! link cssProp              IshtarDarkKeyColor
hi! link cssPseudoClass       IshtarDarkKeyword
hi! link cssPseudoClassId     IshtarDarkClassNameItalic
hi! link cssUnitDecorators    IshtarDarkKeyword
hi! link cssVendor            IshtarDarkClassNameItalic
