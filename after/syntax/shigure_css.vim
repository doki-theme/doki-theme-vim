if shigure#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        ShigureKeyword
hi! link cssAttributeSelector ShigureClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             ShigureKeyword
hi! link cssProp              ShigureKeyColor
hi! link cssPseudoClass       ShigureKeyword
hi! link cssPseudoClassId     ShigureClassNameItalic
hi! link cssUnitDecorators    ShigureKeyword
hi! link cssVendor            ShigureClassNameItalic
