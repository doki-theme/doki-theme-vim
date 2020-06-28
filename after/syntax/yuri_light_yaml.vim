if yuri_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           YuriLightClassNameItalicUnderline
hi! link yamlAnchor          YuriLightKeywordItalic
hi! link yamlBlockMappingKey YuriLightKeyColor
hi! link yamlFlowCollection  YuriLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         YuriLightKeyword
hi! link yamlPlainScalar     YuriLightStringColor

