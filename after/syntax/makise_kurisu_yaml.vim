if makise_kurisu#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MakiseKurisuClassNameItalicUnderline
hi! link yamlAnchor          MakiseKurisuKeywordItalic
hi! link yamlBlockMappingKey MakiseKurisuKeyColor
hi! link yamlFlowCollection  MakiseKurisuKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MakiseKurisuKeyword
hi! link yamlPlainScalar     MakiseKurisuStringColor

