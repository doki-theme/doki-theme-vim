if maple_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MapleDarkKeyword
hi! link cssAttributeSelector MapleDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MapleDarkKeyword
hi! link cssProp              MapleDarkKeyColor
hi! link cssPseudoClass       MapleDarkKeyword
hi! link cssPseudoClassId     MapleDarkClassNameItalic
hi! link cssUnitDecorators    MapleDarkKeyword
hi! link cssVendor            MapleDarkClassNameItalic
