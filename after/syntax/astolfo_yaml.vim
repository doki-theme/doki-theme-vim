if astolfo#should_abort('yaml')
    finish
endif

hi! link yamlAlias           AstolfoClassNameItalicUnderline
hi! link yamlAnchor          AstolfoKeywordItalic
hi! link yamlBlockMappingKey AstolfoKeyColor
hi! link yamlFlowCollection  AstolfoKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         AstolfoKeyword
hi! link yamlPlainScalar     AstolfoStringColor

