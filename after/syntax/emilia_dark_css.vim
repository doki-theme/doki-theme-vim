if emilia_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        EmiliaDarkKeyword
hi! link cssAttributeSelector EmiliaDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             EmiliaDarkKeyword
hi! link cssProp              EmiliaDarkKeyColor
hi! link cssPseudoClass       EmiliaDarkKeyword
hi! link cssPseudoClassId     EmiliaDarkClassNameItalic
hi! link cssUnitDecorators    EmiliaDarkKeyword
hi! link cssVendor            EmiliaDarkClassNameItalic
