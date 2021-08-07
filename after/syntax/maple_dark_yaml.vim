if maple_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MapleDarkClassNameItalicUnderline
hi! link yamlAnchor          MapleDarkKeywordItalic
hi! link yamlBlockMappingKey MapleDarkKeyColor
hi! link yamlFlowCollection  MapleDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MapleDarkKeyword
hi! link yamlPlainScalar     MapleDarkStringColor

