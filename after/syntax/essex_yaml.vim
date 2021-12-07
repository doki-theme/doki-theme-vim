if essex#should_abort('yaml')
    finish
endif

hi! link yamlAlias           EssexClassNameItalicUnderline
hi! link yamlAnchor          EssexKeywordItalic
hi! link yamlBlockMappingKey EssexKeyColor
hi! link yamlFlowCollection  EssexKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         EssexKeyword
hi! link yamlPlainScalar     EssexStringColor

