if natsuki_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        NatsukiDarkKeyword
hi! link cssAttributeSelector NatsukiDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             NatsukiDarkKeyword
hi! link cssProp              NatsukiDarkKeyColor
hi! link cssPseudoClass       NatsukiDarkKeyword
hi! link cssPseudoClassId     NatsukiDarkClassNameItalic
hi! link cssUnitDecorators    NatsukiDarkKeyword
hi! link cssVendor            NatsukiDarkClassNameItalic
