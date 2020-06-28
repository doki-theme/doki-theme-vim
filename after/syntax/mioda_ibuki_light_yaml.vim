if mioda_ibuki_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MiodaIbukiLightClassNameItalicUnderline
hi! link yamlAnchor          MiodaIbukiLightKeywordItalic
hi! link yamlBlockMappingKey MiodaIbukiLightKeyColor
hi! link yamlFlowCollection  MiodaIbukiLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MiodaIbukiLightKeyword
hi! link yamlPlainScalar     MiodaIbukiLightStringColor

