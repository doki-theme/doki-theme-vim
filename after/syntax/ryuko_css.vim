if ryuko#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        RyukoKeyword
hi! link cssAttributeSelector RyukoClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             RyukoKeyword
hi! link cssProp              RyukoKeyColor
hi! link cssPseudoClass       RyukoKeyword
hi! link cssPseudoClassId     RyukoClassNameItalic
hi! link cssUnitDecorators    RyukoKeyword
hi! link cssVendor            RyukoClassNameItalic
