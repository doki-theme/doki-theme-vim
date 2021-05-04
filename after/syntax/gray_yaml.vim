if gray#should_abort('yaml')
    finish
endif

hi! link yamlAlias           GrayClassNameItalicUnderline
hi! link yamlAnchor          GrayKeywordItalic
hi! link yamlBlockMappingKey GrayKeyColor
hi! link yamlFlowCollection  GrayKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         GrayKeyword
hi! link yamlPlainScalar     GrayStringColor

