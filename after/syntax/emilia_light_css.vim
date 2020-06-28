if emilia_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        EmiliaLightKeyword
hi! link cssAttributeSelector EmiliaLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             EmiliaLightKeyword
hi! link cssProp              EmiliaLightKeyColor
hi! link cssPseudoClass       EmiliaLightKeyword
hi! link cssPseudoClassId     EmiliaLightClassNameItalic
hi! link cssUnitDecorators    EmiliaLightKeyword
hi! link cssVendor            EmiliaLightClassNameItalic
