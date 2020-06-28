if natsuki_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        NatsukiLightKeyword
hi! link cssAttributeSelector NatsukiLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             NatsukiLightKeyword
hi! link cssProp              NatsukiLightKeyColor
hi! link cssPseudoClass       NatsukiLightKeyword
hi! link cssPseudoClassId     NatsukiLightClassNameItalic
hi! link cssUnitDecorators    NatsukiLightKeyword
hi! link cssVendor            NatsukiLightClassNameItalic
