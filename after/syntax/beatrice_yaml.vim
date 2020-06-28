if beatrice#should_abort('yaml')
    finish
endif

hi! link yamlAlias           BeatriceClassNameItalicUnderline
hi! link yamlAnchor          BeatriceKeywordItalic
hi! link yamlBlockMappingKey BeatriceKeyColor
hi! link yamlFlowCollection  BeatriceKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         BeatriceKeyword
hi! link yamlPlainScalar     BeatriceStringColor

