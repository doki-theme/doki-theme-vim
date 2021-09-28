if sagiri#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        SagiriKeyword
hi! link cssAttributeSelector SagiriClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             SagiriKeyword
hi! link cssProp              SagiriKeyColor
hi! link cssPseudoClass       SagiriKeyword
hi! link cssPseudoClassId     SagiriClassNameItalic
hi! link cssUnitDecorators    SagiriKeyword
hi! link cssVendor            SagiriClassNameItalic
