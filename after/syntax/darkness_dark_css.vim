if darkness_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        DarknessDarkKeyword
hi! link cssAttributeSelector DarknessDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             DarknessDarkKeyword
hi! link cssProp              DarknessDarkKeyColor
hi! link cssPseudoClass       DarknessDarkKeyword
hi! link cssPseudoClassId     DarknessDarkClassNameItalic
hi! link cssUnitDecorators    DarknessDarkKeyword
hi! link cssVendor            DarknessDarkClassNameItalic
