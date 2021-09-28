if sagiri#should_abort('yaml')
    finish
endif

hi! link yamlAlias           SagiriClassNameItalicUnderline
hi! link yamlAnchor          SagiriKeywordItalic
hi! link yamlBlockMappingKey SagiriKeyColor
hi! link yamlFlowCollection  SagiriKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         SagiriKeyword
hi! link yamlPlainScalar     SagiriStringColor

