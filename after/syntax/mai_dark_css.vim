if mai_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MaiDarkKeyword
hi! link cssAttributeSelector MaiDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MaiDarkKeyword
hi! link cssProp              MaiDarkKeyColor
hi! link cssPseudoClass       MaiDarkKeyword
hi! link cssPseudoClassId     MaiDarkClassNameItalic
hi! link cssUnitDecorators    MaiDarkKeyword
hi! link cssVendor            MaiDarkClassNameItalic
