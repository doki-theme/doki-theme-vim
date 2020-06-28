if {{themeName}}#should_abort('yaml')
    finish
endif

hi! link yamlAlias           {{themeProperName}}ClassNameItalicUnderline
hi! link yamlAnchor          {{themeProperName}}KeywordItalic
hi! link yamlBlockMappingKey {{themeProperName}}KeyColor
hi! link yamlFlowCollection  {{themeProperName}}Keyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         {{themeProperName}}Keyword
hi! link yamlPlainScalar     {{themeProperName}}StringColor

