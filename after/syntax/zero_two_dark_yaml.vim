if zero_two_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           ZeroTwoDarkClassNameItalicUnderline
hi! link yamlAnchor          ZeroTwoDarkKeywordItalic
hi! link yamlBlockMappingKey ZeroTwoDarkKeyColor
hi! link yamlFlowCollection  ZeroTwoDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         ZeroTwoDarkKeyword
hi! link yamlPlainScalar     ZeroTwoDarkStringColor

