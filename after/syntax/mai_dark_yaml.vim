if mai_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MaiDarkClassNameItalicUnderline
hi! link yamlAnchor          MaiDarkKeywordItalic
hi! link yamlBlockMappingKey MaiDarkKeyColor
hi! link yamlFlowCollection  MaiDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MaiDarkKeyword
hi! link yamlPlainScalar     MaiDarkStringColor

