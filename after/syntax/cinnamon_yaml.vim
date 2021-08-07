if cinnamon#should_abort('yaml')
    finish
endif

hi! link yamlAlias           CinnamonClassNameItalicUnderline
hi! link yamlAnchor          CinnamonKeywordItalic
hi! link yamlBlockMappingKey CinnamonKeyColor
hi! link yamlFlowCollection  CinnamonKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         CinnamonKeyword
hi! link yamlPlainScalar     CinnamonStringColor

