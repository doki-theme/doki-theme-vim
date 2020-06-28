if ram#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        RamKeyword
hi! link cssAttributeSelector RamClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             RamKeyword
hi! link cssProp              RamKeyColor
hi! link cssPseudoClass       RamKeyword
hi! link cssPseudoClassId     RamClassNameItalic
hi! link cssUnitDecorators    RamKeyword
hi! link cssVendor            RamClassNameItalic
