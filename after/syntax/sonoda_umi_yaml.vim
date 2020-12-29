if sonoda_umi#should_abort('yaml')
    finish
endif

hi! link yamlAlias           SonodaUmiClassNameItalicUnderline
hi! link yamlAnchor          SonodaUmiKeywordItalic
hi! link yamlBlockMappingKey SonodaUmiKeyColor
hi! link yamlFlowCollection  SonodaUmiKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         SonodaUmiKeyword
hi! link yamlPlainScalar     SonodaUmiStringColor

