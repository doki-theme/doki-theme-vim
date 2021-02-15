if zero_two_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           ZeroTwoLightClassNameItalicUnderline
hi! link yamlAnchor          ZeroTwoLightKeywordItalic
hi! link yamlBlockMappingKey ZeroTwoLightKeyColor
hi! link yamlFlowCollection  ZeroTwoLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         ZeroTwoLightKeyword
hi! link yamlPlainScalar     ZeroTwoLightStringColor

