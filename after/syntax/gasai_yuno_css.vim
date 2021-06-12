if gasai_yuno#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        GasaiYunoKeyword
hi! link cssAttributeSelector GasaiYunoClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             GasaiYunoKeyword
hi! link cssProp              GasaiYunoKeyColor
hi! link cssPseudoClass       GasaiYunoKeyword
hi! link cssPseudoClassId     GasaiYunoClassNameItalic
hi! link cssUnitDecorators    GasaiYunoKeyword
hi! link cssVendor            GasaiYunoClassNameItalic
