if rem#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        RemKeyword
hi! link cssAttributeSelector RemClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             RemKeyword
hi! link cssProp              RemKeyColor
hi! link cssPseudoClass       RemKeyword
hi! link cssPseudoClassId     RemClassNameItalic
hi! link cssUnitDecorators    RemKeyword
hi! link cssVendor            RemClassNameItalic
