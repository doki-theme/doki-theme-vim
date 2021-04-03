if rei#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        ReiKeyword
hi! link cssAttributeSelector ReiClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             ReiKeyword
hi! link cssProp              ReiKeyColor
hi! link cssPseudoClass       ReiKeyword
hi! link cssPseudoClassId     ReiClassNameItalic
hi! link cssUnitDecorators    ReiKeyword
hi! link cssVendor            ReiClassNameItalic
