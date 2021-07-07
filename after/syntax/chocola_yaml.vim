if chocola#should_abort('yaml')
    finish
endif

hi! link yamlAlias           ChocolaClassNameItalicUnderline
hi! link yamlAnchor          ChocolaKeywordItalic
hi! link yamlBlockMappingKey ChocolaKeyColor
hi! link yamlFlowCollection  ChocolaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         ChocolaKeyword
hi! link yamlPlainScalar     ChocolaStringColor

