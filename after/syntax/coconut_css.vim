if coconut#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        CoconutKeyword
hi! link cssAttributeSelector CoconutClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             CoconutKeyword
hi! link cssProp              CoconutKeyColor
hi! link cssPseudoClass       CoconutKeyword
hi! link cssPseudoClassId     CoconutClassNameItalic
hi! link cssUnitDecorators    CoconutKeyword
hi! link cssVendor            CoconutClassNameItalic
