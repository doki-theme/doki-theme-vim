if shima_rin#should_abort('yaml')
    finish
endif

hi! link yamlAlias           ShimaRinClassNameItalicUnderline
hi! link yamlAnchor          ShimaRinKeywordItalic
hi! link yamlBlockMappingKey ShimaRinKeyColor
hi! link yamlFlowCollection  ShimaRinKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         ShimaRinKeyword
hi! link yamlPlainScalar     ShimaRinStringColor

