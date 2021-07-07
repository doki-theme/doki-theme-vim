if coconut#should_abort('yaml')
    finish
endif

hi! link yamlAlias           CoconutClassNameItalicUnderline
hi! link yamlAnchor          CoconutKeywordItalic
hi! link yamlBlockMappingKey CoconutKeyColor
hi! link yamlFlowCollection  CoconutKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         CoconutKeyword
hi! link yamlPlainScalar     CoconutStringColor

