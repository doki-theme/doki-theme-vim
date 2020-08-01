if kanna#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        KannaKeyword
hi! link cssAttributeSelector KannaClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             KannaKeyword
hi! link cssProp              KannaKeyColor
hi! link cssPseudoClass       KannaKeyword
hi! link cssPseudoClassId     KannaClassNameItalic
hi! link cssUnitDecorators    KannaKeyword
hi! link cssVendor            KannaClassNameItalic
