if satsuki_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        SatsukiDarkKeyword
hi! link cssAttributeSelector SatsukiDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             SatsukiDarkKeyword
hi! link cssProp              SatsukiDarkKeyColor
hi! link cssPseudoClass       SatsukiDarkKeyword
hi! link cssPseudoClassId     SatsukiDarkClassNameItalic
hi! link cssUnitDecorators    SatsukiDarkKeyword
hi! link cssVendor            SatsukiDarkClassNameItalic
