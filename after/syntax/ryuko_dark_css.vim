if ryuko_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        RyukoDarkKeyword
hi! link cssAttributeSelector RyukoDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             RyukoDarkKeyword
hi! link cssProp              RyukoDarkKeyColor
hi! link cssPseudoClass       RyukoDarkKeyword
hi! link cssPseudoClassId     RyukoDarkClassNameItalic
hi! link cssUnitDecorators    RyukoDarkKeyword
hi! link cssVendor            RyukoDarkClassNameItalic
