if sayori_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        SayoriDarkKeyword
hi! link cssAttributeSelector SayoriDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             SayoriDarkKeyword
hi! link cssProp              SayoriDarkKeyColor
hi! link cssPseudoClass       SayoriDarkKeyword
hi! link cssPseudoClassId     SayoriDarkClassNameItalic
hi! link cssUnitDecorators    SayoriDarkKeyword
hi! link cssVendor            SayoriDarkClassNameItalic
