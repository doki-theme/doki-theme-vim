if satsuki_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        SatsukiLightKeyword
hi! link cssAttributeSelector SatsukiLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             SatsukiLightKeyword
hi! link cssProp              SatsukiLightKeyColor
hi! link cssPseudoClass       SatsukiLightKeyword
hi! link cssPseudoClassId     SatsukiLightClassNameItalic
hi! link cssUnitDecorators    SatsukiLightKeyword
hi! link cssVendor            SatsukiLightClassNameItalic
