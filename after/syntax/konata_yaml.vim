if konata#should_abort('yaml')
    finish
endif

hi! link yamlAlias           KonataClassNameItalicUnderline
hi! link yamlAnchor          KonataKeywordItalic
hi! link yamlBlockMappingKey KonataKeyColor
hi! link yamlFlowCollection  KonataKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         KonataKeyword
hi! link yamlPlainScalar     KonataStringColor

