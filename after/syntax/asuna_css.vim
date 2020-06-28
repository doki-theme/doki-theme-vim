if asuna#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        AsunaKeyword
hi! link cssAttributeSelector AsunaClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             AsunaKeyword
hi! link cssProp              AsunaKeyColor
hi! link cssPseudoClass       AsunaKeyword
hi! link cssPseudoClassId     AsunaClassNameItalic
hi! link cssUnitDecorators    AsunaKeyword
hi! link cssVendor            AsunaClassNameItalic
