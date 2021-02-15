if mai_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MaiLightKeyword
hi! link cssAttributeSelector MaiLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MaiLightKeyword
hi! link cssProp              MaiLightKeyColor
hi! link cssPseudoClass       MaiLightKeyword
hi! link cssPseudoClassId     MaiLightClassNameItalic
hi! link cssUnitDecorators    MaiLightKeyword
hi! link cssVendor            MaiLightClassNameItalic
