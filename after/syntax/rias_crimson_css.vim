if rias_crimson#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        RiasCrimsonKeyword
hi! link cssAttributeSelector RiasCrimsonClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             RiasCrimsonKeyword
hi! link cssProp              RiasCrimsonKeyColor
hi! link cssPseudoClass       RiasCrimsonKeyword
hi! link cssPseudoClassId     RiasCrimsonClassNameItalic
hi! link cssUnitDecorators    RiasCrimsonKeyword
hi! link cssVendor            RiasCrimsonClassNameItalic
