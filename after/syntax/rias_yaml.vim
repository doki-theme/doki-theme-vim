if rias#should_abort('yaml')
    finish
endif

hi! link yamlAlias           RiasClassNameItalicUnderline
hi! link yamlAnchor          RiasKeywordItalic
hi! link yamlBlockMappingKey RiasKeyColor
hi! link yamlFlowCollection  RiasKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         RiasKeyword
hi! link yamlPlainScalar     RiasStringColor

