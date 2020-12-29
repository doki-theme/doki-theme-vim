if asuna_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           AsunaDarkClassNameItalicUnderline
hi! link yamlAnchor          AsunaDarkKeywordItalic
hi! link yamlBlockMappingKey AsunaDarkKeyColor
hi! link yamlFlowCollection  AsunaDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         AsunaDarkKeyword
hi! link yamlPlainScalar     AsunaDarkStringColor

