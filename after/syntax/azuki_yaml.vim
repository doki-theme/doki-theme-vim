if azuki#should_abort('yaml')
    finish
endif

hi! link yamlAlias           AzukiClassNameItalicUnderline
hi! link yamlAnchor          AzukiKeywordItalic
hi! link yamlBlockMappingKey AzukiKeyColor
hi! link yamlFlowCollection  AzukiKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         AzukiKeyword
hi! link yamlPlainScalar     AzukiStringColor

