if rory_mercury#should_abort('yaml')
    finish
endif

hi! link yamlAlias           RoryMercuryClassNameItalicUnderline
hi! link yamlAnchor          RoryMercuryKeywordItalic
hi! link yamlBlockMappingKey RoryMercuryKeyColor
hi! link yamlFlowCollection  RoryMercuryKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         RoryMercuryKeyword
hi! link yamlPlainScalar     RoryMercuryStringColor

