if natsuki_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           NatsukiDarkClassNameItalicUnderline
hi! link yamlAnchor          NatsukiDarkKeywordItalic
hi! link yamlBlockMappingKey NatsukiDarkKeyColor
hi! link yamlFlowCollection  NatsukiDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         NatsukiDarkKeyword
hi! link yamlPlainScalar     NatsukiDarkStringColor

