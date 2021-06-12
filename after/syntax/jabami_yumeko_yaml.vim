if jabami_yumeko#should_abort('yaml')
    finish
endif

hi! link yamlAlias           JabamiYumekoClassNameItalicUnderline
hi! link yamlAnchor          JabamiYumekoKeywordItalic
hi! link yamlBlockMappingKey JabamiYumekoKeyColor
hi! link yamlFlowCollection  JabamiYumekoKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         JabamiYumekoKeyword
hi! link yamlPlainScalar     JabamiYumekoStringColor

