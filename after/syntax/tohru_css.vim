if tohru#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        TohruKeyword
hi! link cssAttributeSelector TohruClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             TohruKeyword
hi! link cssProp              TohruKeyColor
hi! link cssPseudoClass       TohruKeyword
hi! link cssPseudoClassId     TohruClassNameItalic
hi! link cssUnitDecorators    TohruKeyword
hi! link cssVendor            TohruClassNameItalic
