if darkness_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           DarknessDarkClassNameItalicUnderline
hi! link yamlAnchor          DarknessDarkKeywordItalic
hi! link yamlBlockMappingKey DarknessDarkKeyColor
hi! link yamlFlowCollection  DarknessDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         DarknessDarkKeyword
hi! link yamlPlainScalar     DarknessDarkStringColor

