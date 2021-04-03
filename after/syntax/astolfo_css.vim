if astolfo#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        AstolfoKeyword
hi! link cssAttributeSelector AstolfoClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             AstolfoKeyword
hi! link cssProp              AstolfoKeyColor
hi! link cssPseudoClass       AstolfoKeyword
hi! link cssPseudoClassId     AstolfoClassNameItalic
hi! link cssUnitDecorators    AstolfoKeyword
hi! link cssVendor            AstolfoClassNameItalic
