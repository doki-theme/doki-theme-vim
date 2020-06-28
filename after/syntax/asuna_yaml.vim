if asuna#should_abort('yaml')
    finish
endif

hi! link yamlAlias           AsunaClassNameItalicUnderline
hi! link yamlAnchor          AsunaKeywordItalic
hi! link yamlBlockMappingKey AsunaKeyColor
hi! link yamlFlowCollection  AsunaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         AsunaKeyword
hi! link yamlPlainScalar     AsunaStringColor

