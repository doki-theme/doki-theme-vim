if {{themeName}}#should_abort('tex')
    finish
endif

hi! link texBeginEndName  {{themeProperName}}ParameterItalic
hi! link texBoldItalStyle {{themeProperName}}ParameterBoldItalic
hi! link texBoldStyle     {{themeProperName}}ParameterBold
hi! link texInputFile     {{themeProperName}}ParameterItalic
hi! link texItalStyle     {{themeProperName}}StringColorItalic
hi! link texLigature      {{themeProperName}}Constants
hi! link texMath          {{themeProperName}}Constants
hi! link texMathMatcher   {{themeProperName}}Constants
hi! link texMathSymbol    {{themeProperName}}Constants
hi! link texRefZone       {{themeProperName}}BgDarker
hi! link texSpecialChar   {{themeProperName}}Constants
hi! link texSubscripts    {{themeProperName}}Constants
hi! link texTitle         {{themeProperName}}FgBold
