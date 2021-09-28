if kirino#should_abort('yaml')
    finish
endif

hi! link yamlAlias           KirinoClassNameItalicUnderline
hi! link yamlAnchor          KirinoKeywordItalic
hi! link yamlBlockMappingKey KirinoKeyColor
hi! link yamlFlowCollection  KirinoKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         KirinoKeyword
hi! link yamlPlainScalar     KirinoStringColor

