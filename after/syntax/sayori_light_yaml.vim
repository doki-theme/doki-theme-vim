if sayori_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           SayoriLightClassNameItalicUnderline
hi! link yamlAnchor          SayoriLightKeywordItalic
hi! link yamlBlockMappingKey SayoriLightKeyColor
hi! link yamlFlowCollection  SayoriLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         SayoriLightKeyword
hi! link yamlPlainScalar     SayoriLightStringColor

