if tohsaka_rin#should_abort('yaml')
    finish
endif

hi! link yamlAlias           TohsakaRinClassNameItalicUnderline
hi! link yamlAnchor          TohsakaRinKeywordItalic
hi! link yamlBlockMappingKey TohsakaRinKeyColor
hi! link yamlFlowCollection  TohsakaRinKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         TohsakaRinKeyword
hi! link yamlPlainScalar     TohsakaRinStringColor

