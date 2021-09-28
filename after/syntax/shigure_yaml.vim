if shigure#should_abort('yaml')
    finish
endif

hi! link yamlAlias           ShigureClassNameItalicUnderline
hi! link yamlAnchor          ShigureKeywordItalic
hi! link yamlBlockMappingKey ShigureKeyColor
hi! link yamlFlowCollection  ShigureKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         ShigureKeyword
hi! link yamlPlainScalar     ShigureStringColor

