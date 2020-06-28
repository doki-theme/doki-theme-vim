if ram#should_abort('yaml')
    finish
endif

hi! link yamlAlias           RamClassNameItalicUnderline
hi! link yamlAnchor          RamKeywordItalic
hi! link yamlBlockMappingKey RamKeyColor
hi! link yamlFlowCollection  RamKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         RamKeyword
hi! link yamlPlainScalar     RamStringColor

