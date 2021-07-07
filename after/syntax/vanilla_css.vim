if vanilla#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        VanillaKeyword
hi! link cssAttributeSelector VanillaClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             VanillaKeyword
hi! link cssProp              VanillaKeyColor
hi! link cssPseudoClass       VanillaKeyword
hi! link cssPseudoClassId     VanillaClassNameItalic
hi! link cssUnitDecorators    VanillaKeyword
hi! link cssVendor            VanillaClassNameItalic
