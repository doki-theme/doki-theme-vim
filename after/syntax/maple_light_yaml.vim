if maple_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MapleLightClassNameItalicUnderline
hi! link yamlAnchor          MapleLightKeywordItalic
hi! link yamlBlockMappingKey MapleLightKeyColor
hi! link yamlFlowCollection  MapleLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MapleLightKeyword
hi! link yamlPlainScalar     MapleLightStringColor

