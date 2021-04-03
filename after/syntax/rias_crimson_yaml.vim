if rias_crimson#should_abort('yaml')
    finish
endif

hi! link yamlAlias           RiasCrimsonClassNameItalicUnderline
hi! link yamlAnchor          RiasCrimsonKeywordItalic
hi! link yamlBlockMappingKey RiasCrimsonKeyColor
hi! link yamlFlowCollection  RiasCrimsonKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         RiasCrimsonKeyword
hi! link yamlPlainScalar     RiasCrimsonStringColor

