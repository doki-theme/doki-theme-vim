if nakano_miku#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        NakanoMikuKeyword
hi! link cssAttributeSelector NakanoMikuClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             NakanoMikuKeyword
hi! link cssProp              NakanoMikuKeyColor
hi! link cssPseudoClass       NakanoMikuKeyword
hi! link cssPseudoClassId     NakanoMikuClassNameItalic
hi! link cssUnitDecorators    NakanoMikuKeyword
hi! link cssVendor            NakanoMikuClassNameItalic
