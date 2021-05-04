if gray#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        GrayKeyword
hi! link cssAttributeSelector GrayClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             GrayKeyword
hi! link cssProp              GrayKeyColor
hi! link cssPseudoClass       GrayKeyword
hi! link cssPseudoClassId     GrayClassNameItalic
hi! link cssUnitDecorators    GrayKeyword
hi! link cssVendor            GrayClassNameItalic
