if rias_onyx#should_abort('yaml')
    finish
endif

hi! link yamlAlias           RiasOnyxClassNameItalicUnderline
hi! link yamlAnchor          RiasOnyxKeywordItalic
hi! link yamlBlockMappingKey RiasOnyxKeyColor
hi! link yamlFlowCollection  RiasOnyxKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         RiasOnyxKeyword
hi! link yamlPlainScalar     RiasOnyxStringColor

