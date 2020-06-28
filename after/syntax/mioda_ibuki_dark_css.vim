if mioda_ibuki_dark#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MiodaIbukiDarkKeyword
hi! link cssAttributeSelector MiodaIbukiDarkClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MiodaIbukiDarkKeyword
hi! link cssProp              MiodaIbukiDarkKeyColor
hi! link cssPseudoClass       MiodaIbukiDarkKeyword
hi! link cssPseudoClassId     MiodaIbukiDarkClassNameItalic
hi! link cssUnitDecorators    MiodaIbukiDarkKeyword
hi! link cssVendor            MiodaIbukiDarkClassNameItalic
