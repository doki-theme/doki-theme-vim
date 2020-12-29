if echidna#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        EchidnaKeyword
hi! link cssAttributeSelector EchidnaClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             EchidnaKeyword
hi! link cssProp              EchidnaKeyColor
hi! link cssPseudoClass       EchidnaKeyword
hi! link cssPseudoClassId     EchidnaClassNameItalic
hi! link cssUnitDecorators    EchidnaKeyword
hi! link cssVendor            EchidnaClassNameItalic
