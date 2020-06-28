if yuri_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        YuriLightKeyword
hi! link cssAttributeSelector YuriLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             YuriLightKeyword
hi! link cssProp              YuriLightKeyColor
hi! link cssPseudoClass       YuriLightKeyword
hi! link cssPseudoClassId     YuriLightClassNameItalic
hi! link cssUnitDecorators    YuriLightKeyword
hi! link cssVendor            YuriLightClassNameItalic
