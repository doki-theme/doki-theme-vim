if asuna_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           AsunaLightClassNameItalicUnderline
hi! link yamlAnchor          AsunaLightKeywordItalic
hi! link yamlBlockMappingKey AsunaLightKeyColor
hi! link yamlFlowCollection  AsunaLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         AsunaLightKeyword
hi! link yamlPlainScalar     AsunaLightStringColor

