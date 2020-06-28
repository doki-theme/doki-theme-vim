if emilia_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           EmiliaLightClassNameItalicUnderline
hi! link yamlAnchor          EmiliaLightKeywordItalic
hi! link yamlBlockMappingKey EmiliaLightKeyColor
hi! link yamlFlowCollection  EmiliaLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         EmiliaLightKeyword
hi! link yamlPlainScalar     EmiliaLightStringColor

