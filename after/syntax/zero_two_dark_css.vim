if zero_two_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        ZeroTwoDarkKeyword
hi! link cssAttributeSelector ZeroTwoDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             ZeroTwoDarkKeyword
hi! link cssProp              ZeroTwoDarkKeyColor
hi! link cssPseudoClass       ZeroTwoDarkKeyword
hi! link cssPseudoClassId     ZeroTwoDarkClassNameItalic
hi! link cssUnitDecorators    ZeroTwoDarkKeyword
hi! link cssVendor            ZeroTwoDarkClassNameItalic
