if shima_rin#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        ShimaRinKeyword
hi! link cssAttributeSelector ShimaRinClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             ShimaRinKeyword
hi! link cssProp              ShimaRinKeyColor
hi! link cssPseudoClass       ShimaRinKeyword
hi! link cssPseudoClassId     ShimaRinClassNameItalic
hi! link cssUnitDecorators    ShimaRinKeyword
hi! link cssVendor            ShimaRinClassNameItalic
