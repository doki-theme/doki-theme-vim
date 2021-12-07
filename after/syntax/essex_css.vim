if essex#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        EssexKeyword
hi! link cssAttributeSelector EssexClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             EssexKeyword
hi! link cssProp              EssexKeyColor
hi! link cssPseudoClass       EssexKeyword
hi! link cssPseudoClassId     EssexClassNameItalic
hi! link cssUnitDecorators    EssexKeyword
hi! link cssVendor            EssexClassNameItalic
