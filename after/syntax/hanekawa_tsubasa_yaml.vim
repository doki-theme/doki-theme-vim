if hanekawa_tsubasa#should_abort('yaml')
    finish
endif

hi! link yamlAlias           HanekawaTsubasaClassNameItalicUnderline
hi! link yamlAnchor          HanekawaTsubasaKeywordItalic
hi! link yamlBlockMappingKey HanekawaTsubasaKeyColor
hi! link yamlFlowCollection  HanekawaTsubasaKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         HanekawaTsubasaKeyword
hi! link yamlPlainScalar     HanekawaTsubasaStringColor

