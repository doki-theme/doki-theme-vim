if kirino#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        KirinoKeyword
hi! link cssAttributeSelector KirinoClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             KirinoKeyword
hi! link cssProp              KirinoKeyColor
hi! link cssPseudoClass       KirinoKeyword
hi! link cssPseudoClassId     KirinoClassNameItalic
hi! link cssUnitDecorators    KirinoKeyword
hi! link cssVendor            KirinoClassNameItalic
