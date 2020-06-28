if monika_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MonikaDarkKeyword
hi! link cssAttributeSelector MonikaDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MonikaDarkKeyword
hi! link cssProp              MonikaDarkKeyColor
hi! link cssPseudoClass       MonikaDarkKeyword
hi! link cssPseudoClassId     MonikaDarkClassNameItalic
hi! link cssUnitDecorators    MonikaDarkKeyword
hi! link cssVendor            MonikaDarkClassNameItalic
