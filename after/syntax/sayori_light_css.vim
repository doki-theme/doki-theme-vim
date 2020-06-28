if sayori_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        SayoriLightKeyword
hi! link cssAttributeSelector SayoriLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             SayoriLightKeyword
hi! link cssProp              SayoriLightKeyColor
hi! link cssPseudoClass       SayoriLightKeyword
hi! link cssPseudoClassId     SayoriLightClassNameItalic
hi! link cssUnitDecorators    SayoriLightKeyword
hi! link cssVendor            SayoriLightClassNameItalic
