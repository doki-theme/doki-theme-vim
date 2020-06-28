if ryuko#should_abort('yaml')
    finish
endif

hi! link yamlAlias           RyukoClassNameItalicUnderline
hi! link yamlAnchor          RyukoKeywordItalic
hi! link yamlBlockMappingKey RyukoKeyColor
hi! link yamlFlowCollection  RyukoKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         RyukoKeyword
hi! link yamlPlainScalar     RyukoStringColor

