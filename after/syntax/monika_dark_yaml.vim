if monika_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MonikaDarkClassNameItalicUnderline
hi! link yamlAnchor          MonikaDarkKeywordItalic
hi! link yamlBlockMappingKey MonikaDarkKeyColor
hi! link yamlFlowCollection  MonikaDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MonikaDarkKeyword
hi! link yamlPlainScalar     MonikaDarkStringColor

