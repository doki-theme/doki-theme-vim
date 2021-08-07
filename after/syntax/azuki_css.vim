if azuki#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        AzukiKeyword
hi! link cssAttributeSelector AzukiClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             AzukiKeyword
hi! link cssProp              AzukiKeyColor
hi! link cssPseudoClass       AzukiKeyword
hi! link cssPseudoClassId     AzukiClassNameItalic
hi! link cssUnitDecorators    AzukiKeyword
hi! link cssVendor            AzukiClassNameItalic
