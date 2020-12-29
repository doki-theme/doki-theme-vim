if asuna_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        AsunaDarkKeyword
hi! link cssAttributeSelector AsunaDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             AsunaDarkKeyword
hi! link cssProp              AsunaDarkKeyColor
hi! link cssPseudoClass       AsunaDarkKeyword
hi! link cssPseudoClassId     AsunaDarkClassNameItalic
hi! link cssUnitDecorators    AsunaDarkKeyword
hi! link cssVendor            AsunaDarkClassNameItalic
