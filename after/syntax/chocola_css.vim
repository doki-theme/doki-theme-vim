if chocola#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        ChocolaKeyword
hi! link cssAttributeSelector ChocolaClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             ChocolaKeyword
hi! link cssProp              ChocolaKeyColor
hi! link cssPseudoClass       ChocolaKeyword
hi! link cssPseudoClassId     ChocolaClassNameItalic
hi! link cssUnitDecorators    ChocolaKeyword
hi! link cssVendor            ChocolaClassNameItalic
