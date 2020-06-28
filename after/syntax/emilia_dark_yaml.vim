if emilia_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           EmiliaDarkClassNameItalicUnderline
hi! link yamlAnchor          EmiliaDarkKeywordItalic
hi! link yamlBlockMappingKey EmiliaDarkKeyColor
hi! link yamlFlowCollection  EmiliaDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         EmiliaDarkKeyword
hi! link yamlPlainScalar     EmiliaDarkStringColor

