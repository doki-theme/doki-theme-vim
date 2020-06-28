if megumin#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MeguminKeyword
hi! link cssAttributeSelector MeguminClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MeguminKeyword
hi! link cssProp              MeguminKeyColor
hi! link cssPseudoClass       MeguminKeyword
hi! link cssPseudoClassId     MeguminClassNameItalic
hi! link cssUnitDecorators    MeguminKeyword
hi! link cssVendor            MeguminClassNameItalic
