if asuna_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        AsunaLightKeyword
hi! link cssAttributeSelector AsunaLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             AsunaLightKeyword
hi! link cssProp              AsunaLightKeyColor
hi! link cssPseudoClass       AsunaLightKeyword
hi! link cssPseudoClassId     AsunaLightClassNameItalic
hi! link cssUnitDecorators    AsunaLightKeyword
hi! link cssVendor            AsunaLightClassNameItalic
