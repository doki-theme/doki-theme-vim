if ryuko_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        RyukoLightKeyword
hi! link cssAttributeSelector RyukoLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             RyukoLightKeyword
hi! link cssProp              RyukoLightKeyColor
hi! link cssPseudoClass       RyukoLightKeyword
hi! link cssPseudoClassId     RyukoLightClassNameItalic
hi! link cssUnitDecorators    RyukoLightKeyword
hi! link cssVendor            RyukoLightClassNameItalic
