if rias_onyx#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        RiasOnyxKeyword
hi! link cssAttributeSelector RiasOnyxClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             RiasOnyxKeyword
hi! link cssProp              RiasOnyxKeyColor
hi! link cssPseudoClass       RiasOnyxKeyword
hi! link cssPseudoClassId     RiasOnyxClassNameItalic
hi! link cssUnitDecorators    RiasOnyxKeyword
hi! link cssVendor            RiasOnyxClassNameItalic
