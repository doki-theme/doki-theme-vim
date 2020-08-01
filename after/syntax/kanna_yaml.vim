if kanna#should_abort('yaml')
    finish
endif

hi! link yamlAlias           KannaClassNameItalicUnderline
hi! link yamlAnchor          KannaKeywordItalic
hi! link yamlBlockMappingKey KannaKeyColor
hi! link yamlFlowCollection  KannaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         KannaKeyword
hi! link yamlPlainScalar     KannaStringColor

