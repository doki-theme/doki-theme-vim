if ryuko_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           RyukoLightClassNameItalicUnderline
hi! link yamlAnchor          RyukoLightKeywordItalic
hi! link yamlBlockMappingKey RyukoLightKeyColor
hi! link yamlFlowCollection  RyukoLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         RyukoLightKeyword
hi! link yamlPlainScalar     RyukoLightStringColor

