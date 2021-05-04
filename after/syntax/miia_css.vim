if miia#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MiiaKeyword
hi! link cssAttributeSelector MiiaClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MiiaKeyword
hi! link cssProp              MiiaKeyColor
hi! link cssPseudoClass       MiiaKeyword
hi! link cssPseudoClassId     MiiaClassNameItalic
hi! link cssUnitDecorators    MiiaKeyword
hi! link cssVendor            MiiaClassNameItalic
