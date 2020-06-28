if rem#should_abort('yaml')
    finish
endif

hi! link yamlAlias           RemClassNameItalicUnderline
hi! link yamlAnchor          RemKeywordItalic
hi! link yamlBlockMappingKey RemKeyColor
hi! link yamlFlowCollection  RemKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         RemKeyword
hi! link yamlPlainScalar     RemStringColor

