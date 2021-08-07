if maple_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MapleLightKeyword
hi! link cssAttributeSelector MapleLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MapleLightKeyword
hi! link cssProp              MapleLightKeyColor
hi! link cssPseudoClass       MapleLightKeyword
hi! link cssPseudoClassId     MapleLightClassNameItalic
hi! link cssUnitDecorators    MapleLightKeyword
hi! link cssVendor            MapleLightClassNameItalic
