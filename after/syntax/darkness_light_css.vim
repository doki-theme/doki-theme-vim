if darkness_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        DarknessLightKeyword
hi! link cssAttributeSelector DarknessLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             DarknessLightKeyword
hi! link cssProp              DarknessLightKeyColor
hi! link cssPseudoClass       DarknessLightKeyword
hi! link cssPseudoClassId     DarknessLightClassNameItalic
hi! link cssUnitDecorators    DarknessLightKeyword
hi! link cssVendor            DarknessLightClassNameItalic
