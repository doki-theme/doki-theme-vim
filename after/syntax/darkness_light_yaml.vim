if darkness_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           DarknessLightClassNameItalicUnderline
hi! link yamlAnchor          DarknessLightKeywordItalic
hi! link yamlBlockMappingKey DarknessLightKeyColor
hi! link yamlFlowCollection  DarknessLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         DarknessLightKeyword
hi! link yamlPlainScalar     DarknessLightStringColor

