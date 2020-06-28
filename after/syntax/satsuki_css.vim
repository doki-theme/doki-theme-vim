if satsuki#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        SatsukiKeyword
hi! link cssAttributeSelector SatsukiClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             SatsukiKeyword
hi! link cssProp              SatsukiKeyColor
hi! link cssPseudoClass       SatsukiKeyword
hi! link cssPseudoClassId     SatsukiClassNameItalic
hi! link cssUnitDecorators    SatsukiKeyword
hi! link cssVendor            SatsukiClassNameItalic
