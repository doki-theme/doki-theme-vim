if yuri_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           YuriDarkClassNameItalicUnderline
hi! link yamlAnchor          YuriDarkKeywordItalic
hi! link yamlBlockMappingKey YuriDarkKeyColor
hi! link yamlFlowCollection  YuriDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         YuriDarkKeyword
hi! link yamlPlainScalar     YuriDarkStringColor

