if echidna#should_abort('yaml')
    finish
endif

hi! link yamlAlias           EchidnaClassNameItalicUnderline
hi! link yamlAnchor          EchidnaKeywordItalic
hi! link yamlBlockMappingKey EchidnaKeyColor
hi! link yamlFlowCollection  EchidnaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         EchidnaKeyword
hi! link yamlPlainScalar     EchidnaStringColor

