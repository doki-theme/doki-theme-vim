if rias#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        RiasKeyword
hi! link cssAttributeSelector RiasClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             RiasKeyword
hi! link cssProp              RiasKeyColor
hi! link cssPseudoClass       RiasKeyword
hi! link cssPseudoClassId     RiasClassNameItalic
hi! link cssUnitDecorators    RiasKeyword
hi! link cssVendor            RiasClassNameItalic
