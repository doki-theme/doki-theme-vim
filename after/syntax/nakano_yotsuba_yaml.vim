if nakano_yotsuba#should_abort('yaml')
    finish
endif

hi! link yamlAlias           NakanoYotsubaClassNameItalicUnderline
hi! link yamlAnchor          NakanoYotsubaKeywordItalic
hi! link yamlBlockMappingKey NakanoYotsubaKeyColor
hi! link yamlFlowCollection  NakanoYotsubaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         NakanoYotsubaKeyword
hi! link yamlPlainScalar     NakanoYotsubaStringColor

