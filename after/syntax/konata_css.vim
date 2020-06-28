if konata#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        KonataKeyword
hi! link cssAttributeSelector KonataClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             KonataKeyword
hi! link cssProp              KonataKeyColor
hi! link cssPseudoClass       KonataKeyword
hi! link cssPseudoClassId     KonataClassNameItalic
hi! link cssUnitDecorators    KonataKeyword
hi! link cssVendor            KonataClassNameItalic
