if cinnamon#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        CinnamonKeyword
hi! link cssAttributeSelector CinnamonClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             CinnamonKeyword
hi! link cssProp              CinnamonKeyColor
hi! link cssPseudoClass       CinnamonKeyword
hi! link cssPseudoClassId     CinnamonClassNameItalic
hi! link cssUnitDecorators    CinnamonKeyword
hi! link cssVendor            CinnamonClassNameItalic
