if beatrice#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        BeatriceKeyword
hi! link cssAttributeSelector BeatriceClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             BeatriceKeyword
hi! link cssProp              BeatriceKeyColor
hi! link cssPseudoClass       BeatriceKeyword
hi! link cssPseudoClassId     BeatriceClassNameItalic
hi! link cssUnitDecorators    BeatriceKeyword
hi! link cssVendor            BeatriceClassNameItalic
