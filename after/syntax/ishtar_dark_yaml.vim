if ishtar_dark#should_abort('yaml')
    finish
endif

hi! link yamlAlias           IshtarDarkClassNameItalicUnderline
hi! link yamlAnchor          IshtarDarkKeywordItalic
hi! link yamlBlockMappingKey IshtarDarkKeyColor
hi! link yamlFlowCollection  IshtarDarkKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         IshtarDarkKeyword
hi! link yamlPlainScalar     IshtarDarkStringColor

