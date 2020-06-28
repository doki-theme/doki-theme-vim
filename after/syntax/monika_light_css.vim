if monika_light#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        MonikaLightKeyword
hi! link cssAttributeSelector MonikaLightClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             MonikaLightKeyword
hi! link cssProp              MonikaLightKeyColor
hi! link cssPseudoClass       MonikaLightKeyword
hi! link cssPseudoClassId     MonikaLightClassNameItalic
hi! link cssUnitDecorators    MonikaLightKeyword
hi! link cssVendor            MonikaLightClassNameItalic
