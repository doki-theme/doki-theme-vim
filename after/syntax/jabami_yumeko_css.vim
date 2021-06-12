if jabami_yumeko#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        JabamiYumekoKeyword
hi! link cssAttributeSelector JabamiYumekoClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             JabamiYumekoKeyword
hi! link cssProp              JabamiYumekoKeyColor
hi! link cssPseudoClass       JabamiYumekoKeyword
hi! link cssPseudoClassId     JabamiYumekoClassNameItalic
hi! link cssUnitDecorators    JabamiYumekoKeyword
hi! link cssVendor            JabamiYumekoClassNameItalic
