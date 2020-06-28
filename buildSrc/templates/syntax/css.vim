if {{themeName}}#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        {{themeProperName}}Keyword
hi! link cssAttributeSelector {{themeProperName}}ClassNameItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             {{themeProperName}}Keyword
hi! link cssProp              {{themeProperName}}KeyColor
hi! link cssPseudoClass       {{themeProperName}}Keyword
hi! link cssPseudoClassId     {{themeProperName}}ClassNameItalic
hi! link cssUnitDecorators    {{themeProperName}}Keyword
hi! link cssVendor            {{themeProperName}}ClassNameItalic
