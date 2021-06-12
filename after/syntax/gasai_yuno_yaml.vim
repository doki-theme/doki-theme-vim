if gasai_yuno#should_abort('yaml')
    finish
endif

hi! link yamlAlias           GasaiYunoClassNameItalicUnderline
hi! link yamlAnchor          GasaiYunoKeywordItalic
hi! link yamlBlockMappingKey GasaiYunoKeyColor
hi! link yamlFlowCollection  GasaiYunoKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         GasaiYunoKeyword
hi! link yamlPlainScalar     GasaiYunoStringColor

