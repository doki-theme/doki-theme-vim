if mioda_ibuki_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MiodaIbukiDarkClassNameItalicUnderline
hi! link yamlAnchor          MiodaIbukiDarkKeywordItalic
hi! link yamlBlockMappingKey MiodaIbukiDarkKeyColor
hi! link yamlFlowCollection  MiodaIbukiDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MiodaIbukiDarkKeyword
hi! link yamlPlainScalar     MiodaIbukiDarkStringColor

