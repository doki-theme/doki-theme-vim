if ryuko_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           RyukoDarkClassNameItalicUnderline
hi! link yamlAnchor          RyukoDarkKeywordItalic
hi! link yamlBlockMappingKey RyukoDarkKeyColor
hi! link yamlFlowCollection  RyukoDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         RyukoDarkKeyword
hi! link yamlPlainScalar     RyukoDarkStringColor

