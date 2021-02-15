if mai_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MaiLightClassNameItalicUnderline
hi! link yamlAnchor          MaiLightKeywordItalic
hi! link yamlBlockMappingKey MaiLightKeyColor
hi! link yamlFlowCollection  MaiLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MaiLightKeyword
hi! link yamlPlainScalar     MaiLightStringColor

