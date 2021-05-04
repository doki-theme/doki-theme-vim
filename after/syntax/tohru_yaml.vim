if tohru#should_abort('yaml')
    finish
endif

hi! link yamlAlias           TohruClassNameItalicUnderline
hi! link yamlAnchor          TohruKeywordItalic
hi! link yamlBlockMappingKey TohruKeyColor
hi! link yamlFlowCollection  TohruKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         TohruKeyword
hi! link yamlPlainScalar     TohruStringColor

