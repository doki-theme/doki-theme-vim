if ishtar_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           IshtarLightClassNameItalicUnderline
hi! link yamlAnchor          IshtarLightKeywordItalic
hi! link yamlBlockMappingKey IshtarLightKeyColor
hi! link yamlFlowCollection  IshtarLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         IshtarLightKeyword
hi! link yamlPlainScalar     IshtarLightStringColor

