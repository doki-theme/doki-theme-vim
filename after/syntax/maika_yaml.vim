if maika#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MaikaClassNameItalicUnderline
hi! link yamlAnchor          MaikaKeywordItalic
hi! link yamlBlockMappingKey MaikaKeyColor
hi! link yamlFlowCollection  MaikaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MaikaKeyword
hi! link yamlPlainScalar     MaikaStringColor

