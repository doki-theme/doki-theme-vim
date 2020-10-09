if aqua#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        AquaKeyword
hi! link cssAttributeSelector AquaClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             AquaKeyword
hi! link cssProp              AquaKeyColor
hi! link cssPseudoClass       AquaKeyword
hi! link cssPseudoClassId     AquaClassNameItalic
hi! link cssUnitDecorators    AquaKeyword
hi! link cssVendor            AquaClassNameItalic
