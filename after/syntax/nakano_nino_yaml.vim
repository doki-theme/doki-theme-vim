if nakano_nino#should_abort('yaml')
    finish
endif

hi! link yamlAlias           NakanoNinoClassNameItalicUnderline
hi! link yamlAnchor          NakanoNinoKeywordItalic
hi! link yamlBlockMappingKey NakanoNinoKeyColor
hi! link yamlFlowCollection  NakanoNinoKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         NakanoNinoKeyword
hi! link yamlPlainScalar     NakanoNinoStringColor

