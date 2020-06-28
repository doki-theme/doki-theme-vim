if sayori_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           SayoriDarkClassNameItalicUnderline
hi! link yamlAnchor          SayoriDarkKeywordItalic
hi! link yamlBlockMappingKey SayoriDarkKeyColor
hi! link yamlFlowCollection  SayoriDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         SayoriDarkKeyword
hi! link yamlPlainScalar     SayoriDarkStringColor

