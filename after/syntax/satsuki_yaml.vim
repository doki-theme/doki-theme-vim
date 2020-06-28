if satsuki#should_abort('yaml')
    finish
endif

hi! link yamlAlias           SatsukiClassNameItalicUnderline
hi! link yamlAnchor          SatsukiKeywordItalic
hi! link yamlBlockMappingKey SatsukiKeyColor
hi! link yamlFlowCollection  SatsukiKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         SatsukiKeyword
hi! link yamlPlainScalar     SatsukiStringColor

