if maika#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MaikaKeyword
hi! link cssAttributeSelector MaikaClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MaikaKeyword
hi! link cssProp              MaikaKeyColor
hi! link cssPseudoClass       MaikaKeyword
hi! link cssPseudoClassId     MaikaClassNameItalic
hi! link cssUnitDecorators    MaikaKeyword
hi! link cssVendor            MaikaClassNameItalic
