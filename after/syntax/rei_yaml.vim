if rei#should_abort('yaml')
    finish
endif

hi! link yamlAlias           ReiClassNameItalicUnderline
hi! link yamlAnchor          ReiKeywordItalic
hi! link yamlBlockMappingKey ReiKeyColor
hi! link yamlFlowCollection  ReiKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         ReiKeyword
hi! link yamlPlainScalar     ReiStringColor

