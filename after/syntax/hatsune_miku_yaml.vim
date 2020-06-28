if hatsune_miku#should_abort('yaml')
    finish
endif

hi! link yamlAlias           HatsuneMikuClassNameItalicUnderline
hi! link yamlAnchor          HatsuneMikuKeywordItalic
hi! link yamlBlockMappingKey HatsuneMikuKeyColor
hi! link yamlFlowCollection  HatsuneMikuKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         HatsuneMikuKeyword
hi! link yamlPlainScalar     HatsuneMikuStringColor

