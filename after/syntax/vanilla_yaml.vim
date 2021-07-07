if vanilla#should_abort('yaml')
    finish
endif

hi! link yamlAlias           VanillaClassNameItalicUnderline
hi! link yamlAnchor          VanillaKeywordItalic
hi! link yamlBlockMappingKey VanillaKeyColor
hi! link yamlFlowCollection  VanillaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         VanillaKeyword
hi! link yamlPlainScalar     VanillaStringColor

