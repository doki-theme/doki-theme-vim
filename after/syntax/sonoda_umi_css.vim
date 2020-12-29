if sonoda_umi#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        SonodaUmiKeyword
hi! link cssAttributeSelector SonodaUmiClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             SonodaUmiKeyword
hi! link cssProp              SonodaUmiKeyColor
hi! link cssPseudoClass       SonodaUmiKeyword
hi! link cssPseudoClassId     SonodaUmiClassNameItalic
hi! link cssUnitDecorators    SonodaUmiKeyword
hi! link cssVendor            SonodaUmiClassNameItalic
