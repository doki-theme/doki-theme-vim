if natsuki_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           NatsukiLightClassNameItalicUnderline
hi! link yamlAnchor          NatsukiLightKeywordItalic
hi! link yamlBlockMappingKey NatsukiLightKeyColor
hi! link yamlFlowCollection  NatsukiLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         NatsukiLightKeyword
hi! link yamlPlainScalar     NatsukiLightStringColor

