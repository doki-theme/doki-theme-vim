if nakano_miku#should_abort('yaml')
    finish
endif

hi! link yamlAlias           NakanoMikuClassNameItalicUnderline
hi! link yamlAnchor          NakanoMikuKeywordItalic
hi! link yamlBlockMappingKey NakanoMikuKeyColor
hi! link yamlFlowCollection  NakanoMikuKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         NakanoMikuKeyword
hi! link yamlPlainScalar     NakanoMikuStringColor

