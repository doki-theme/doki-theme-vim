if satsuki_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           SatsukiLightClassNameItalicUnderline
hi! link yamlAnchor          SatsukiLightKeywordItalic
hi! link yamlBlockMappingKey SatsukiLightKeyColor
hi! link yamlFlowCollection  SatsukiLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         SatsukiLightKeyword
hi! link yamlPlainScalar     SatsukiLightStringColor

