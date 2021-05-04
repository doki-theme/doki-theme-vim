if miia#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MiiaClassNameItalicUnderline
hi! link yamlAnchor          MiiaKeywordItalic
hi! link yamlBlockMappingKey MiiaKeyColor
hi! link yamlFlowCollection  MiiaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MiiaKeyword
hi! link yamlPlainScalar     MiiaStringColor

