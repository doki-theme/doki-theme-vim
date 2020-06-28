if yuri_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        YuriDarkKeyword
hi! link cssAttributeSelector YuriDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             YuriDarkKeyword
hi! link cssProp              YuriDarkKeyColor
hi! link cssPseudoClass       YuriDarkKeyword
hi! link cssPseudoClassId     YuriDarkClassNameItalic
hi! link cssUnitDecorators    YuriDarkKeyword
hi! link cssVendor            YuriDarkClassNameItalic
