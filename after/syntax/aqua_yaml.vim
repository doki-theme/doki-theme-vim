if aqua#should_abort('yaml')
    finish
endif

hi! link yamlAlias           AquaClassNameItalicUnderline
hi! link yamlAnchor          AquaKeywordItalic
hi! link yamlBlockMappingKey AquaKeyColor
hi! link yamlFlowCollection  AquaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         AquaKeyword
hi! link yamlPlainScalar     AquaStringColor

