if mioda_ibuki_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MiodaIbukiLightKeyword
hi! link cssAttributeSelector MiodaIbukiLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MiodaIbukiLightKeyword
hi! link cssProp              MiodaIbukiLightKeyColor
hi! link cssPseudoClass       MiodaIbukiLightKeyword
hi! link cssPseudoClassId     MiodaIbukiLightClassNameItalic
hi! link cssUnitDecorators    MiodaIbukiLightKeyword
hi! link cssVendor            MiodaIbukiLightClassNameItalic
