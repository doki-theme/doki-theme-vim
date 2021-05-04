if nakano_nino#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        NakanoNinoKeyword
hi! link cssAttributeSelector NakanoNinoClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             NakanoNinoKeyword
hi! link cssProp              NakanoNinoKeyColor
hi! link cssPseudoClass       NakanoNinoKeyword
hi! link cssPseudoClassId     NakanoNinoClassNameItalic
hi! link cssUnitDecorators    NakanoNinoKeyword
hi! link cssVendor            NakanoNinoClassNameItalic
