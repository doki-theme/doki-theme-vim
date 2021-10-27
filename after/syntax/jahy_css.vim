if jahy#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        JahyKeyword
hi! link cssAttributeSelector JahyClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             JahyKeyword
hi! link cssProp              JahyKeyColor
hi! link cssPseudoClass       JahyKeyword
hi! link cssPseudoClassId     JahyClassNameItalic
hi! link cssUnitDecorators    JahyKeyword
hi! link cssVendor            JahyClassNameItalic
