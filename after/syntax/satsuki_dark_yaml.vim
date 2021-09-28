if satsuki_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           SatsukiDarkClassNameItalicUnderline
hi! link yamlAnchor          SatsukiDarkKeywordItalic
hi! link yamlBlockMappingKey SatsukiDarkKeyColor
hi! link yamlFlowCollection  SatsukiDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         SatsukiDarkKeyword
hi! link yamlPlainScalar     SatsukiDarkStringColor

