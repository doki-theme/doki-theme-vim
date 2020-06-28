if megumin#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MeguminClassNameItalicUnderline
hi! link yamlAnchor          MeguminKeywordItalic
hi! link yamlBlockMappingKey MeguminKeyColor
hi! link yamlFlowCollection  MeguminKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MeguminKeyword
hi! link yamlPlainScalar     MeguminStringColor

