if zero_two_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        ZeroTwoLightKeyword
hi! link cssAttributeSelector ZeroTwoLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             ZeroTwoLightKeyword
hi! link cssProp              ZeroTwoLightKeyColor
hi! link cssPseudoClass       ZeroTwoLightKeyword
hi! link cssPseudoClassId     ZeroTwoLightClassNameItalic
hi! link cssUnitDecorators    ZeroTwoLightKeyword
hi! link cssVendor            ZeroTwoLightClassNameItalic
