if jahy#should_abort('yaml')
    finish
endif

hi! link yamlAlias           JahyClassNameItalicUnderline
hi! link yamlAnchor          JahyKeywordItalic
hi! link yamlBlockMappingKey JahyKeyColor
hi! link yamlFlowCollection  JahyKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         JahyKeyword
hi! link yamlPlainScalar     JahyStringColor

