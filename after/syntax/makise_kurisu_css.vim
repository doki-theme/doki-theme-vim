if makise_kurisu#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MakiseKurisuKeyword
hi! link cssAttributeSelector MakiseKurisuClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MakiseKurisuKeyword
hi! link cssProp              MakiseKurisuKeyColor
hi! link cssPseudoClass       MakiseKurisuKeyword
hi! link cssPseudoClassId     MakiseKurisuClassNameItalic
hi! link cssUnitDecorators    MakiseKurisuKeyword
hi! link cssVendor            MakiseKurisuClassNameItalic
